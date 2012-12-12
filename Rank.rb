class Rank
  
  @@rank = ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King", "Ace"]
   
  def getRank(rank)
    return @@rank[rank]
  end
  
end
