class Question
  attr_accessor :question, :answer, :response

  def initialize
    @num1 = rand(100)
    @num2 = rand(100)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end

  def response=(response)
    'Seriously? No.' if @answer != @user_input
    'YES! You are correct' if @answer == @user_input
  end
end
