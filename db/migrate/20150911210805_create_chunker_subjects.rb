class CreateChunkerSubjects < ActiveRecord::Migration
  def change
    create_table :chunker_subjects do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
