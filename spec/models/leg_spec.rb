require 'rails_helper'

RSpec.describe Leg, type: :model do
  let(:leg) { described_class.new(name: name, description: desc) }
  let(:name) { 'First leg' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { leg.summary }

    it 'returns a summary' do
      expect(subject).to eql('First leg - Once upon a time, in a...')
    end
  end
end
