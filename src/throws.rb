class Throws 

  attr_accessor :random

  def initialize
    @random = []
  end
  
  def throwing
    @random[0] = num_rand(0)
    @random[1] = num_rand(random[0])

    @random
  end
  
  def num_rand (val)
    rand = rand(0...(11.to_i - val.to_i))
    rand
  end
end