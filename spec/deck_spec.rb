require_relative "../models/deck.rb"
require_relative "../models/card.rb"
require "pry"

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do
    context "deck has 52 playing cards" do
      it "returns a count of 52" do
        expect(deck.cards.count).to eq(52)
      end
    end
  end

  describe "#make_card_set(suit)" do
    context "deck has 13 cards of given suit" do
      it "returns 13 cards of ♦" do
        diamond_cards = [
          Card.new("A", "♦"),
          Card.new("2", "♦"),
          Card.new("3", "♦"),
          Card.new("4", "♦"),
          Card.new("5", "♦"),
          Card.new("6", "♦"),
          Card.new("7", "♦"),
          Card.new("8", "♦"),
          Card.new("9", "♦"),
          Card.new("10", "♦"),
          Card.new("J", "♦"),
          Card.new("Q", "♦"),
          Card.new("K", "♦")
        ]
        expect(Deck.make_card_set("♦").count).to eq(diamond_cards.count)
      end
      it "returns 13 cards of ♣" do
        clover_cards = [
          Card.new("A", "♣"),
          Card.new("2", "♣"),
          Card.new("3", "♣"),
          Card.new("4", "♣"),
          Card.new("5", "♣"),
          Card.new("6", "♣"),
          Card.new("7", "♣"),
          Card.new("8", "♣"),
          Card.new("9", "♣"),
          Card.new("10", "♣"),
          Card.new("J", "♣"),
          Card.new("Q", "♣"),
          Card.new("K", "♣")
        ]
        expect(Deck.make_card_set("♣").count).to eq(clover_cards.count)
      end
      it "returns 13 cards of ♦" do
        spade_cards = [
          Card.new("A", "♠"),
          Card.new("2", "♠"),
          Card.new("3", "♠"),
          Card.new("4", "♠"),
          Card.new("5", "♠"),
          Card.new("6", "♠"),
          Card.new("7", "♠"),
          Card.new("8", "♠"),
          Card.new("9", "♠"),
          Card.new("10", "♠"),
          Card.new("J", "♠"),
          Card.new("Q", "♠"),
          Card.new("K", "♠")
        ]
        expect(Deck.make_card_set("♠").count).to eq(spade_cards.count)
      end
      it "returns 13 cards of ♦" do
        heart_cards = [
          Card.new("A", "♥"),
          Card.new("2", "♥"),
          Card.new("3", "♥"),
          Card.new("4", "♥"),
          Card.new("5", "♥"),
          Card.new("6", "♥"),
          Card.new("7", "♥"),
          Card.new("8", "♥"),
          Card.new("9", "♥"),
          Card.new("10", "♥"),
          Card.new("J", "♥"),
          Card.new("Q", "♥"),
          Card.new("K", "♥")
        ]
        expect(Deck.make_card_set("♥").count).to eq(heart_cards.count)
      end
    end
  end

  describe "#make_cards" do
    context "deck has four suit sets of 13 each" do
      it "returns 52 cards" do
        expect(Deck.make_cards("♦", "♣", "♠", "♥").count).to eq(deck.cards.count)
      end
    end
    context "deck is in random order" do
      it "returns 52 shuffled cards" do
        deck_ranks = [
          deck.cards[0].rank,
          deck.cards[1].rank,
          deck.cards[2].rank,
          deck.cards[3].rank,
          deck.cards[4].rank,
          deck.cards[5].rank,
          deck.cards[6].rank,
          deck.cards[7].rank,
          deck.cards[8].rank,
          deck.cards[9].rank,
          deck.cards[10].rank,
          deck.cards[11].rank,
          deck.cards[12].rank
        ]
        ordered_ranks = %w(1 2 3 4 5 6 7 8 9 10 J Q K)
        expect(deck_ranks.sort!).not_to eq(ordered_ranks)
      end
    end
  end
end
