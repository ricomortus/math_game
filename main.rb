require_relative 'Player'
require_relative 'Question'
require_relative 'MathGame'

# Create players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# Create the math game
game = MathGame.new(player1, player2)

# Start the game
game.play