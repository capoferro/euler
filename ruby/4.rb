# A palindromic number reads the same both ways. The largest
# palindrome made from the product of two 2-digit numbers is 9009 = 91
# 99.

# Find the largest palindrome made from the product of two 3-digit
# numbers.

class Integer

  def palindrome?
    str = self.to_s
    size = str.size
    (size/2).floor.times do |i|
      return false if str[i] != str[size-1-i]
    end
    true
  end
  
end

max = -1
999.downto(99) do |i|
  i.downto(99) do |k|  
    product = k*i
    max = product if product.palindrome? and product > max
  end
end

puts max
