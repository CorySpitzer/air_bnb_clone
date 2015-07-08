class UsersController < ApplicationController
  def index

  end

  def show
    @listing = Listing.new
  end
end
