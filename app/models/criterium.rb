class Criterium < ApplicationRecord
  # Direct associations

  belongs_to :decision

  # Indirect associations

  # Validations

  validates :weight, :presence => true

end
