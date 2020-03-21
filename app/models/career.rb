class Career < ApplicationRecord
  validates_presence_of :required_credits
  validates_presence_of :expected_length
  validates_presence_of :plan

  has_many :courses
  has_many :area_credits
end
