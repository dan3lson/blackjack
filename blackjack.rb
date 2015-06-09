#!/usr/bin/env ruby

require_relative "models/card.rb"
require_relative "models/deck.rb"
require_relative "models/hand.rb"
require_relative "models/game.rb"

game = Game.new
puts game.welcome_message
puts game.view_dealt_card("Player")
game.remove_first_card
puts game.view_dealt_card("Player")
game.remove_first_card
puts game.num_of_cards
