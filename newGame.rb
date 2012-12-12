require 'Deck'
require 'Card'

class NewGame
    
  def newGame()
    deck = Deck.new()
    @shuffledDeck = deck.getDeck()
    @shuffledDeck.shuffle!()
      
  end
  
  def getShuffledDeck()
    return @shuffledDeck
  end
  
end

game = NewGame.new()
game.newGame()
deck = game.getShuffledDeck()
