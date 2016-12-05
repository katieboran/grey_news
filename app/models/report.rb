class Report < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :content, :uniqueness => { :scope => [:article_link] }

  validates :content, :presence => true

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
