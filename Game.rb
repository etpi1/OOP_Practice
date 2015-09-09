class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def generate_questions
  # Generate questions
    num1 = rand(20)
    num2 = rand(20)
    Question.new(num1, num2)
  end
  
  def verify_answer(some_question, some_answer)
    if some_question.correct_answer == some_answer
      @current_player.gain_point
      p "Your score is now #{@current_player.points}"
    else
      @current_player.lose_life
      p "Your life is now #{@current_player.lives}. #{@player1.name}, #{@player1.points} : #{@player2.name}, #{@player2.points}"
    end
  end
  def asking_questions
    current_question = generate_questions
    puts "#{@current_player.name}, what is the the answer for #{current_question.num1} + #{current_question.num2}?"
    answers = gets.chomp.to_i
    verify_answer(current_question, answers)
  end


  def change_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1 
    end
  end
  
  def play
    until (@player1.lives==0 || @player2.lives==0) do
    asking_questions
    change_turn
    end
  end  
end