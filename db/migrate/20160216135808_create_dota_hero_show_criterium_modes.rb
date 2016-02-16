class CreateDotaHeroShowCriteriumModes < ActiveRecord::Migration
  def change
    create_table :dota_hero_show_criterium_modes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
