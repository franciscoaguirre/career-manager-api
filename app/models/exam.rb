class Exam < ApplicationRecord
  belongs_to :user
  belongs_to :course

  has_many :exam_instances, dependent: :destroy

  enum status: [:pending, :passed, :expired]
end
