class Option < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :decision_id, :presence => true

  validates :name, :presence => true

end
