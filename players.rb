class Player
  attr_reader :name, :health
  def initialize(name)
    @name = name
    @health = 3
  end

  def reduce_health
    @health -= 1
  end

  def loses
    @health == 0
  end

  def next_question
    new_question = Question.new
    new_question.question(name)
    print '> '
    @userchoice = $stdin.gets.chomp
    if new_question.answer?(@userchoice.to_i)
      puts "Yuppers, you're are correct."
    else
      puts "Oh my Gosh what? That's a nooooo scotty!"
      reduce_health
    end
  end
end