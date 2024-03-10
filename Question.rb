require_relative 'Player'
require_relative 'Question'

class MathGame
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def play
    while game_ongoing?
      puts "----- New Turn -----"
      question = generate_question
      puts "#{current_player.name}, what is #{question.generate_question}?"
      current_player.answer_question(question.generate_question)
      switch_turn
    end

    announce_winner
  end

  private

  attr_reader :current_player

  def generate_question
    Question.new
  end

  def switch_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_ongoing?
    @player1.lives > 0 && @player2.lives > 0
  end

  def announce_winner
    if @player1.lives == 0
      puts "Player 2 wins! Final scores:"
    else
      puts "Player 1 wins! Final scores:"
    end

    @player1.display_score
    @player2.display_score
  end
end

