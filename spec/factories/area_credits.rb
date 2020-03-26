# frozen_string_literal: true

FactoryBot.define do
  factory :area_credit do
    career
    area
    minimum_credits { Faker::Number.between(from: 1, to: 15) }
  end
end
