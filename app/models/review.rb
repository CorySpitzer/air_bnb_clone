class Review <ActiveRecord::Base
  validates_presence_of :content
  validates_presence_of :rating
  validates_presence_of :user_id
  validates_presence_of :listing_id
  belongs_to :user
 belongs_to :listing 
end
