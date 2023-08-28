# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_accessor :min, :max
  attr_reader :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    array = [*(min..max)]
    mid = array[((max - min) / 2).floor]
  end

  def game_over?
    guess == answer
  end

  def update_range
    guess < answer ? @min = guess + 1 : @max = guess - 1
  end
end
