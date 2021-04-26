class Question
  attr_accessor :question, :answer, :response, :success
  
  @@operators = { plus: '+', minus: '-' } # times: '*', 'divided by': '/'

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @written_operator = @@operators.keys.sample
    @maths_operator = @@operators[@written_operator]
    @question = "What does #{@num1} #{@written_operator} #{@num2} equal?"
    @answer = @num1.send @maths_operator, @num2
  end

  def answer_checker(user_input)
    correct = "YES! You are correct"
    wrong = "Seriously? No"
    # update value of success with boolean
    @success = user_input == self.answer
    # return a response string 
    @response = @success ? correct : wrong 
  end
end
