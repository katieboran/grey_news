class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :content, :uniqueness => { :scope => [:user_id] }

  validates :content, :presence => true

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
