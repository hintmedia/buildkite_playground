require 'rails_helper'

RSpec.describe Arm, type: :model do
  let(:arm) { described_class.new(name: name, description: desc) }
  let(:name) { 'First arm' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { arm.summary }

    it 'returns a summary' do
      expect(subject).to eql('First arm - Once upon a time, in a...')
    end
  end
end
