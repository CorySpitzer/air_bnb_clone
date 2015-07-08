require 'rails_helper'

describe 'the log in path' do
  it 'will log in a user' do
    visit root_path
    click_on "Sign in"
    person = FactoryGirl.create :user
    fill_in "Username", with: person.username
    fill_in "Password", with: person.password
    click_on "Sign In"
    expect(page).to have_content "successfully"
  end
end
