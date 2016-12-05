class BiasRating < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :user_id, :uniqueness => { :scope => [:news_source_id] }

  validates :user_id, :presence => true

end
