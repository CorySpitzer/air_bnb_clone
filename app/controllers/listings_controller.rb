class ListingsController < ApplicationController
  # before_action will call the specified method before each of the controller actions listed after 'only'
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show

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

  def edit

  end

  def update
    if @listing.update listing_params
      flash[:notice] = "Listing saved"
      redirect_to listing_path @listing
    else
      flash[:notice] = "There was a problem saving your listing"
      render :edit
    end
  end

private

  def set_listing
    @listing = Listing.find params[:id]
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :rate, :user_id, :location)
  end


end
