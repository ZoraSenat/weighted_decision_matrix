class User < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :dependent => :nullify

  has_many   :decisions

  # Indirect associations

  # Validations

  validates :first_name, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
