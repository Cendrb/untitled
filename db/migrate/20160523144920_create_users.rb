class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :hashed_password
      t.string :salt
      t.string :nickname
      t.integer :access_level

      t.timestamps
    end
  end
end
