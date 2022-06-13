class AddEverythingToEverything < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :saying_id, :integer
    add_column :comments, :commentor_id, :integer
    add_column :comments, :body, :text
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
    add_index :comments, [:commentable_type, :commentable_id]

    add_column :friendships, :befriendor_id, :integer
    add_column :friendships, :befriendee_id, :integer
    add_column :friendships, :confirmed, :boolean

    add_column :likes, :saying_id, :integer
    add_column :likes, :liker_id, :integer
    add_column :likes, :likable_id, :integer
    add_column :likes, :likable_type, :string
    add_index :likes, [:likable_type, :likable_id]

    add_column :photos, :user_id, :integer
    add_column :photos, :photo, :string

    add_column :profiles, :profile_pic, :string
    add_column :profiles, :about, :text
    add_column :profiles, :user_id, :integer

    add_column :sayings, :body, :text
    add_column :sayings, :user_id, :integer
  end
end
