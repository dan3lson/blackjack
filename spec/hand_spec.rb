require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require_relative "../models/hand.rb"
require "pry"

RSpec.describe Hand do
  let(:hand) { Hand.new }
  let(:deck) { hand.deck }
  let(:cards) { hand.deck.cards }
  let(:player_hand) { hand.player_hand }
  let(:dealer_hand) { hand.dealer_hand }

  describe "#initialize" do
    context "four cards are dealt" do
      it "returns count of two cards given to player" do
        expect(player_hand.count).to eq(2)
      end
      it "returns count of two cards given to dealer" do
        expect(dealer_hand.count).to eq(2)
      end
    end
  end

  describe "#remove_first_four_cards" do
    it "returns a deck of 48 cards" do
      hand.remove_first_four_cards(deck)
      expect(cards.count).to eq(48)
    end
  end

  describe "#score" do
    it "counts score for the first hand" do
      total = 0
      player_hand.each do |card|
        total += card.rank_to_i(card.rank)
        #binding.pry
      end
      expect(hand.score).to eq(total)
    end
  end
end
