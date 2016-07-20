class StaticPagesController < ApplicationController
  before_action :set_item
  def home
  end

  def search
    @search_form = ItemSearchForm.new(params[:search])
    @items = @search_form.search
    @items = Item.all if @items == Item
  end

  def newnote
    @item = Item.new
  end

  private

  def set_item
    @item = Item.find_by(uuid: params[:uuid])
  end
end
