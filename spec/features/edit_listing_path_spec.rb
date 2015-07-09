require 'rails_helper'

describe 'the edit listing path' do
  it 'edits a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    visit listings_path
    click_on 'Edit'
    fill_in_listing_form
    click_on 'Update Listing'
    expect(page).to have_content 'saved'
  end

  it 'fails to edit a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    visit listings_path
    click_on 'Edit'
    fill_in_listing_form
    fill_in 'Description', with: ''
    click_on 'Update Listing'
    expect(page).to have_content 'error'
  end
end
