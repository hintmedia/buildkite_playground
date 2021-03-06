require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { described_class.new(name: name, description: desc) }
  let(:name) { 'First Post' }
  let(:desc) { 'Once upon a time, in a land far, far away there lived a little boy.' }

  describe 'summary' do
    subject { post.summary }

    it 'returns a summary' do
      expect(subject).to eql('First Post - Once upon a time, in a...')
    end
  end
end
