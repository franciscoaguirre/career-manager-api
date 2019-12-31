class Institute < ApplicationRecord
  has_many :courses, dependent: :destroy
end
