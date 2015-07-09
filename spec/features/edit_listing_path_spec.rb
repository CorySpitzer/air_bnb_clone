require 'rails_helper'

describe 'the edit listing path' do
  it 'edits a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    visit listings_path
    click_on 'Edit'
    fill_in 'Title', with: 'The Floating House'
    fill_in 'Description', with: 'It floats'
    fill_in 'Location', with: 'The Ocean'
    fill_in 'Rate', with: '45'
    click_on 'Update Listing'
    expect(page).to have_content 'saved'
  end

  it 'fails to edit a listing' do
    user = create_and_login_user
    listing = create_listing_and_to_user user
    visit listings_path
    click_on 'Edit'
    fill_in 'Title', with: 'The Floating House'
    fill_in 'Description', with: ''
    fill_in 'Location', with: 'The Ocean'
    fill_in 'Rate', with: '45'
    click_on 'Update Listing'
    expect(page).to have_content 'error'
  end
end
