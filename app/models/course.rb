class Course < ApplicationRecord
  has_and_belongs_to_many :careers
  belongs_to :institute

  has_many :prerequisites

  scope :by_institute, -> (institute_id) do
    courses = Course.all
    courses = courses.where(institute_id: institute_id) unless institute_id.nil?
  end
end
