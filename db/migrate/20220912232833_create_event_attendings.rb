class CreateEventAttendings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendings do |t|
      t.integer :attendee_id
      t.integer :attended_event_id

      t.timestamps
    end

    add_index :event_attendings, :attendee_id
    add_index :event_attendings, :attended_event_id
  end
end
