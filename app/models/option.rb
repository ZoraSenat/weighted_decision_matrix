class Option < ApplicationRecord
  # Direct associations

  belongs_to :decision

  # Indirect associations

  # Validations

  validates :decision_id, :presence => true

  validates :name, :presence => true

end
