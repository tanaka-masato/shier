class WorkplacesController < ApplicationController
  def index
    @days = Day.all
    @workplaces = WorkPlace.all
  end

  def new
    @workplace = WorkPlace.new
  end

  def create
    @workplace = WorkPlace.new(workplace_params)
    if @workplace.save
      redirect_to workplaces_index_path
    end
  end

  private
	def workplace_params
		params.require(:workplace).permit(:name)
  end
  
end
