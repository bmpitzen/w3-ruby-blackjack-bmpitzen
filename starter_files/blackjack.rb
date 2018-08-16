puts "TODO Implement the game of blackjack."

require_relative 'card'
require_relative 'deck'


class BlackjackGame

  def initialize
    deck = Deck.new
    deck.shuffle
    
  end

end




# def hand
#   while true
#     puts "Would you like to play? (y)es or (n)o?"
#     answer = gets.chomp.downcase
#     if answer[0] == "y"
#     return true
#       print "Please enter (f)ronthand or (b)ackhand: "
#       hand_choice = gets.chomp.downcase
#       if hand_choice[0] == "f"
#         puts "FRONTHAND!"
#       elsif hand_choice[0] == "b"
#         puts "BACKHAND!"
#       end
#     elsif answer[0] == "n"  
#       return false
#     end
#   end
# end




# def get_yes_or_no
#   # loop until you get a good answer and return
#   while true
#     print "Please enter (y)es or (n)o: "
#     answer = gets.chomp.downcase
#     if answer[0] == "y"
#       return true
#     elsif answer[0] == "n"
#       return false
#     end
#     puts "That is not a valid answer!"
#   end
# end