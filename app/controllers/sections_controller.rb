class SectionsController < ApplicationController
  
  layout 'admin'

  before_action :count_sections, :only => [:new, :create, :edit, :update]

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
    @pages = Page.sorted
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section created successfully."
      redirect_to(sections_path)
    else
      @pages = Page.sorted
      render('new')
    end
  end

  def edit
    @pages = Page.sorted
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Section updated successfully."
      redirect_to(section_path(@section))
    else
      @pages = Page.sorted
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section destroyed successfully."
    redirect_to(sections_path)
  end

  private
  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content_type, :content)
  end

  def count_sections
    @section_count = Section.count
    if params[:action] == 'new' || params[:action] == 'create'
      @section_count += 1
    end
  end

end
