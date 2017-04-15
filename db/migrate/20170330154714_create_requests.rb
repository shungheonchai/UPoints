class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :buyer_rating
      t.integer :seller_rating
      t.string :buyer
      t.string :seller
      t.text :food_description
      t.float :price
      t.datetime :time_period
      t.string :location
      t.string :exchange_method
      t.text :special_request

      t.timestamps
    end
  end
end
