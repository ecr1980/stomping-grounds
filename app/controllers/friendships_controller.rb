class FriendshipsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new(friendship_params) 
    if @friendship.save
      redirect_to root_path
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    if @friendship.update(friendship_params)
      redirect_to root_path
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    if @friendship.destroy
      redirect_to root_path
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:befriendor_id, :befriendee_id, :confirmed)
  end

end
