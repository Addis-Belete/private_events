class AddColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :events_date, :time
    add_column :events, :user_id, :integer
  end
end
