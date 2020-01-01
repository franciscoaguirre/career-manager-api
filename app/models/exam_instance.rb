class ExamInstance < ApplicationRecord
  belongs_to :exam

  enum status: [:failed, :passed]
end
