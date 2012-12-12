require 'Card'
class Deck
  
  def initialize()
    @cards = Array.new
    for i in 0..3
      for j in 0..12
        @cards.push(Card.new(i, j))
      end
    end
  end
  
  def getDeck()
    return @cards
  end
  
  def nextCard()
    return @cards.pop
  end
  
end
=begin
deck = Deck.new
deckCards = deck.getDeck()
for i in 0..51
  puts deckCards[i].getRank(), deckCards[i].getSuit()
=end
