class StaticPagesController < ApplicationController
  before_action :set_item
  def home
  end

  def search
    @current_user = User.find_by(id: session[:user_id])
    @search_form = ItemSearchForm.new(params[:search])
    @items = @search_form.search
    @items = Item.all if @items == Item
    @my_items = @items.where(user_id: session[:user_id]).limit(6)
    @innovation_items = @items.where(item_type: 'innovation')
                              .order('activity_counter DESC').limit(15)
    @business_items = @items.where(item_type: 'business').order('activity_counter DESC').limit(15)
    @knowledges = Knowledge.where(item_id: @items.ids).limit(15)
    @near_items = @items.where(prefecture: @current_user.prefecture)
  end

  def newnote
    @item = Item.new
  end

  private

  def set_item
    @item = Item.find_by(uuid: params[:uuid])
  end
end
