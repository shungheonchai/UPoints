class AddUserIdToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :user_id, :integer
    add_column :requests, :user_other_id, :integer
  end
end
