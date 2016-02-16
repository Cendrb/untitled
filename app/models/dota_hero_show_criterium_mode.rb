class DotaHeroShowCriteriumMode < ActiveRecord::Base
  validates_presence_of :name
  has_many :dota_hero_show_criteria

  def self.criteria_names
    [ :main_attribute, :attributes_table, :attributes_summary, :movement_speed, :armor, :damage, :attack, :vision, :turn_rate, :collision_size, :health_regen ]
  end
end
