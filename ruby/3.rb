# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class Integer
  def prime?
    (2..Math.sqrt(self).ceil).each do |i|
      return false if self % i == 0
    end
    true
  end

end


target = 600851475143
n = Math.sqrt(target).ceil
while n > 0
  if target % n == 0 and n.prime?
    puts n
    break
  end
  n -= 1
end
