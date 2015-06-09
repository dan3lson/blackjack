require "pry"
require_relative "card.rb"
require_relative "deck.rb"
require_relative "hand.rb"

class Game
  attr_reader :welcome_message, :cards, :deck

  def initialize
    @welcome_message = "Welcome to Blackjack!"
    @deck = Deck.new
    @cards = @deck.cards
  end

  def deal_card
    first_card = cards.first
    "#{first_card.rank}#{first_card.suit}"
  end

  def view_dealt_card(turn_owner, deal_card)
    "#{turn_owner} was dealt #{deal_card}"
  end

  def remove_first_card
    cards.shift
  end

  def num_of_cards
    cards.count
  end

  def display_score(turn_owner, score)
    "#{turn_owner} score: #{score}"
  end

  def score(hand)
    hand.current_ranks.flatten.reduce(:+)
  end
end
