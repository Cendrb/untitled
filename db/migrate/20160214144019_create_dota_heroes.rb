class CreateDotaHeroes < ActiveRecord::Migration
  def change
    create_table :dota_heroes do |t|
      t.string :name
      t.string :main_attribute
      t.integer :str_base
      t.float :str_gain
      t.integer :agi_base
      t.float :agi_gain
      t.integer :int_base
      t.float :int_gain
      t.integer :movement_speed
      t.float :armor
      t.integer :dmg_min
      t.integer :dmg_max
      t.integer :attack_range
      t.float :base_attack_time
      t.float :attack_point
      t.float :attack_backswing
      t.integer :vision_day
      t.integer :vision_night
      t.float :turn_rate
      t.integer :collision_size
      t.float :health_regen

      t.timestamps null: false
    end
  end
end
