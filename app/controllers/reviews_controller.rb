class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @listing = Listing.find params[:listing_id]
  end

  def create
    @review = Review.new review_params
    @listing = Listing.find review_params[:listing_id]
    if @review.save
      flash[:notice] = 'Review created'
      redirect_to listing_path @listing
    else
      flash[:notice] = 'Something went wrong, please try again'
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :listing_id)
  end

end
