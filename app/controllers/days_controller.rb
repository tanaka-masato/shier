class DaysController < ApplicationController
  def index
    # @days = Day.all
  end

  def new
    @day = Day.new    
  end

  def show
    @day = Day.find(params[:id])
    @comment = current_user.comments.build
    #@comments = @day.comments
    @comments = Comment.where(day_id: @coomment)
    @commentall = Comment.where(day_id: @day)
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
