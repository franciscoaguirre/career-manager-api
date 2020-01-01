class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :semester

  enum status: [
    :planning, :in_progress, :exam,
    :passed, :failed, :retaking
  ]
end
