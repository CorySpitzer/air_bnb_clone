class Listing < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :location
  validates_presence_of :rate

  belongs_to :user
  has_many :reviews

  has_many :reservations
  has_many :users, through: :reservations
end
