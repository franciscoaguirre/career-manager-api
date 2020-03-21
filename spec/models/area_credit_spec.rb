require 'rails_helper'

RSpec.describe AreaCredit, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:minimum_credits) }
  end

  describe 'associations' do
    it { should belong_to(:career) }
    it { should belong_to(:area) }
  end
end
