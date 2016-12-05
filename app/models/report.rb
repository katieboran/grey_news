class Report < ApplicationRecord
  # Direct associations

  belongs_to :news_source,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :article_link, :presence => true

  validates :content, :uniqueness => { :scope => [:article_link] }

  validates :content, :presence => true

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
