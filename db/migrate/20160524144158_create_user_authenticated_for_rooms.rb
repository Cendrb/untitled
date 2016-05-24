class CreateUserAuthenticatedForRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :user_authenticated_for_rooms do |t|
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
