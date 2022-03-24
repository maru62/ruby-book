num1 = [1, 2, 3, 4, 5, 6, 7, 8]

print num1[3, 3]                      # [4, 5, 6]
puts
print num1.values_at(0, 2, 4, 6)      # [1, 3, 5, 7]
puts
# 配列の最後を取得する
puts num1[num1.size - 1]              # 8
# 同上
puts num1[-1]                        # 8
# 末尾から引いて二つ表示する
puts num1[-4, 2]                     # 7
# 末尾を表示するメソッド
puts num1.last                       # 8

## 配列要素の変更
# 最後を置き換える
num1[-1] = 100
=begin
# 二つ目から三つぶんを置き換える !?!?
num1[1, 3] = 666
=end

# pushメソッド
num3 = []
a.push(1)                           # [1]
a.push(2, 3)                        # [1, 2 ,3]
a.delete(3)                         # [1, 2]

num2 = [9, 10, 11, 12]

# 非破壊的な連結、推奨
print num1 + num2