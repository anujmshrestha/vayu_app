require 'test_helper'

class FooControllerTest < ActionDispatch::IntegrationTest
  test "should get film" do
    get foo_film_url
    assert_response :success
  end

end
