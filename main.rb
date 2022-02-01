require_relative "player"
require_relative "question"
require_relative "game"


print "Enter the name of the first player:"
player1 = gets.chomp
print "Enter the name of the second player:"
player2 = gets.chomp
game = Game.new(player1,player2);
loop do  
  puts "----- NEW TURN -----"
  print"#{game.current_player.name}:"
  question = Question.new
  question.print_question
  answer = gets.chomp.to_i
  question.is_correct?(answer) ? game.current_player.lives_count += 0 : game.current_player.lives_count -= 1
  if game.current_player.is_dead?
    game.prepare_for_next_question
    puts "#{game.current_player.name} wins with a score of #{game.current_player.lives_count}/#{Player::LIVES}"
    break
  else
    game.prepare_for_next_question
    game.print_status
  end
end
