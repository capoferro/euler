# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

class Integer
  
  def prime?
    (2..Math.sqrt(self).ceil).each do |i|
      return false if self % i == 0
    end
    true
  end

end

target = 10001
i = 1
n = 0
while true
  if i.prime?
    n += 1
    if n == target
      puts i
      break
    end
  end
  i += 1
end
