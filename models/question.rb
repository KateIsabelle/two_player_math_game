class Question
  attr_accessor :question, :answer, :response
  @@operators = { plus: '+', minus: '-' } # times: '*', 'divided by': '/'
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @written_operator = @@operators.keys.sample
    @maths_operator = @@operators[@written_operator]
    @question = "What does #{@num1} #{@written_operator} #{@num2} equal?"
    @answer = @num1.send @maths_operator, @num2
  end

  # def response=(response)
  #   'Seriously? No.' if @answer != @user_input
  #   'YES! You are correct' if @answer == @user_input
  # end
end
