class Prerequisite < ApplicationRecord
  belongs_to :course

  validates_presence_of :type
end
