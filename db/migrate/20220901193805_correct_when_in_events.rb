class CorrectWhenInEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :when, :event_time
  end
end
