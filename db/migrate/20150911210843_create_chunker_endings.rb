class CreateChunkerEndings < ActiveRecord::Migration
  def change
    create_table :chunker_endings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
