class Response < ApplicationRecord
  # Direct associations

  belongs_to :option

  belongs_to :criterium, :foreign_key => "criteria_id"

  belongs_to :user

  # Indirect associations

  has_one    :decision,
             :through => :criterium,
             :source => :decision

  # Validations

  validates :user_id, :presence => true

  validates :vote, :presence => true

end
