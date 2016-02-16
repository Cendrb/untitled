json.array!(@dota_hero_show_criteria) do |dota_hero_show_criterium|
  json.extract! dota_hero_show_criterium, :id, :name, :show_always, :upper_limit, :lower_limit, :dota_hero_show_criterium_mode_id
  json.url dota_hero_show_criterium_url(dota_hero_show_criterium, format: :json)
end
