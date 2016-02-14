require 'test_helper'

class SummaryControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get administration" do
    get :administration
    assert_response :success
  end

end
