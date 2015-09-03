require 'test_helper'

class DiskControllerControllerTest < ActionController::TestCase
  test "should get genitalite" do
    get :genitalite
    assert_response :success
  end

end
