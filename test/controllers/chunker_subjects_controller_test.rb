require 'test_helper'

class ChunkerSubjectsControllerTest < ActionController::TestCase
  setup do
    @chunker_subject = chunker_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chunker_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chunker_subject" do
    assert_difference('ChunkerSubject.count') do
      post :create, chunker_subject: { name: @chunker_subject.name }
    end

    assert_redirected_to chunker_subject_path(assigns(:chunker_subject))
  end

  test "should show chunker_subject" do
    get :show, id: @chunker_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chunker_subject
    assert_response :success
  end

  test "should update chunker_subject" do
    patch :update, id: @chunker_subject, chunker_subject: { name: @chunker_subject.name }
    assert_redirected_to chunker_subject_path(assigns(:chunker_subject))
  end

  test "should destroy chunker_subject" do
    assert_difference('ChunkerSubject.count', -1) do
      delete :destroy, id: @chunker_subject
    end

    assert_redirected_to chunker_subjects_path
  end
end
