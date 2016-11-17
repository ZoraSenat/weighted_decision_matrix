class Comment < ApplicationRecord
  # Direct associations

  belongs_to :decision

  belongs_to :user

  # Indirect associations

  # Validations

end
