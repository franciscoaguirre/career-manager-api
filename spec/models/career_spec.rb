require 'rails_helper'

RSpec.describe Career, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:plan) }
    it { is_expected.to validate_presence_of(:required_credits) }
    it { is_expected.to validate_presence_of(:expected_length) }
  end

  describe 'associations' do
    it { should has_many(:courses) }
    it { should has_many(:area_credits) }
  end
end
