require_relative 'card.rb'

class Deck
  SUITS = [:spade, :heart, :clover, :diamond]
  VALUES = (2..14).to_a

  attr_reader :cards

  def initialize
    @cards = populate_deck
  end

  def populate_deck
    new_deck = []
    VALUES.each do |value|
      SUITS.each do |suit|
        new_deck << Card.new(suit, value)
      end
    end
    new_deck.freeze
  end
  # need to shuffle deck at some point
end

# if __FILE__ == $PROGRAM_NAME
#   our_deck = Deck.new
#   puts our_deck
# end