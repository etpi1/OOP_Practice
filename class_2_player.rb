class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end
  
  def start
    puts "What's your name Player 1?"
    @player1.name = gets.chomp
    puts "What's your name Player 2?"
    @player2.name = gets.chomp
  end

  def generate_questions
  # Generate questions
  end
  
  def verify_answer
    if @correct_answer == @answer
      @current_player.points += 1
      p "Your score is now #{@current_player[:points]}"
    else 
      @current_player.life -= 1
      p "Your life is now #{@current_player[:life]}. #{@player1[:name]}, #{@player1[:points]} : #{@player2[:name]}, #{@player2[:points]}"
    end
  end

  def change_turn
    if @current_player == @players1
      @current_player = @players2
    else
      @current_player = @players1 
    end
  end

  def play
    start
    until (@players1.lives==0 || @players2.lives==0) do
    generate_question
    verify_answer
    change_turn
    end
  end
  
end

