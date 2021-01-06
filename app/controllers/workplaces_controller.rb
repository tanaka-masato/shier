class WorkplacesController < ApplicationController
  def index
    @days = Day.all
  end

  def new
  end
end
