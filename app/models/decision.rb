class Decision < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :presence => true

  validates :user_id, :presence => true

end
