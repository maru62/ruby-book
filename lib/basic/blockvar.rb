nums = [1, 2, 3, 4]
sum1 = 0
sum2 = 0
sum3 = 0

nums.each do |n|
    sum1 += n
end
puts sum1

nums.each do
    sum2 += 1
end
puts sum2

=begin ♯ これはダメ
nums.each do
    sum3 += nums.each
end
puts sum3
=end