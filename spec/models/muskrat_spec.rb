require 'rails_helper'

RSpec.describe Muskrat, type: :model do
  let(:muskrat) { described_class.new(name: name, description: desc) }
  let(:name) { 'First muskrat' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { muskrat.summary }

    it 'returns a summary' do
      expect(subject).to eql('First muskrat - Once upon a time, in a...')
    end
  end
end
