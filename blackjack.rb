#!/usr/bin/env ruby

require_relative "models/card.rb"
require_relative "models/deck.rb"
require_relative "models/hand.rb"
require_relative "models/game.rb"
require "pry"

def chop_card(card)
  card.chop!
end

def build_hand(card)
  rank = chop_card(card)
  rank_faces = %w(J Q K)
  if rank_faces.include?(rank)
    10
  elsif rank == "A"
    [1, 11]
  else
    rank.to_i
  end
end


game = Game.new

puts game.welcome_message
puts

def new_hand(game, turn_owner)
  hand = Hand.new
  card = game.deal_card
  ranks = hand.current_ranks

  puts game.view_dealt_card("#{turn_owner}", card)
  ranks << build_hand(card)
  game.remove_first_card

  card = game.deal_card
  puts game.view_dealt_card("#{turn_owner}", card)
  ranks << build_hand(card)
  game.remove_first_card

  puts

  if ranks.flatten.include?(1)
    puts game.display_score("#{turn_owner}", game.score(hand) - 11)
    puts game.display_score("#{turn_owner}", game.score(hand) - 1)
  else
    puts game.display_score("#{turn_owner}", game.score(hand))
  end

  puts
  if turn_owner == "Player"
    print "Hit or stand (H/S): "
    response = gets.chomp.upcase
    until response == "S" do
      puts
      if response == "H"
        card = game.deal_card
        puts game.view_dealt_card("#{turn_owner}", card)
        ranks << build_hand(card)
        game.remove_first_card
        puts game.display_score("#{turn_owner}", game.score(hand))
        puts
        print "Hit or stand (H/S): "
        response = gets.chomp.upcase
      end
    end
  else
    card = game.deal_card
    puts game.view_dealt_card("#{turn_owner}", card)
    ranks << build_hand(card)
    game.remove_first_card
    puts game.display_score("#{turn_owner}", game.score(hand))
    puts
  end
end


new_hand(game, "Player")
puts
new_hand(game, "Dealer")

puts "Cards left: #{game.num_of_cards}"
