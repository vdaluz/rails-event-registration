class AddVenuesToEvents < ActiveRecord::Migration[8.0]
  def change
    add_reference :events, :venue, null: false, foreign_key: true
  end
end
