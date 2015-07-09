require 'rails_helper'

describe 'the rent a listing path' do
  it 'lets a user rent a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    logout
    user2 = create_and_login_user :user2
    visit listing_path listing
    fill_in 'Start date', with: Date.new(2015, 02, 02)
    fill_in 'End date', with: Date.new(2015, 02, 03)
    click_on 'Rent'
    expect(page).to have_content 'Rental dates'
  end

  it 'will fail letting a user rent a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    logout
    user2 = create_and_login_user :user2
    visit listing_path listing
    fill_in 'End date', with: Date.new(2015, 02, 03)
    click_on 'Rent'
    expect(page).to have_content 'try again'
  end
end
