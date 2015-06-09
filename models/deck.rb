require "pry"
require_relative "card.rb"

class Deck
  attr_reader :cards

  def initialize
    @cards = self.class.make_cards("♦", "♣", "♠", "♥")
  end

  def self.make_card_set(suit)
    cards = []
    ("1".."13").to_a.each do |num|
      cards << Card.new(num, suit)
    end
    cards[0] = Card.new("A", suit)
    cards[-3] = Card.new("J", suit)
    cards[-2] = Card.new("Q", suit)
    cards[-1] = Card.new("K", suit)
    cards
  end

  def self.make_cards(diamonds, clovers, spades, hearts)
    make_card_set(diamonds)
    .concat(make_card_set(clovers))
    .concat(make_card_set(spades))
    .concat(make_card_set(hearts))
    .shuffle!
  end
end
