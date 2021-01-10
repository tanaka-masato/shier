class DaysController < ApplicationController
  def index
    # @days = Day.all
  end

  def new
    @day = Day.new    
  end

  def show
    @day = Day.find_by(params[:id])
    @comment = Comment.new(comment: params[:comment])
    @comment.save
    @comments = @day.comments

  end
  
  def create
    @day = Day.new(day_params)
    if @day.save
      redirect_to places_index_path
    end
  end


  private
	def day_params
		params.require(:day).permit(:day, :contents, :image)
  end
  
end
