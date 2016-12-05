class AddReportCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :reports_count, :integer
  end
end
