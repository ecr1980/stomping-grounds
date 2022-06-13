class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :friendships
         has_many :sayings, :foreign_key => :user_id
         has_many :photos, :foreign_key => :user_id
         has_many :befriendor_friendships, :foreign_key => :befriendor_id, :class_name => "Friendship"
         has_many :befriendor_friends, :through => :befriendor_friendships, :source => :befriendee
         has_many :befriendee_friendships, :foreign_key => :befriendee_id, :class_name => "Friendship"
         has_many :befriendee_friends, :through => :befriendee_friendships, :source => :befriendor
       
         has_many :saying_likes, :foreign_key => :liker_id, :class_name => "Like"
         has_many :liked_sayings, :through => :saying_likes, :source => :likable, source_type: "Saying"
       
         has_many :photo_likes, :foreign_key => :liker_id, :class_name => "Like"
         has_many :liked_photos, :through => :photo_likes, :source => :likable, source_type: "Photo"
       
         has_many :comments, :foreign_key => :commentor_id
         has_many :commented_sayings, :through => :comments, :source => :commentable, source_type: "Saying"
         has_many :commented_photos, :through => :comments, :source => :commentable, source_type: "Photo"
       
         has_one :profile
       
         def friends
         (befriendor_friends + befriendee_friends).flatten.uniq
         end
       
end
