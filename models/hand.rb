require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require_relative "../models/game.rb"
require "pry"

class Hand
  attr_reader :current_ranks

  def initialize
    @current_ranks = []
  end
end
