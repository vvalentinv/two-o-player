#   Player:Contains @player_name @life_count
#      self.existing_player?(name), 

class Player
  LIVES = 3
  attr_accessor :name, :lives_count 

  def initialize(name)
    @name = name
    @lives_count = LIVES
  end

  def is_dead?
    lives_count == 0
  end
end
