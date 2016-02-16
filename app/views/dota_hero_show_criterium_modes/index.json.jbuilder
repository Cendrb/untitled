json.array!(@dota_hero_show_criterium_modes) do |dota_hero_show_criterium_mode|
  json.extract! dota_hero_show_criterium_mode, :id, :name
  json.url dota_hero_show_criterium_mode_url(dota_hero_show_criterium_mode, format: :json)
end
