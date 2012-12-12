require 'Hand'
class Dealer
  
  def initialize(card1, card2)
      @playerName = "Dealer"
      @playerHand = Hand.new(card1,card2)
      @cardSum = @playerHand.getSum() 
  end
  
  def getCardSum()
    return @cardSum
  end
  
  def makeMove()
    if(@cardSum >= 17)
      #stay
    elsif(@cardSum < 17)
      @playerHand.addCard()
    end
  end
  
end