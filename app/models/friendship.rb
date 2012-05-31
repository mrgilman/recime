class Friendship < ActiveRecord::Base
  attr_accessible :friend_id
  belongs_to :user
end
