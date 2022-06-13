class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:commentable_id, :commentable_type, :commentor_id, :body)
  end
end
