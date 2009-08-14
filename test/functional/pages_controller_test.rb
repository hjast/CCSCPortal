require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  
  {:home => 'ccscportal',
   :css_test => 'CSS Test'}.each do | page, page_title |
    context "on GET to :#{page.to_s}" do
      setup do
        get page
      end
    
      should_assign_to(:page_title) { page_title }
      should_respond_with :success
      should_not_set_the_flash
      should_render_template page
    end
  end
  
  context "on GET to :kaboom" do
    should "blow up predictably" do
      assert_raise NameError do
        @user = User.generate!
        get :kaboom
      end
    end
  end
  
end
