require_relative "../models/card.rb"
require "pry"

RSpec.describe Card do

  let(:card) { Card.new(rank, "diamonds") }
  let(:rank) { "3" }

  describe "#initialize" do

    context "card has a rank" do
      it "returns 3" do
        expect(card.rank).to eq("3")
      end
    end

    context "a card has a suit" do
      it "returns diamonds" do
        expect(card.suit).to eq("diamonds")
      end
    end

  end

  describe "#face_card" do
    context "card is a Jack" do
      let(:rank) { "J" }
      it "returns true if card has a 'J' rank" do
        expect(card.face_card?(rank)).to eq(true)
      end
    end

    context "card is a Queen" do
      let(:rank) { "Q" }
      it "returns true if card has a 'Q' rank" do
        expect(card.face_card?(rank)).to eq(true)
      end
    end

    context "card is a King" do
      let(:rank) { "K" }
      it "returns true if card has a 'K' rank" do
        expect(card.face_card?(rank)).to eq(true)
      end
    end

    context "card is not a Jack" do
      let(:rank) { "4" }
      it "returns false if card doesn\'t have a 'J' rank" do
        expect(card.face_card?(rank)).to eq(false)
      end
    end

    context "card is not a Queen" do
      let(:rank) { "3" }
      it "returns false if card doesn\'t have a 'Q' rank" do
        expect(card.face_card?(rank)).to eq(false)
      end
    end

    context "card is not a King" do
      let(:rank) { "11" }
      it "returns false if card doesn\'t have a 'K' rank" do
        expect(card.face_card?(rank)).to eq(false)
      end
    end
  end

  describe "#ace?" do
    context "card is an Ace" do
      let(:rank) { "A" }
      it "returns true if card has an 'A' rank" do
        expect(card.ace?).to eq(true)
      end
    end

    context "card is not an Ace" do
      let(:rank) { "K" }
      it "returns false if card doesn\'t have an 'A' rank" do
        expect(card.ace?).to eq(false)
      end
    end
  end

  describe "#rank_to_i" do
    it "returns the rank as an integer" do
      expect(card.rank_to_i(rank).class).to eq(Fixnum)
    end
  end
end
