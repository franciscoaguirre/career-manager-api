# frozen_string_literal: true

FactoryBot.define do
  factory :area do
    name { Faker::IndustrySegments.super_sector }
  end
end
