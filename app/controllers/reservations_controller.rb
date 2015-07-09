class ReservationsController < ApplicationController

  def create
    @listing = Listing.find(reservation_params[:listing_id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = "You have successfully reserved this listing"
      redirect_to reservation_path @reservation
    else
      flash[:notice] = "Something went wrong, please try again"
      redirect_to listing_path @listing
    end
  end

private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id, :listing_id)
  end

end
