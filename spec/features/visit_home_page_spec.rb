require 'rails_helper'

describe 'the root path' do
  it 'visits the home page' do
    visit root_path
    expect(page).to have_content 'WaterBnB'
  end
end
