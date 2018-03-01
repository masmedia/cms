class DemoController < ApplicationController

  layout 'application'
  
  # Override the behavior by filling the index method
  def index
  	render('index')
  	# These are also possible
  	# render(:template => 'demo/index')
  	# render('demo/index')
  end

  # This is an action 
  def hello
  	@array = [1, 2, 3, 4, 5]
  	# For params[] array to work, symbol and string does not matter
  	# If the route matches, Ruby adds these params as query parameters
  	@id = params['id']
  	@page = params[:page]
  	render('hello')  # This will render a template

  end

  # Redirection takes two http requests: One for the original action. 
  # Then Rails sends a status code '302  Found' message to the browser to send a new 
  # request for the page that will be redirected to. That's the second.
  def other_hello
  	redirect_to(:action => 'index')
  	# Since it will redirect to the same controller, no need to specify the controller
  	# redirect_to(:controller => 'demo', :action => 'index')  	
  end

  def lynda
  	redirect_to('http://lynda.com')
  end

  def escape_output
    
  end

end
