class AddBiasRatingCountToNewsSources < ActiveRecord::Migration[5.0]
  def change
    add_column :news_sources, :bias_ratings_count, :integer
  end
end
