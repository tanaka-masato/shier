class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
        render day_path
    end
  end

  private
	def comment_params
		params.require(:comment).permit(:comment, :user_id, :day_id)
  end
  
end
