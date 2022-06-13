class Friendship < ApplicationRecord
  belongs_to :befriendor, :class_name => "User"
  belongs_to :befriendee, :class_name => "User"
end
