#   Question: @first_number, @second_number, @answer
#    move into module for question and turn method: self.is_correct?(response)

class Question
  attr_accessor :first, :second

  def initialize()
    # prng = Random.new
    @first =  Random.new.rand(1..21)
    @second = Random.new.rand(1..21)
  end

  def is_correct?(number)
    number == first + second
  end

  def print_question
    puts "What does #{first} plus #{second} equal?"
  end

end
