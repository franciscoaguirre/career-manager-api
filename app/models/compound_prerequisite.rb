class CompoundPrerequisite < Prerequisite
  has_many :prerequisites, dependent: :destroy
end
