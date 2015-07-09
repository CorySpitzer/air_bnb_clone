class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing

  validates_presence_of :start_date
  validates_presence_of :end_date
end
