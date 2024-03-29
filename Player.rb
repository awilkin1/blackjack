require 'Hand'
class Player
  def initialize(playerName, chipAmount, card1, card2)
      @chipAmount = chipAmount
      @betAmount = 0
      @playerName = playerName
      @playerHand = Hand.new(card1,card2)
      @cardSum = @playerHand.getSum()   
  end
  
  def getPlayerName()
    return @playerName
  end
    
  def getPlayerHand
    return @playerHand
  end
  
  def makeBet(num)
    if num < 0
    elsif num > chipAmount
    else
      @chipAmount = @chipAmount - num
      @betAmount = @betAmount + num
    end
  end
  
  def getBet()
    return @betAmount
  end
  
  def win(num)
    @chipAmount = @chipAmount + num
  end
  
end
