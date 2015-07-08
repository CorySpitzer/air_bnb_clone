class User < ActiveRecord::Base
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password
end
