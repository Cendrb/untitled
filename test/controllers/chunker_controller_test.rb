require 'test_helper'

class ChunkerControllerTest < ActionController::TestCase
  test "should get penis" do
    get :penis
    assert_response :success
  end

end
