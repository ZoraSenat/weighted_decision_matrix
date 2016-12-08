class Decision < ApplicationRecord
  # Direct associations

  has_many   :options,
             :dependent => :destroy

  has_many   :criterium, :foreign_key => "decision_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :primary_stakeholder,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => true

  # Indirect associations

  has_many   :responses,
             :dependent => :destroy

  # Validations

  validates :name, :uniqueness => { :scope => [:user_id] }

  validates :name, :presence => true

  validates :user_id, :presence => true

end
