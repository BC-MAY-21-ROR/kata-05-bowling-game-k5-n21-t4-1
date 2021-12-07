require_relative 'throws'
require_relative 'score'

class Roll

  def initialize
    @throws = Throws.new
    @score = Score.new
  end

  def play_roll
    10.times do
      @score.score_roll(@throws.throwing)
    end
    @score.bonus
    
    puts "LANZAMIENTOS: "
    print @score.throws_b
    
    puts
    puts "PUNTOS: "
    print @score.score
    
  end
end