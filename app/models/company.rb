class Company < ApplicationRecord
  # Direct associations

  has_many   :users,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :company_name, :uniqueness => true

  validates :company_name, :presence => true

  validates :industry, :presence => true

end
