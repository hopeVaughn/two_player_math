class Game
  def initialize(name)
    @name = name
    @player_one = Player.new('Player One')
    @player_two = Player.new('Player Two')
  end

  def begin
    puts "New Game Started. Welcome #{@player_one.name} and #{@player_two.name}"
    next_turn
  end

  def player_stats
    puts "P1: #{@player_one.health}/3 vs P2: #{@player_two.health}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.health}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def player_score
    if @player_one.loses
      winner(@player_two)
    elsif @player_two.loses
      winner(@player_one)
    end
  end

  def next_turn
    @player_one.next_question
    player_score
    @player_two.next_question
    player_score
    player_stats
    puts '---------NEW-TURN---------'
    next_turn
  end
end