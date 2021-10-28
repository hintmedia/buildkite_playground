require 'rails_helper'

RSpec.describe Rock, type: :model do
  let(:rock) { described_class.new(name: name, description: desc) }
  let(:name) { 'First rock' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { rock.summary }

    it 'returns a summary' do
      expect(subject).to eql('First rock - Once upon a time, in a...')
    end
  end
end
