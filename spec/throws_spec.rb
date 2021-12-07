# frozen_string_literal: true

# require_relative 'rspec'
require_relative '../src/throws'

describe 'Bowling Game Process' do
  before do
    @throw = Throws.new
  end

  it('can roll all ones') do
    10.times do |i|
      @data = @throw.throwing
      print @data
      puts
      print @data[i]
      expect((0...10).include?(@data[i])).to eq true
    end
  end
end
