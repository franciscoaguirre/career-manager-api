class AreaCredit < ApplicationRecord
  belongs_to :career
  belongs_to :area

  validates_presence_of :minimum_credits
end
