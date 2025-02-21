class CreateRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :event_id
      t.timestamps

      t.index [ :user_id, :event_id ], unique: true
    end
  end
end
