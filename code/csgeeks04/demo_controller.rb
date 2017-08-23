

class DemoController < ApplicationController
  layout false
  def index
    render('hello')

  end
  def hello
    render('index')
  end

  def hello1
  #  redirect_to(:controller => 'demo', :action => 'index')
  redirect_to( :action => 'index')
  end

  def youtube
  redirect_to('http://youtube.com')
  end


end
