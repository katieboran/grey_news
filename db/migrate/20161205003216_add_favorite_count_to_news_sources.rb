class AddFavoriteCountToNewsSources < ActiveRecord::Migration[5.0]
  def change
    add_column :news_sources, :favorites_count, :integer
  end
end
