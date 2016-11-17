class Criterium < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :foreign_key => "criteria_id",
             :dependent => :destroy

  belongs_to :decision

  # Indirect associations

  # Validations

  validates :weight, :presence => true

end
