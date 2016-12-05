class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :news_source,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :news_source_id, :uniqueness => { :scope => [:created_at] }

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
