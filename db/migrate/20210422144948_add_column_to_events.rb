class AddColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :user_id, :integer
    add_column :events, :date_of_event, :date
  end
end
