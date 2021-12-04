# frozen_string_literal: true

# BowlingGame initialize
class BowlingGame
  attr_accessor :rolls

  # Metodos
  def initialize
    @rolls = []
  end

  # - Turno
  # - Tiros
  def roll(pins)
    @rolls.push pins
  end

  # - Puntuacion
  def score

    old_score = 0
    new_score = 0

    result = 0
    throws = 0

    # ciclo para los turnos
    10.times do
      old_score += new_score
      # ciclo para los tiros
      2.times do
        new_score += @rolls[throws]
        throws += 1
        new_score += old_score
      end
      throws = 0
    end
  end

  # - Bonos
  # def bonus
  # end
end
