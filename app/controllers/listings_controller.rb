class ListingsController < ApplicationController
  def show
    @listing = Listing.find params[:id]
  end

  def create
    @listing = Listing.new listing_params
    if @listing.save
      flash[:notice] = 'Listing successfully saved'
      redirect_to listing_path @listing
    else
      flash[:notice] = 'Try again'
      redirect_to user_path listing_params[:user_id]
    end

  end

private

  def listing_params
    params.require(:listing).permit(:title, :description, :rate, :user_id, :location)
  end


end
