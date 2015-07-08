class Listing < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :location
  validates_presence_of :rate

  belongs_to :user

end
