array = [1, 2, 3, 4, 5, 6, 7, 8]
# 配列の奇数番目要素を削除する
array.delete_if do |n|
    n.odd?
end
puts array