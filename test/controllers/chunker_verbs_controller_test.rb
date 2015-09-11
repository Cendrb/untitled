require 'test_helper'

class ChunkerVerbsControllerTest < ActionController::TestCase
  setup do
    @chunker_verb = chunker_verbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chunker_verbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chunker_verb" do
    assert_difference('ChunkerVerb.count') do
      post :create, chunker_verb: { name: @chunker_verb.name }
    end

    assert_redirected_to chunker_verb_path(assigns(:chunker_verb))
  end

  test "should show chunker_verb" do
    get :show, id: @chunker_verb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chunker_verb
    assert_response :success
  end

  test "should update chunker_verb" do
    patch :update, id: @chunker_verb, chunker_verb: { name: @chunker_verb.name }
    assert_redirected_to chunker_verb_path(assigns(:chunker_verb))
  end

  test "should destroy chunker_verb" do
    assert_difference('ChunkerVerb.count', -1) do
      delete :destroy, id: @chunker_verb
    end

    assert_redirected_to chunker_verbs_path
  end
end
