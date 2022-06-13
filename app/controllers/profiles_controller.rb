class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_posts = Array.new
    @profile = Profile.new
    @like = Like.new
    @comment = Comment.new

    if (@user == current_user) && (current_user.profile == nil)
      @profile = Profile.new
    end

    @user.sayings.each do |saying|
      @user_posts << saying
    end

    @user.photos.each do |photo|
      @user_posts << photo
    end

    @user_posts = @user_posts.sort_by(&:created_at).reverse

  end

  def new
    @profile = Profile.new
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to user_show_path(@user)
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to user_show_path(current_user)
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:profile_pic, :about, :user_id)
  end
end
