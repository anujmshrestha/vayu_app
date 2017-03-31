require 'test_helper'

class FooControllerTest < ActionDispatch::IntegrationTest
  	test "should get film" do
	    get foo_film_url
	    assert_response :success
  	end
  	test "should get home" do
	  	get foo_home_url
	  	assert_response :success
  	end

end
