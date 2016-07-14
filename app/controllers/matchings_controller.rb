class MatchingsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :inform]
  before_action :set_match

  def create
    @match = Matching.new(match_params)
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
  def set_match
    @item = Match.find_by(uuid: params[:uuid])
  end

  def item_params
    params.require(:item).permit(:name, :message)
  end

end
