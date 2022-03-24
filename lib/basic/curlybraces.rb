nums = [1, 2, 3, 4]
sum = 0

# do ... endブロックの代わりに中括弧が使える
nums.each { |n| sum+= n }
puts sum