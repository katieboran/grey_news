class Favorite < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :news_source_id, :uniqueness => { :scope => [:user_id] }

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
