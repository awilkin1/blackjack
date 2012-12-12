require 'Suit'
require 'Rank'
class Card

  def initialize(suit, rank)
    @suit = Suit.new().getSuit(suit)
    @rank = Rank.new().getRank(rank)
    @faceUp = true
  end
  
  
  def getSuit()
    return @suit
  end


  def getRank()
    return @rank
  end
  
  
  def setFaceUp(faceUp)
    @faceUp = faceUp
  end
  
  
  def getFaceUp()
    return @faceUp
  end
  
  
end
