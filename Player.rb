class Player
  $chipAmount = 0
  $playerHand = Array.new
  $betAmount = 0
  $numHands = 1
  def hand
     $playerHand.push "Ace", "Spades" 
  end
  def bet(num)
    if num < 0
    elsif num < chipAmount
    else
      $chipAmount = $chipAmount - num
      $betAmount = $betAmount + num  
    end
  end
  def win(num)
    $chipAmount = $chipAmount + num
  end
  
end

run = Player.new
run.hand
puts $playerHand

