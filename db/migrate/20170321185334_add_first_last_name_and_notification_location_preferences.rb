class AddFirstLastNameAndNotificationLocationPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :notification_method, :string, array: true, default: []
    add_column :users, :notification_time, :string, array: true, default: []
    add_column :users, :location_preference, :string, array: true, default: []
  end
end
