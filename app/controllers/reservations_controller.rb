class ReservationsController < ApplicationController
  require 'csv'
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation[:uuid] = SecureRandom.uuid
    session[:name] = @reservation.name
    flash[:success] = if @reservation.save
                        '予約完了！'
                      else
                        '入力不良'
                      end
    redirect_to item_path(uuid: session[:uuid])
  end

  def index
    @reservations = Item.find_by(uuid: params[:item_uuid]).reservations.all
    @item = Item.find_by(uuid: params[:item_uuid])
    # calendar = Icalendar::Calendar.new
    respond_to do |format|
      format.csv
      # format.ics { render text: calendar.to_ical }
      format.ics
    end
  end

  def show
    @reservation = Reservation.find_by(uuid: params[:uuid])
    @item = Item.find_by(uuid: params[:item_uuid])
    respond_to do |format|
      format.ics
    end
  end

  private

  def reservation_params
    params.require(:reservation)
          .permit(:name, :message, :start_datetime, :end_datetime, :item_id, :uuid)
  end
end
