class AddReportCountToNewsSources < ActiveRecord::Migration[5.0]
  def change
    add_column :news_sources, :reports_count, :integer
  end
end
