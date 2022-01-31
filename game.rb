#               @turn_count @current_player
#     Contains a while loop that creates a new turn where
#     user input is atributed to only one of the players
#     on an if-else for odd/even question numbers

class Game
  attr_accessor :turn_count, :current_player, :players

  def initialize(player1, player2)
    @players = []
    @players << player1 = Player.new(player1)
    @players << player2 = Player.new(player2)
    @current_player = players[0]
    @turn_count = 1
    @winner = nil
  end

  self.print_status
    puts "#{players[0].name}: #{players[0].life_count}/#{Player.LIVES} vs 
      #{players[1].name}: #{players[1].lives_count}/#{Player.LIVES}"
  end

  self.run_game
    loop do  
      puts "----- NEW TURN -----"
      print"#{current_player.name}:"
      question = Question.new
      question.print_question
      answer = gets.chomp.to_a
      if current_player.is_dead?
        ready_for_next_question && puts "#{current_player.name} wins with a score of #{current_player.lives_count}/#{Player.LIVES}"
        break
      elsif answer.is_correct?
        ready_for_next_question
        print_status
      else
        current_player.lives_count -= 1
        ready_for_next_question
        print_status
      end
  end

  private
  def prepare_for_next_question
    turn_count +=1
    turn_count % 2 == 0 ? current_player = players[1] : current_player = players[0]; 
  end

end
