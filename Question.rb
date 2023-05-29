class Question
  attr_reader :answer
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def display
    "What does #{@number1} plus #{@number2} equal?\n"
  end

  def correct?(player_guess)
    player_guess == @answer
  end
end
