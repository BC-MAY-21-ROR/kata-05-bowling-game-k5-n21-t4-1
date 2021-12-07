# frozen_string_literal: true

# require_relative 'rspec'
require_relative '../src/score'

describe 'Score equal 10' do
  before do
    @score = Score.new
  end

  it('verifies that the score sum the throws') do
    
    expect(@score.score_roll([8,2])).to eq [10]
  end
end