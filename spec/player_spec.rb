require('rspec')
require('game')
require('player')
require('pry')

describe('Player') do
  # before() do
  #   Game.clear()
  # end

  describe('#deal') do
    it('puts seven cards in player hand') do
      test_game = Game.new()
      test_game.create_deck()
      player1 = Player.new({:name => 'Devin'})
      player1.deal(test_game.deck())
      expect(player1.hand().length()).to(eq(7))
    end
  end
end
