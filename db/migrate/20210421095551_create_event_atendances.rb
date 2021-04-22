class CreateEventAtendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_atendances do |t|
      t.integer :attendee_id
      t.string :attended_event_id
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
