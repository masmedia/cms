class SectionsController < ApplicationController
  
  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def destroy
  end

end
