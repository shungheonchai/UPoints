class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :location
      t.integer :communication
      t.integer :payment
      t.integer :overall

      t.timestamps
    end
  end
end
