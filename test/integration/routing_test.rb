require 'test_helper'

class RoutingTest < ActionController::IntegrationTest
  context "routing" do
  
    should_route :get, "/account/new", :controller => "users", :action => "new"
    should_route :get, "/account/edit", :action=>"edit", :controller=>"users"
    should_route :get, "/account", :action=>"show", :controller=>"users"
    should_route :put, "/account", :action=>"update", :controller=>"users"
    should_route :delete, "/account", :action=>"destroy", :controller=>"users"
    should_route :post, "/account", :action=>"create", :controller=>"users"
    should_route :get, "/password_resets", :action=>"index", :controller=>"password_resets"
    should_route :post, "/password_resets", :action=>"create", :controller=>"password_resets"
    should_route :get, "/password_resets/new", :action=>"new", :controller=>"password_resets"
    should_route :get, "/password_resets/1/edit", :action=>"edit", :controller=>"password_resets", :id => 1
    should_route :get, "/password_resets/1", :action=>"show", :controller=>"password_resets", :id => 1
    should_route :put, "/password_resets/1", :action=>"update", :controller=>"password_resets", :id => 1
    should_route :delete, "/password_resets/1", :action=>"destroy", :controller=>"password_resets", :id => 1
    should_route :get, "/users", :action=>"index", :controller=>"users"
    should route(:post, "/users").to(:action=>"create", :controller=>"users")
    should route(:get, "/users/new").to(:action=>"new", :controller=>"users")
    should_route :get, "/users/1/edit", :action=>"edit", :controller=>"users", :id => 1
    should_route :get, "/users/1", :action=>"show", :controller=>"users", :id => 1
    should_route :put, "/users/1", :action=>"update", :controller=>"users", :id => 1
    should_route :delete, "/users/1", :action=>"destroy", :controller=>"users", :id => 1
    should_route :get, "/user_session/new", :action=>"new", :controller=>"user_sessions"
    should_route :get, "/user_session/edit", :action=>"edit", :controller=>"user_sessions"
    should_route :get, "/user_session", :action=>"show", :controller=>"user_sessions"
    should_route :put, "/user_session", :action=>"update", :controller=>"user_sessions"
    should_route :delete, "/user_session", :action=>"destroy", :controller=>"user_sessions"
    should_route :post, "/user_session", :action=>"create", :controller=>"user_sessions"
    should_route :get, "/", :action=>"home", :controller=>"pages"
    should route(:get, "/home").to(:action=>"home", :controller=>"pages")
    should route(:get, "/login").to(:action=>"new", :controller=>"user_sessions")
    should route(:get, "/logout").to(:action=>"destroy", :controller=>"user_sessions")
    should route(:get, "/register").to(:action=>"new", :controller=>"users")
    should_route :get, "/pages/foo", :controller=>"pages", :action => "foo"

  end
end
