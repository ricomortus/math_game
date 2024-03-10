class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def answer_question(question)
    puts question
    player_answer = gets.chomp.to_i
    
    if player_answer == eval(question)
      @score += 1
      puts 'Correct!'
    else
      lose_life
    end
  end

  def lose_life
    @lives -= 1
    puts 'Incorrect!'
  end

  def display_score
    puts "#{@name}: score = #{@score}, lives = #{@lives}"
  end

end

player_1 = Player.new('Player 1')

player_1.answer_question('7 + 2')
player_1.display_score

