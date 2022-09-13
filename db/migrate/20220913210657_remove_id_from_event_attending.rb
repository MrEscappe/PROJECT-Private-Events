class RemoveIdFromEventAttending < ActiveRecord::Migration[7.0]
  def change
    remove_column :event_attendings, :id
  end
end
