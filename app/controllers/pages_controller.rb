class PagesController < ApplicationController
  
  def home
    @page_title = 'ccscportal'
  end
  
  def css_test
    @page_title = "CSS Test"
  end
  
  def kaboom
    User.first.kaboom!
  end
  
  
end
