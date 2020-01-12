class Exam < ApplicationRecord
  belongs_to :user_course

  has_many :exam_instances, dependent: :destroy

  enum status: [:pending, :passed, :expired]
end
