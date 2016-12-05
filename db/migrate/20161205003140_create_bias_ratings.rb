class CreateBiasRatings < ActiveRecord::Migration
  def change
    create_table :bias_ratings do |t|
      t.integer :user_id
      t.integer :news_source_id
      t.integer :rating

      t.timestamps

    end
  end
end
