class Score

  attr_accessor :strake, :spare, :score, :throws_b

  def initialize
    @strake = 0
    @spare = 0
    @score = Array.new
    @throws_b = Array.new
  end

  def score_roll(throws)
    @throws_b << [throws[0], throws[1]]
    @score << (throws[0] + throws[1])
  end

  def bonus
    for i in(0...10)
      #spare
      if(@throws_b[i][0] == 10)
        if(i<9)
          @score[i] += (@throws_b[i+1][0] + @throws_b[i+1][1])
        else
          num=rand(0...11)
          @score[i] += num + rand(0...(11.to_i-num))

        end
      elsif(@throws_b[i][0] + @throws_b[i][1] == 10)
        if(i < 9)
          @score[i] += @throws_b[i+1][0]
        else
          @score[i]+= rand(0...11)
        end
      end
      if(i<9)
        @score[i+1]+=@score[i]
      end        
    end
  end
end
