#   Question: @first_number, @second_number, @answer
#    move into module for question and turn method: self.is_correct?(response)

class Question
  attr_accessor :first, :second, 

  def initialize()
    @first = rand(1...21)
    @second = rand(1...21)
  end

  self.is_correct?(number)
    number == first + second
  end

  self.print_question
    puts "What does #{first} plus #{second} equal?"
  end

end
