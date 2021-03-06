class NewsSource < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :reports,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  has_many   :bias_ratings,
             :dependent => :destroy

  belongs_to :user           

  # Indirect associations

  has_many   :observers,
             :through => :reports,
             :source => :user

  has_many   :admirers,
             :through => :favorites,
             :source => :user

  # Validations

  validates :category, :presence => true

  validates :description, :presence => true

  validates :name, :presence => true

end
