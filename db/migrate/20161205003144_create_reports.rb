class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :content
      t.string :article_link
      t.integer :news_source_id

      t.timestamps

    end
  end
end
