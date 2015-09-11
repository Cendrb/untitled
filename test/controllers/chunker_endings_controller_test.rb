require 'test_helper'

class ChunkerEndingsControllerTest < ActionController::TestCase
  setup do
    @chunker_ending = chunker_endings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chunker_endings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chunker_ending" do
    assert_difference('ChunkerEnding.count') do
      post :create, chunker_ending: { name: @chunker_ending.name }
    end

    assert_redirected_to chunker_ending_path(assigns(:chunker_ending))
  end

  test "should show chunker_ending" do
    get :show, id: @chunker_ending
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chunker_ending
    assert_response :success
  end

  test "should update chunker_ending" do
    patch :update, id: @chunker_ending, chunker_ending: { name: @chunker_ending.name }
    assert_redirected_to chunker_ending_path(assigns(:chunker_ending))
  end

  test "should destroy chunker_ending" do
    assert_difference('ChunkerEnding.count', -1) do
      delete :destroy, id: @chunker_ending
    end

    assert_redirected_to chunker_endings_path
  end
end
