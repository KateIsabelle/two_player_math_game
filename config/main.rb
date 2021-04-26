require './models/game.rb'
require './models/player.rb'
require './models/question.rb'

game = Game.new

while game.player1.lives && game.player2.lives > 0 do
  puts "--- NEW TURN ---"
  #create new question for each turn
  question = Question.new
  puts "Player #{game.current_player}: #{question.question}"
  user_input = gets.chomp.to_i

  correct = "YES! You are correct"
  wrong = "Seriously? No"
  #if user input matches answer, output 'correct' message, else output 'wrong' message
  response = user_input == question.answer ? correct : wrong 
  puts response

  #get current player object (player1 or player2)
  current_player = game.current_player == game.player1.id ? game.player1 : game.player2
  
  #update current player's lives if their response is wrong
  current_player.update_lives if response == wrong
  
  puts "P1: #{game.player1.lives}/3 vs P2: #{game.player2.lives}/3"

  #if current player loses all lives, display other player's win and their score
  not_current_player = game.current_player == game.player1.id ? game.player2 : game.player1
  if current_player.lives == 0
    puts "Player #{not_current_player.id} wins with a score of #{not_current_player.lives}/3" 
    puts "--- GAME OVER ---"
    puts "Good bye!"
  end
  #switch player before continuing while loop
  game.switch_player(game.current_player == 1 ? 2 : 1)
end







