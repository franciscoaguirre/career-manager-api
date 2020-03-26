# frozen_string_literal: true

FactoryBot.define do
  factory :career do
    name { Faker::IndustrySegments.sector }
    plan { Faker::Number.number(digits: 4) }
    required_credits { Faker::Number.number(digits: 3) }
    expected_length { Faker::Number.non_zero_digit }
    bedelias_page do
      Faker::Internet.url(
        host: 'https://eva.fing.edu.uy',
        path: '/course/view.php?id=' + Faker::Number.number(digits: 3).to_s
      )
    end
  end
end
