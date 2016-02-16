class DotaHeroShowCriterium < ActiveRecord::Base
  belongs_to :dota_hero_show_criterium_mode

  scope :for_mode, lambda { |mode, criterium_name| joins(:dota_hero_show_criterium_mode).where('dota_hero_show_criteria.name = :name AND dota_hero_show_criterium_modes.id = :mode', { name: criterium_name, mode: mode.id }) }

  def get_comparison_with_other_heroes(attribute_name, hero)
    result = DotaHero.find_by_sql(["
    SELECT from_top, from_bottom
    FROM(
          SELECT id, name, row_number() over (
            ORDER BY #{attribute_name} ASC) as from_bottom, row_number() over (
            ORDER BY #{attribute_name} DESC) as from_top FROM (
              SELECT DISTINCT ON(#{attribute_name}) id, name, #{attribute_name} FROM dota_heroes
              ORDER BY
                #{attribute_name},
                CASE id
                WHEN :id THEN 1
                END ASC) as dick
        )
      AS penis WHERE(id = :id)", { id: hero.id }])[0]
    string_result = ''
    if show_always
      if result.from_top < result.from_bottom
        string_result += "#{result.from_top}. nejlepší"
      else
        string_result += "#{result.from_bottom}. nejhorší"
      end
    else
      if result.from_top <= upper_limit
        string_result += "#{result.from_top}. nejlepší"
      end
      if result.from_bottom <= lower_limit
        string_result += "#{result.from_bottom}. nejhorší"
      end
    end
    return string_result
  end
end
