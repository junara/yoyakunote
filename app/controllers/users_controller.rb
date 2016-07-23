class UsersController < ApplicationController
  def new
    @item = Item.new
    @user = User.new
  end

  def show
    @item = Item.new
    @items = Item.all if @items == Item
    @items = Item.where(user_id: session[:user_id])

    @my_items = @items.where(user_id: session[:user_id])
                      .where.not(item_type: 'business').order('activity_counter DESC').limit(3)

    @to_matching_conversations = MatchingConversation.where(user_id: session[:user_id])
    # @from_matching_conversations = Matching.matching.where(user_id: session[:user_id])
    @reservations = Reservation.where(user_id: session[:user_id])
  end

  def edit
    @item = Item.new
    @user = User.find(params[:id])
  end

  def update
    @item = Item.new
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Update success'
      redirect_to user_path(session[:user_id])
    else
      flash[:success] = 'Update failed'
      render 'edit'
    end
  end

  def create
    @item = Item.new
    @user = User.new(user_params)
    @user[:uuid] = SecureRandom.uuid
    if @user.save
      redirect_to session[:forwarding_url]
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :pairuser_id, :uuid)
  end
end
