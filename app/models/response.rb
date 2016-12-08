class Response < ApplicationRecord
  # Direct associations

  belongs_to :option

  has_one :criterium, :foreign_key => "criteria_id"

  belongs_to :user

  belongs_to :decision

  # Validations

  validates :user_id, :presence => true

    validates :vote, :presence => true

    validates :vote, numericality: true

end
