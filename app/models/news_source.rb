class NewsSource < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :description, :presence => true

  validates :name, :presence => true

end
