require 'rails_helper'

RSpec.describe Dog, type: :model do
  let(:dog) { described_class.new(name: name, description: desc) }
  let(:name) { 'First dog' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { dog.summary }

    it 'returns a summary' do
      expect(subject).to eql('First dog - Once upon a time, in a...')
    end
  end
end
