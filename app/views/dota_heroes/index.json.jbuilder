json.array!(@dota_heroes) do |dota_hero|
  json.extract! dota_hero, :id, :name, :main_attribute, :str_base, :str_gain, :agi_base, :agi_gain, :int_base, :int_gain, :movement_speed, :armor, :dmg_min, :dmg_max, :attack_range, :base_attack_time, :attack_point, :attack_backswing, :vision_day, :vision_night, :turn_rate, :collision_size, :health_regen
  json.url dota_hero_url(dota_hero, format: :json)
end
