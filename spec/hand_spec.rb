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
    it "returns an empty array of hashes for future cards" do
      expect(hand.current_hand).to eq([{}])
    end
  end

  describe "#score" do
    xit "counts score for the current hand" do
      expect().to eq()
    end
  end
end
