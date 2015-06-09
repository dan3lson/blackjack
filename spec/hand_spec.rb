require_relative "../models/card.rb"
require_relative "../models/deck.rb"
require_relative "../models/hand.rb"
require "pry"

RSpec.describe Hand do
  let(:hand) { Hand.new }

  describe "#initialize" do
    it "returns an empty array for the future card ranks" do
      expect(hand.current_ranks).to eq([])
    end
  end

end
