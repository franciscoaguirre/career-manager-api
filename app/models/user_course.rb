class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :semester

  has_one :exam

  enum status: [
    :planning, :in_progress, :exam,
    :passed, :failed, :retaking
  ]
end
