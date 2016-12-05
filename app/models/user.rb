class User < ApplicationRecord
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

  has_many   :observations,
             :through => :reports,
             :source => :news_source

  has_many   :preferences,
             :through => :favorites,
             :source => :news_source

  # Validations

  validates :username, :uniqueness => { :scope => [:age] }

  validates :username, :presence => true

  validates :username, :length => { :maximum => 20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
