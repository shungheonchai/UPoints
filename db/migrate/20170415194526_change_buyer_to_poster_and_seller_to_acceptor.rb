class ChangeBuyerToPosterAndSellerToAcceptor < ActiveRecord::Migration[5.0]
  def change
    rename_column :requests, :buyer_rating, :poster_rating
    rename_column :requests, :seller_rating, :acceptor_rating
    rename_column :requests, :buyer, :poster_name
    rename_column :requests, :seller, :acceptor_name
    rename_column :users, :accum_buyer_rating, :accum_poster_rating
    rename_column :users, :accum_seller_rating, :accum_acceptor_rating
    add_column :ratings, :request_id, :string
  end
end
