class PhotosController < ApplicationController

  def index
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(phoot_params)
    @photo.save
    redirect_to root_path
  end

  private

  def phoot_params
    params.require(:photo).permit(:photo, :user_id)
  end
end
