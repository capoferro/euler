# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class Float

  def floored?
    self.floor == self
  end

end

def product_of_triplet
  c = 1
  while true
    c_squared = c**2
    (c_squared/2).downto(1).each do |b_squared|
      b = Math.sqrt b_squared
      if b.floored?
        a_squared = c_squared - b_squared
        a = Math.sqrt a_squared
        if a.floored? and a + b + c == 1000
          return a*b*c
        end
      end
    end
    c += 1
  end
end

puts product_of_triplet
