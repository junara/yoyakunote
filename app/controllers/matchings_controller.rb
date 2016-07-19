class MatchingsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :inform]
  before_action :set_match


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
