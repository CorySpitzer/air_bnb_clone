require 'rails_helper'

describe 'the delete listing path' do
  it 'deletes a listing' do
    user = create_and_login_user
    listing = FactoryGirl.create :listing
    user.listings.push listing
    visit user_path user
    click_on 'Delete'
    expect(page).to_not have_content listing.title
  end
end
