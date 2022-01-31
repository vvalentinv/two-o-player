# Classes: Game, Player, Question, Turn
# Roles
#   Game: 
#               @turn_count @current_player
#     Contains a while loop that creates a new turn where
#     user input is atributed to only one of the players
#     on an if-else for odd/even question numbers

#   Player:Contains @player_id  @player_name @life_count
#       @leaderboard_score @@payers_count
#      self.existing_player?(name), 
#       private: update_leaderboard_score 
#   Question: @first_number, @second_number, @answer
#    move into module for question and turn method: self.is_correct?(response)
#   to remove  Turn:
