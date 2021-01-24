class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = current_user.comments.create!(comment_params)
    ActionCable.server.broadcast 'day_channel', comment: @comment.template
  end

  private
	def comment_params
		params.require(:comment).permit(:comment, :user_id, :day_id)
  end
  
end
