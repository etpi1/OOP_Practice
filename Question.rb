class Question
  attr_reader :num1, :num2
  
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def correct_answer
    @num1 + @num2
  end
end

