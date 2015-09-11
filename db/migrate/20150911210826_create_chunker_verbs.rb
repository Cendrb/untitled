class CreateChunkerVerbs < ActiveRecord::Migration
  def change
    create_table :chunker_verbs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
