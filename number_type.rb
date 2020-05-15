# frozen_string_literal: true

# class to find type of a number
class NumberType
  def self.odd?(num)
    # num % 2 != 0 # commented due to rubocop warning Style/EvenOdd
    num.odd?
  end

  def self.even?(num)
    # num % 2 == 0 # commented due to rubocop warning Style/EvenOdd
    num.even?
  end
end

# p NumberType.odd?(ARGV[0].to_i)
