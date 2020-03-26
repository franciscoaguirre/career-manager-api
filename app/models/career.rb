class Career < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :plan
  validates_presence_of :required_credits
  validates_presence_of :expected_length

  has_and_belongs_to_many :courses
  has_many :area_credits
end
