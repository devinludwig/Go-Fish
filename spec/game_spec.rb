require('rspec')
require('game')
require('player')
require('pry')

describe('Game') do
  # before() do
  #   Game.clear()
  # end

  describe('create_deck') do
    it('fills the game deck with 52 cards') do
      test_game = Game.new()
      test_game.create_deck()
      expect(test_game.deck().length()).to(eq(52))
    end
  end
end
