class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?(rank)
    %w(J Q K).include?(rank.upcase)
  end

  def ace?
    rank == "A"
  end

  def rank_to_i(rank)
    rank.to_i
  end
end
