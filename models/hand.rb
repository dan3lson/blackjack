require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require "pry"

class Hand

  attr_reader :cards, :deck, :current_hand

  def initialize
    @current_hand = [{}]
  end

  def score
    total = 0
    player_hand.each do |card|
      card.rank = "10" if card.rank == "J"
      card.rank = "10" if card.rank == "Q"
      card.rank = "10" if card.rank == "K"
      total += card.rank_to_i(card.rank)
    end
    total
  end
end
