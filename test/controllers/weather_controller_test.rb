require 'test_helper'

class WeatherControllerTest < ActionController::TestCase
  test "should get current_location" do
    get :current_location
    assert_response :success
  end

end
