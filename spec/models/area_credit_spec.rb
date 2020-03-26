# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe AreaCredit do
  it 'has a valid factory' do
    expect(build(:area_credit)).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:minimum_credits) }
  end

  describe 'associations' do
    it { should belong_to(:career) }
    it { should belong_to(:area) }
  end
end
