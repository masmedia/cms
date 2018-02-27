class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  # If subject_id does not exist in db, it won't add to the db
  # since subject_id is a foreign key for subjects table
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to(page_path(@page) )
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private
  def page_params
    params.require(:page).permit(:subject_id, :name, :position, :visible, :permalink)
  end

end
