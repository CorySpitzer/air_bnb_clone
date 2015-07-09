require 'rails_helper'

describe 'adding a review to a listing' do
  it 'will add a review to a listing' do
    user = FactoryGirl.create :user
    login_as user, scope: :user
    listing = FactoryGirl.create :listing
    user.listings.push listing
    logout
    user2 = FactoryGirl.create :user, name: 'b', username: 'b1', email: 'b@b.com', password: '123456789', admin: false
    login_as user2, scope: :user
    visit listing_path listing
    click_on 'Review'
    fill_in 'Content', with: 'Our stay here was great!'
    select 5, from: "Rating"
    click_on 'Create Review'
  end
end
