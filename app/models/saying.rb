class Saying < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likable, :foreign_key => :likable_id
  has_many :comments, as: :commentable
end
