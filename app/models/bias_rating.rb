class BiasRating < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :news_source,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :news_source_id, :presence => true

  validates :rating, :presence => true

  validates :rating, :numericality => { :less_than_or_equal_to => 10, :greater_than_or_equal_to => 1 }

  validates :user_id, :uniqueness => { :scope => [:news_source_id] }

  validates :user_id, :presence => true

end
