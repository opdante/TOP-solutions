system("cls")
puts "                      MasterMind Game"
puts "In this game, you can choose to be the Code-Maker or the Guesser."
puts "The Code-Maker will choose 4 color-balls from 6 colors as the covered secret code."
puts "The colors could be duplicated. And the guesser gets 12 tries to decode."
puts "After each guess, the Code-Maker will give the answer upon how well the guess is."
puts "Please choose [ 1 or 2 ] :"
puts "1: The guesser\n2: The Code-Maker "
game_style = gets.chomp
until game_style == "1" || game_style == "2"
  "Incorrect answer. Please input 1 or 2 "
  game_style = gets.chomp
end
if game_style == "1"
  require_relative 'human'
  computer = HumanGuess::ComputerPlayer.new
  computer.human_guess_game
elsif game_style == "2"
  require_relative 'computer'
  game = ComputerGuess::ComputerPlayer.new
  game.computer_guess
end
