require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require "pry"

class Hand

  attr_reader :deck, :cards
  attr_accessor :player_hand, :dealer_hand

  def initialize
    @deck = Deck.new
    @player_hand = [@deck.cards[0], @deck.cards[1]]
    @dealer_hand = [@deck.cards[2], @deck.cards[3]]
  end

  def remove_first_four_cards(deck)
    4.times do
      deck.cards.shift
    end
  end

  def score
    total = 0
    player_hand.each do |card|
      card.rank = "11" if card.rank == "J"
      card.rank = "12" if card.rank == "Q"
      card.rank = "13" if card.rank == "K"
      total += card.rank_to_i(card.rank)
    binding.pry
    end
    total
  end
end
