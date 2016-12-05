class User < ApplicationRecord
  # Direct associations

  has_many   :bias_ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :username, :uniqueness => { :scope => [:age] }

  validates :username, :presence => true

  validates :username, :length => { :maximum => 20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
