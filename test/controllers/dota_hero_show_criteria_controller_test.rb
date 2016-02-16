require 'test_helper'

class DotaHeroShowCriteriaControllerTest < ActionController::TestCase
  setup do
    @dota_hero_show_criterium = dota_hero_show_criteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dota_hero_show_criteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dota_hero_show_criterium" do
    assert_difference('DotaHeroShowCriterium.count') do
      post :create, dota_hero_show_criterium: { dota_hero_show_criterium_mode_id: @dota_hero_show_criterium.dota_hero_show_criterium_mode_id, lower_limit: @dota_hero_show_criterium.lower_limit, name: @dota_hero_show_criterium.name, show_always: @dota_hero_show_criterium.show_always, upper_limit: @dota_hero_show_criterium.upper_limit }
    end

    assert_redirected_to dota_hero_show_criterium_path(assigns(:dota_hero_show_criterium))
  end

  test "should show dota_hero_show_criterium" do
    get :show, id: @dota_hero_show_criterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dota_hero_show_criterium
    assert_response :success
  end

  test "should update dota_hero_show_criterium" do
    patch :update, id: @dota_hero_show_criterium, dota_hero_show_criterium: { dota_hero_show_criterium_mode_id: @dota_hero_show_criterium.dota_hero_show_criterium_mode_id, lower_limit: @dota_hero_show_criterium.lower_limit, name: @dota_hero_show_criterium.name, show_always: @dota_hero_show_criterium.show_always, upper_limit: @dota_hero_show_criterium.upper_limit }
    assert_redirected_to dota_hero_show_criterium_path(assigns(:dota_hero_show_criterium))
  end

  test "should destroy dota_hero_show_criterium" do
    assert_difference('DotaHeroShowCriterium.count', -1) do
      delete :destroy, id: @dota_hero_show_criterium
    end

    assert_redirected_to dota_hero_show_criteria_path
  end
end
