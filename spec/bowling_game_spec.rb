# frozen_string_literal: true

# require_relative 'rspec'
require_relative '../src/bowling_game'

describe 'Bowling Game Process' do
  before do
    @game = BowlingGame.new
  end

  it('can roll all ones') do
    20.times { @game.roll 1 }
    expect(@game.score).to eq 10
  end
end
