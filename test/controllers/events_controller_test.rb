require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get xgc" do
    get :xgc
    assert_response :success
  end

end
