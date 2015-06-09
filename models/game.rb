require "pry"
require_relative "card.rb"
require_relative "deck.rb"
require_relative "hand.rb"

class Game
  attr_reader :welcome_message, :hand, :player_hand, :dealer_hand

  def initialize
    @welcome_message = "Welcome to Blackjack!"
    @hand = Hand.new
    @player_hand = @hand.player_hand
    @dealer_hand = @hand.dealer_hand
  end

  def deal_initial_hand
    "
      Player was dealt #{player_hand[0].rank}#{player_hand[0].suit}
      Player was dealt #{player_hand[1].rank}#{player_hand[1].suit}

      Player score: #{hand.score(player_hand)}
    "
  end

  def hit_or_stand
    # decision = gets.chomp
  end

end
