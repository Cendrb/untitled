require 'test_helper'

class DotaHeroesControllerTest < ActionController::TestCase
  setup do
    @dota_hero = dota_heroes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dota_heroes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dota_hero" do
    assert_difference('DotaHero.count') do
      post :create, dota_hero: { agi_base: @dota_hero.agi_base, agi_gain: @dota_hero.agi_gain, armor: @dota_hero.armor, attack_backswing: @dota_hero.attack_backswing, attack_point: @dota_hero.attack_point, attack_range: @dota_hero.attack_range, base_attack_time: @dota_hero.base_attack_time, collision_size: @dota_hero.collision_size, dmg_max: @dota_hero.dmg_max, dmg_min: @dota_hero.dmg_min, health_regen: @dota_hero.health_regen, int_base: @dota_hero.int_base, int_gain: @dota_hero.int_gain, main_attribute: @dota_hero.main_attribute, movement_speed: @dota_hero.movement_speed, name: @dota_hero.name, str_base: @dota_hero.str_base, str_gain: @dota_hero.str_gain, turn_rate: @dota_hero.turn_rate, vision_day: @dota_hero.vision_day, vision_night: @dota_hero.vision_night }
    end

    assert_redirected_to dota_hero_path(assigns(:dota_hero))
  end

  test "should show dota_hero" do
    get :show, id: @dota_hero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dota_hero
    assert_response :success
  end

  test "should update dota_hero" do
    patch :update, id: @dota_hero, dota_hero: { agi_base: @dota_hero.agi_base, agi_gain: @dota_hero.agi_gain, armor: @dota_hero.armor, attack_backswing: @dota_hero.attack_backswing, attack_point: @dota_hero.attack_point, attack_range: @dota_hero.attack_range, base_attack_time: @dota_hero.base_attack_time, collision_size: @dota_hero.collision_size, dmg_max: @dota_hero.dmg_max, dmg_min: @dota_hero.dmg_min, health_regen: @dota_hero.health_regen, int_base: @dota_hero.int_base, int_gain: @dota_hero.int_gain, main_attribute: @dota_hero.main_attribute, movement_speed: @dota_hero.movement_speed, name: @dota_hero.name, str_base: @dota_hero.str_base, str_gain: @dota_hero.str_gain, turn_rate: @dota_hero.turn_rate, vision_day: @dota_hero.vision_day, vision_night: @dota_hero.vision_night }
    assert_redirected_to dota_hero_path(assigns(:dota_hero))
  end

  test "should destroy dota_hero" do
    assert_difference('DotaHero.count', -1) do
      delete :destroy, id: @dota_hero
    end

    assert_redirected_to dota_heroes_path
  end
end
