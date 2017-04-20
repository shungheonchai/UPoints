class ChangePosterAcceptorRatingToBoolean < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :poster_rating, 'boolean USING poster_rating::boolean', default: false
    change_column :requests, :acceptor_rating, 'boolean USING acceptor_rating::boolean', default: false
  end
end
