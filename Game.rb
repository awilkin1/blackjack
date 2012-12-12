class Game
  
  def deal()
    for i in 0..3
      @@players[i].newHand(@@deck.nextCard(), @@deck.nextCard())
    end
      @@dealer.newHand(@@deck.nextCard(), @@deck.nextCard())      
  end
  
  
  def checkSum(player)
    if player.getHand().getSum() > 21
        player.bust()
        @@playersRemaining = playersRemaining - 1
    end
  end
  
  
  def turn(player)
    if hit
      player.newCard(@@deck.nextCard())
      checkSum(player)
        
    elsif stand
      @@playersRemaining = @@playersRemaining - 1 
      
    elsif doubleDown
      player.setBet(player.getBet() * 2)
      player.newCard(@@deck.nextCard())
      checkSum(player)
      
    elsif split
      player.newHand(player.getHand.getCard(0), @@deck.nextCard())
      player.newHand(player.getHand.getCard(0), @@deck.nextCard())
      
    else    
      player.setBet(player.getBet() / 2)
      @@playersRemaining = playersRemaining - 1
    end
      
  end
  
  
  def isRoundOver()
    if @@playersRemaining == 0
      return true
    elsif
       @@dealer.isOut() == true
      return true
    else
      return false 
    end    
  end
  
  
  def main()
    @@players = [Player.new(), Player.new(), Player.new(), Player.new()]
    @@playersRemaining = 4
    @@deck = Deck.new()
    @@dealer = Dealer.new()
    for i in 0..3
      bet(@@players[i])
    end
      
    while !isRoundOver()
      for i in 0..3
        turn(@@players[i])
      end
      end
    
    if @@dealer.isOut()
      for i in 0..3
        if !@@players[i].isOut()
          @@players[i].win()
          end
      end
    else      
        for i in 0..3
          if (!@@players[i].isOut() && @@players[i].getHand().getSum() > @@dealer.getHand().getSum())
            @@players[i].win()
            end
        end
     end

     end
  
end
