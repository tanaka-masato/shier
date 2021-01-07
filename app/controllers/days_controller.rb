class DaysController < ApplicationController
  def index
    # @days = Day.all
  end

  def new
    @day = Day.new    
  end

  def create
    @day = Day.new(day_params)
    if @day.save
      redirect_to workplaces_index_path
    end
  end


  private
	def day_params
		params.require(:day).permit(:day,:contents)
  end
  
end
