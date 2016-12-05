class NewsSource < ApplicationRecord
  # Direct associations

  has_many   :bias_ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :category, :presence => true

  validates :description, :presence => true

  validates :name, :presence => true

end
