class SubjectsController < ApplicationController
  
  # Actions related to reading
  def index
    # Use named scopes in 'Subject' model to sort them easily
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  # Actions related to creation
  def new
  end

  def create
  end

  # Actions related to updating
  def edit
  end

  def update
  end

  # Actions related to deletion
  def delete
  end

  def destroy
  end
end
