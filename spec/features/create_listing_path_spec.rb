require 'rails_helper'

describe 'the path to create a listing' do
  it 'will create a listing from a user\'s homepage' do
    user = FactoryGirl.create :user
    login_as user, scope: :user
    visit user_path user
    fill_in 'Title', with: 'The Floating House'
    fill_in 'Description', with: 'It floats'
    fill_in 'Location', with: 'The Ocean'
    fill_in 'Rate', with: '45'
    click_on 'Create Listing'
    expect(page).to have_content 'successfully'
  end
end
