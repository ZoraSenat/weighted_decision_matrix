class Decision < ApplicationRecord
  # Direct associations

  has_many   :criteria,
             :dependent => :destroy

  belongs_to :primary_stakeholder,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:user_id] }

  validates :name, :presence => true

  validates :user_id, :presence => true

end
