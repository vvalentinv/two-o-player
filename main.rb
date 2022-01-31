require_relative "player"
require_relative "question"
require_relative "gane"

print "Enter the name of the first player:"
player1 = gets.chomp
print "Enter the name of the second player:"
player2 = gets.chomp

game = Game.new(player1,player2);
game.run_game
