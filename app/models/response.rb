class Response < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

  validates :vote, :presence => true

end
