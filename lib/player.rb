class Player
  attr_reader(:hand, :name)

  def initialize(attributes)
    @hand = []
    @name = attributes.fetch(:name)
  end

  def deal(deck)
    @hand = deck.slice(0..6)
  end
end
