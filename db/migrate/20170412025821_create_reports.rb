class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :reporting_user_id
      t.text :reason

      t.timestamps
    end
  end
end
