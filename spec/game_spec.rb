require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require_relative "../models/hand.rb"
require_relative "../models/game.rb"
require "pry"

RSpec.describe Game do
  let(:game) { Game.new }
  let(:hand) { Hand.new }
  let(:player_hand) { hand.player_hand }
  let(:dealer_hand) { hand.dealer_hand }

  describe "#initialize" do
    it "returns a welcome message" do
      expect(game.welcome_message).to eq("Welcome to Blackjack!")
    end
  end

  describe "#deal_initial_hand" do
    xit "returns the two cards dealt to the player" do
      string =
    "
      Player was dealt #{player_hand[0].rank}#{player_hand[0].suit}
      Player was dealt #{player_hand[1].rank}#{player_hand[1].suit}

      Player score: #{hand.score(player_hand)}
    "
      expect(game.deal_initial_hand).to eq(string)
    end
  end

end
