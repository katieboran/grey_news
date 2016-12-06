class CreateNewsSources < ActiveRecord::Migration
  def change
    create_table :news_sources do |t|
      t.string :category
      t.text :description
      t.string :location
      t.date :date_founded
      t.string :ownership
      t.string :image
      t.string :website
      t.string :name
      t.integer :user

      t.timestamps

    end
  end
end
