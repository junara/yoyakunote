class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :inform]

  def create
    @item = Item.new(item_params)
    @item[:uuid] = SecureRandom.uuid
    if @item.save
      flash[:success] = '予約表作成完了！'
      redirect_to item_path(uuid: @item.uuid)
    else
      flash[:success] = 'タイトルを入力してください！'
      render 'static_pages/home'
    end
  end

  def show
    session[:uuid] = params[:uuid]
    session[:id] = @item.id
    date_range = 14
    stdate = Date.today - date_range
    endate = Date.today + date_range
    @former_reservations = date_hashed_reseravations(@item, stdate, Date.today - 1)
    @today_reservations = date_hashed_reseravations(@item, Date.today, Date.today)
    @later_reservations = date_hashed_reseravations(@item, Date.today + 1, endate - 1)
    @reservation = @item.reservations.build
    @knowledges = Knowledge.where(item_id: @item.id).limit(3)
    @current_user = User.find_by(id: session[:user_id])

  end

  def edit
  end

  def update
    if @item.update_attributes(item_params)
      flash[:success] = 'Item情報が更新されました'
      redirect_to inform_item_path(session[:uuid])
    else
      flash[:success] = 'Update failed'
      render 'edit'
    end
  end

  def inform
  end

  def qrcode
    qr = RQRCode::QRCode.new('my string to generate', size: 4, level: :h)
    png = qr.to_img # returns an instance of ChunkyPNG
    png.resize(90, 90).save('really_cool_qr_image.png')
  end

  private

  def set_item
    @item = Item.find_by(uuid: params[:uuid])
  end

  def item_params
    params.require(:item).permit(:name, :message, :manufacture_name, :manufacture_cn)
  end

  def date_hashed_reseravations(item, stdate, endate)
    target_reservations = {}
    # グループ化されたハッシュを用意する
    gouped_reservations = item.reservations.order('start_datetime ASC').group_by do |elem|
      elem.start_datetime.to_date
    end
    (stdate..endate).each do |d|
      target_reservations[d] = if gouped_reservations.key?(d)
                                 gouped_reservations[d]
                               end
    end
    target_reservations
  end
end
