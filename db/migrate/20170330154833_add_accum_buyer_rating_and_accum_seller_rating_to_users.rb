class AddAccumBuyerRatingAndAccumSellerRatingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :accum_buyer_rating, :float
    add_column :users, :accum_seller_rating, :float
  end
end
