ENV["RAILS_ENV"] = "test" if ENV["RAILS_ENV"].nil? || ENV["RAILS_ENV"] == ''
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'shoulda'
require 'mocha'
require 'authlogic/test_case'

# skip after_create callback during testing
# class Company < ActiveRecord::Base; def setup_default_categories; end; end

class ActiveSupport::TestCase
  
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  #fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  setup :activate_authlogic
end
