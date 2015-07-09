class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :name

  has_many :listings
  has_many :reviews

  has_many :reservations
  #See http://stackoverflow.com/questions/18690700/multiple-has-many-relationships-to-same-model
  has_many :reserved_listings, through: :reservations
end
