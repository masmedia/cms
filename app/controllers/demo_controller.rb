class DemoController < ApplicationController

  layout false
  
  def index
  	render('index')
  	# These are also possione
  	# render(:template => 'demo/index')
  	# render('demo/index')
  end

  # This is an action 
  def hello
  	render('hello')  # This will render a template

  end

end
