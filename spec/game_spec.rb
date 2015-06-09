require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require_relative "../models/hand.rb"
require_relative "../models/game.rb"
require "pry"

RSpec.describe Game do
  let(:game) { Game.new }
  let(:cards) { game.deck.cards }
  let(:deck) { game.deck }

  describe "#initialize" do
    it "returns a welcome message" do
      expect(game.welcome_message).to eq("Welcome to Blackjack!")
    end
  end

  describe "#deal_card" do
    it "returns string of first card's rank and suit in deck" do
      first_card = cards.first
      first_card_info = "#{first_card.rank}#{first_card.suit}"
      expect(game.deal_card).to eq(first_card_info)
    end
  end

  describe "#view_dealt_card" do
    it "returns string of turn_owner\'s dealt card" do
      dealt_card_info = "Player was dealt #{game.deal_card}"
      expect(game.view_dealt_card("Player")).to eq(dealt_card_info)
    end
  end

  describe "#remove_first_card" do
    context "removes the first card from the deck" do
      it "returns the removed card object" do
        expect(game.remove_first_card.class).to be(Card)
      end
    end
  end

  describe "#num_of_cards" do
    context "subtracts one from the number of cards left" do
      it "returns a number" do
        game.remove_first_card
        expect(game.num_of_cards).to eq(51)
      end
    end
  end

end
