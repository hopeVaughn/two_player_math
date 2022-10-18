class Question
  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @sum = @first_num + @second_num
  end

  def question(name)
    puts "#{name}: What does #{@first_num} plus #{@second_num} equal?"
  end

  def answer?(input)
    @sum == input
  end
end