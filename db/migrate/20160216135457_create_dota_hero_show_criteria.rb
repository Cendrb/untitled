class CreateDotaHeroShowCriteria < ActiveRecord::Migration
  def change
    create_table :dota_hero_show_criteria do |t|
      t.string :name
      t.boolean :show_always
      t.integer :upper_limit
      t.integer :lower_limit
      t.integer :dota_hero_show_criterium_mode_id

      t.timestamps null: false
    end
  end
end
