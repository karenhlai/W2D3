require 'deck'

RSpec.describe do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it 'deck should not be empty' do
      expect(deck.cards.length).to eq(52)
    end

    it 'should be populated with Cards objects' do
      expect(deck.cards).to all(be_a(Card))
    end
  end

end