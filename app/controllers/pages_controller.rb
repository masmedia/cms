class PagesController < ApplicationController

  layout 'admin'
  
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    @page_count = Page.count + 1 # We want to create new page. So +1
    @subjects = Subject.sorted
  end

  # If subject_id does not exist in db, it won't add to the db
  # since subject_id is a foreign key for subjects table
  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page created successfully."
      redirect_to(pages_path)
    else
      # Form partial needs page_count also. Thus add it
      @page_count = Page.count + 1 # We want to create new page. So +1
      @subjects = Subject.sorted
      render('new')
    end
  end

  def edit
    @page_count = Page.count # We want to edit page. No need for +1
    @subjects = Subject.sorted
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully."
      redirect_to(page_path(@page) )
    else
      @page_count = Page.count + 1 # We want to edit page. No need for +1
      @subjects = Subject.sorted
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page destroyed successfully."
    redirect_to(pages_path)
  end

  private
  def page_params
    params.require(:page).permit(:subject_id, :name, :position, :visible, :permalink)
  end

end
