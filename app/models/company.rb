class Company < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :company_name, :presence => true

  validates :industry, :presence => true

end
