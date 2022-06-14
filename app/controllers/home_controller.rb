class HomeController < ApplicationController
  def index
    @friendship = Friendship.new
    @saying = Saying.new
    @sayings = Saying.all
    @like = Like.new
    @comment = Comment.new
    @photo = Photo.new
    @relavent_posts = Array.new

    

    if user_signed_in?
      @users = Array.new
      @requests = Array.new
      @pending = Array.new
      @friends = Array.new

      current_user.befriendee_friendships.each do |friendship|
        if (friendship.confirmed == nil)
          @requests << friendship
        else
          @friends << User.find(friendship.befriendor_id)
        end
      end

      current_user.befriendor_friendships.each do |friendship|
        if (friendship.confirmed == nil)
          @pending << friendship
        else
          @friends << User.find(friendship.befriendee_id)
        end
      end

      @friends.each do |friend|
        friend.sayings.each do |saying|
          @relavent_posts << saying
        end
        friend.photos.each do |photo|
          @relavent_posts << photo
        end
      end



      current_user.sayings.each do |saying|
        @relavent_posts << saying
      end

      current_user.photos.each do |photo|
        @relavent_posts << photo
      end

      User.all.each do |u|
        if (u != current_user)
          unless current_user.friends.include?(u)
            @users << u
          end
        end
      end

      @users = @users.sort
      @relavent_posts = @relavent_posts.sort_by(&:created_at).reverse
    end
  end


end
