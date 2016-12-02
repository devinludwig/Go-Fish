require('player')
require('pry')

class Game
  attr_reader(:deck)

  def initialize
    @deck = []
  end

  def create_deck
    suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
    ranks = ['Ace', '2', '3','4','5','6','7','8','9','10','Jack','Queen','King']
    suits.each() do |suit|
      ranks.each() do |rank|
        @deck.push(rank + ' of ' + suit)
      end
    end
    @deck.shuffle!()
  end
end
