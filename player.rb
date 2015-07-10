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
    @myTotal = -1
  end
  
  
  def actionCard
    puts "action? (1:Hit 0:Stand)"
    while 1 do
      myAct = STDIN.gets.to_i
      if myAct==1 || myAct==0 then
        return myAct
      else
        puts "please retype (1or0)"
      end
    end
  end

  def actionBet
    myChip = gunyagunya.chip
    
    if boardBet==0 then
      puts "action? (check[1] or bet[3])"
      while 1 do
        myBet.action = STDIN.gets.to_i
        if myBet.action==1 then
          return myBet.action
        elsif myBet.action==3 then
          if myChip < 20 then
            puts "All in"
            return myBet.action
          else
            return myBet.action
          end
        else
          puts "please retype (1or3)"
        end
      end
    else
      puts "action? (fold[0] , call[2] or raise[3])"
      while 1 do
        myBet.action = STDIN.gets.to_i
        if myBet.action==0 || myBet.action==2 || myBet.action==3 then
          return myBet.action
        else
          puts "please retype (0,2or3)"
        end
      end
    end
  end
  
end
