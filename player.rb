# coding: utf-8
# player.rb
#
#

class Player
  def initialize
    @myHand = []
    @opponentHand = []
    for i in 0..9 do
      @myHand[i] = -1
      @opponentHand[i] = -1
    end
    @myChip = 0
    @myTotal = -1
    @boardBet = 0
    @myAct.action = 0
    @myAct.betChip = 0
  end
  
  
  def actionCard
    puts "action? (1:Hit 0:Stand)"
    while 1 do
      myAct = STDIN.gets
      if myAct.to_i==1 || myAct.to_i==0 then
        return myAct.to_i
      else
        puts "please retype (1or0)"
      end
    end
  end

  def actionBet
    @myChip = gunyagunya.chip
    
    if boardBet.to_i==0 then
      puts "action? (check[1] or bet[3])"
      while 1 do
        myBet = STDIN.gets
        if myBet.to_i==1 then
          return myBet.to_i
        elsif myBet.to_i==3 then
          if @myChip < 20 then
            puts "All in"
            return myBet.to_i
          else
            return myBet.to_i
          end
        else
          puts "please retype (1or3)"
        end
      end
    else
      puts "action? (fold[0] , call[2] or raise[3])"
      while 1 do
        myBet = STDIN.gets
        if myBet.to_i==0 || myBet.to_i==2 || myBet.to_i==3 then
          return myBet.to_i
        else
          puts "please retype (0,2or3)"
        end
      end
    end
  end
  
end
