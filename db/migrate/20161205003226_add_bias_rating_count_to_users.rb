class AddBiasRatingCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bias_ratings_count, :integer
  end
end
