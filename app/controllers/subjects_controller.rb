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
    @subject = Subject.new( {:name=>'Default'} )
  end

  def create
    # Instantiate a new object using form parameters
    # @subject=Subject.new(params[:subject]) gives error because of mass assignment 
    # Need to declare what must be required and what must be permitted. 
    @subject = Subject.new(subject_params)  # private method returns parameters
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the index action
      redirect_to(subjects_path)
    else 
      # If save fails, redisplay the form so user can fix problems
      render('new')  # Beware that the instance variables are the same
    end
  end

  # Actions related to updating and a lot like new action
  def edit
    @subject = Subject.find(params[:id])
  end

  # A lot like create action
  def update
    # Find a new object using form parameters
    @subject = Subject.find(params[:id])
    # Update the object (considering again mass assignment)
    if @subject.update_attributes(subject_params)
      # If save succeeds, redirect to the show action
      redirect_to( subject_path( @subject ) )
    else 
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  # Actions related to deletion
  def delete
  end

  def destroy
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end
