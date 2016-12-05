class NewsSource < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :category, :presence => true

  validates :description, :presence => true

  validates :name, :presence => true

end
