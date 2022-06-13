class LikesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    @like.save
    redirect_back_or_to @like.likable
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_back_or_to @like.likable
  end

  private

  def like_params
    params.require(:like).permit(:likable_id, :liker_id, :likable_type)
  end

end
