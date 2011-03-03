# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

class Integer

  def prime?
    return false if self == 1
    return true if self == 2
    (2..Math.sqrt(self).ceil).each do |i|
      return false if self % i == 0
    end
    true
  end

end

puts (1..2000000).select(&:prime?).inject(&:+)

