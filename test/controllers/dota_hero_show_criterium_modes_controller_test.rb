require 'test_helper'

class DotaHeroShowCriteriumModesControllerTest < ActionController::TestCase
  setup do
    @dota_hero_show_criterium_mode = dota_hero_show_criterium_modes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dota_hero_show_criterium_modes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dota_hero_show_criterium_mode" do
    assert_difference('DotaHeroShowCriteriumMode.count') do
      post :create, dota_hero_show_criterium_mode: { name: @dota_hero_show_criterium_mode.name }
    end

    assert_redirected_to dota_hero_show_criterium_mode_path(assigns(:dota_hero_show_criterium_mode))
  end

  test "should show dota_hero_show_criterium_mode" do
    get :show, id: @dota_hero_show_criterium_mode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dota_hero_show_criterium_mode
    assert_response :success
  end

  test "should update dota_hero_show_criterium_mode" do
    patch :update, id: @dota_hero_show_criterium_mode, dota_hero_show_criterium_mode: { name: @dota_hero_show_criterium_mode.name }
    assert_redirected_to dota_hero_show_criterium_mode_path(assigns(:dota_hero_show_criterium_mode))
  end

  test "should destroy dota_hero_show_criterium_mode" do
    assert_difference('DotaHeroShowCriteriumMode.count', -1) do
      delete :destroy, id: @dota_hero_show_criterium_mode
    end

    assert_redirected_to dota_hero_show_criterium_modes_path
  end
end
