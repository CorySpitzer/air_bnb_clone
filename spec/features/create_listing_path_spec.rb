require 'rails_helper'

describe 'the path to create a listing' do
  it 'will create a listing from a user\'s homepage' do
    user = create_and_login_user
    visit user_path user
    fill_in_listing_form
    click_on 'Create Listing'
    expect(page).to have_content 'successfully'
  end

  it 'will not create a listing from a user\'s homepage when given no input' do
    user = create_and_login_user
    visit user_path user
    click_on 'Create Listing'
    expect(page).to have_content 'Try again'
  end

end
