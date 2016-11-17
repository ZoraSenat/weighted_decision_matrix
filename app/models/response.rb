class Response < ApplicationRecord
  # Direct associations

  belongs_to :option

  belongs_to :criteria

  belongs_to :user

  # Indirect associations

  has_one    :decision,
             :through => :criteria,
             :source => :decision

  # Validations

  validates :user_id, :presence => true

  validates :vote, :presence => true

end
