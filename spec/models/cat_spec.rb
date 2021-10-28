require 'rails_helper'

RSpec.describe Cat, type: :model do
  let(:cat) { described_class.new(name: name, description: desc) }
  let(:name) { 'First cat' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { cat.summary }

    it 'returns a summary' do
      expect(subject).to eql('First cat - Once upon a time, in a...')
    end
  end
end
