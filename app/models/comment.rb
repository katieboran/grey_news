class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :news_source

  # Indirect associations

  # Validations

  validates :content, :uniqueness => { :scope => [:user_id] }

  validates :content, :presence => true

  validates :news_source_id, :presence => true

  validates :user_id, :presence => true

end
