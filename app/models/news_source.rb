class NewsSource < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :reports,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  has_many   :bias_ratings,
             :dependent => :destroy

  # Indirect associations

  has_many   :admirers,
             :through => :favorites,
             :source => :user

  # Validations

  validates :category, :presence => true

  validates :description, :presence => true

  validates :name, :presence => true

end
