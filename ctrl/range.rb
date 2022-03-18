range_incl = 1..8
range_excl = 1...8
nums = [1, 2, 3, 4, 5, 6, 7, 8]

puts range_incl.include?(0)
puts range_incl.include?(1)
puts range_incl.include?(7.9)
puts range_incl.include?(8)
puts range_incl.include?(9)

puts range_excl.include?(0)
puts range_excl.include?(1)
puts range_excl.include?(7.9)
puts range_excl.include?(8)
puts range_excl.include?(9)

puts nums[3..6]
puts nums[3...6]