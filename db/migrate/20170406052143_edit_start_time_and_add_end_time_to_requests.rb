class EditStartTimeAndAddEndTimeToRequests < ActiveRecord::Migration[5.0]
  def change
    rename_column :requests, :time_period, :start_time
    add_column :requests, :end_time, :datetime
  end
end
