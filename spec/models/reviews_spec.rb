require 'rails_helper'

describe Review do
  it { should belong_to :user }
  it { should belong_to :listing }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :listing_id }
end
