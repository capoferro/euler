# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all
# of the numbers from 1 to 20?

i = 40
while true
  divisible = true
  20.downto(11).each { |k| divisible = false unless i % k == 0 }
  if divisible
    puts i
    break
  end
  i += 10
end

# This one could use a touch of optimization. :)

# real	0m59.624s
# user	0m58.688s
# sys	0m0.044s
