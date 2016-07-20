class MatchingsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :inform]
  before_action :set_match

  def create
    @matching = Matching.new(matching_params)
    @matching[:uuid] = SecureRandom.uuid
    if @matching.save
      flash[:success] = @matching.match_type + 'マッチング開始します'
      redirect_to matching_path(uuid: @matching.uuid)
    else
      flash[:success] = 'タイトルを入力してください！'
      render 'static_pages/home'
    end
  end

  def show
    @matching = Matching.find_by(uuid: params[:uuid])
    @matching_conversations = @matching.matching_conversations.order('created_at ASC')
    @matching_conversation = @matching.matching_conversations.build
  end

  private

  def set_item
    @item = Item.find_by(uuid: params[:uuid])
  end

  def set_match
    @matching = Matching.find_by(uuid: params[:uuid])
  end

  def matching_params
    params.require(:matching).permit(:item_id, :user_id, :match_type)
  end
end
