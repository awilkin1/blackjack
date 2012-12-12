require 'Card'
class Hand
   
  def initialize(card1, card2)
    @cards = [card1, card2]
    @sum = 0
    @sum = getValue(card1) + getValue(card2)
  end
  
  def addCard(card)
    @cards.push(card)
    @sum = @sum + getValue(card)
  end
    
  
  def getSum()
    return @sum
  end
  
  
  def getCard(position)
    return @cards[position]
  end
  
  def getValue(card)
   if(card.getRank() == ("Ace"))
     if(@sum <= 21)
       return 11
     else
      return 1
     end
   elsif (card.getRank() == "Two")
      return 2  
   elsif(card.getRank() == "Three")
      return 3
   elsif(card.getRank() == "Four")
      return 4
   elsif(card.getRank() == "Five")    
      return 5
   elsif(card.getRank() == "Six")
      return 6
   elsif(card.getRank() == "Seven")
      return 7
   elsif(card.getRank() == "Eight")
      return 8
   elsif(card.getRank() == "Nine")
      return 9
   else 
      return 10
  end
  
  end
end

=begin
card1 = Card.new(3, 12)
card2 = Card.new(1, 10)
hand = Hand.new(card1,card2)
puts hand.getSum()
=end
