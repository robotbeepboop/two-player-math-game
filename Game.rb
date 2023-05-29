class Game
  def initialize
    @current_player = nil
    @players = []
    @round = 0
  end

  def switch
    if (@current_player === @players[0])
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def game_start
    print "Insert Player 1 name: "
    player1 = Player.new(gets.chomp)
    @players << player1

    print "Insert Player 2 name: "
    player2 = Player.new(gets.chomp)
    @players << player2

    @current_player = @players[rand(0..1)]
    puts "#{@current_player.name} goes first\n"

    def update_round
      @round += 1
    end

    def run_round
      update_round!
      switch!
      question = Question.new
      puts "-----NEW TURN-----"
      print "#{question.display}"
      player_answer = gets.chomp.to_i

      if question.correct?(player_answer)
        puts "#{@current_player.name}: YES! You are correct.\n"
      else
        puts "#{@current_player.name}: Seriously? No!\n"
        @current_player.update_lives
      end
    end

  while (@current_player.lives > 0)
    run_round
  end
   
  def game_over
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "-----GAME OVER-----\n"
    puts "Goodbye!"
  end
end
