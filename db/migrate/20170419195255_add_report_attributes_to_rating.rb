class AddReportAttributesToRating < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :rating_user_id, :integer
    add_column :ratings, :report, :text
  end
end
