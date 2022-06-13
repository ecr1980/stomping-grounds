class SayingsController < ApplicationController
  def index
    @sayings = Saying.all
  end

  def new
    @saying = Saying.new
  end

  def create
    @saying = Saying.new(saying_params)
    @saying.user_id = current_user.id
    if @saying.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def saying_params
    params.require(:saying).permit(:body)
  end
end
