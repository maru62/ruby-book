dimensions = [
    [10, 20],
    [30, 40],
    [50, 60],
]

areas = []

=begin
# 上の二次元配列に繰り返し処理を求めると

dimensions.each do |dim|
    length = dim[0]
    width = dim[1]
    areas << length * width     #   配列なので代入ではない（たぶん）
end
=end

=begin
# ブロック引数を二次元にしてみる

dimensions.each do |length, width|
    areas << length * width
end

puts areas
=end

# eachメソッドを併用したいときの例、ブロック変数を括弧してネストする
dimensions.each_with_index do |(length, width), i|
    areas << length * width
end

puts areas
