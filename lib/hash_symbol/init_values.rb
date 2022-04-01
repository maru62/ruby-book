# coding: utf-8
# 存在しないキーはnilが返る
hash1 = {}
p hash1[:fuba]

# Hash.newメソッド
## キーがない場合はtodeskingを返す
hash2 = Hash.new('todesking')
p hash2[:foo]
# キーは指定しなくていいの？難しい

value1 = hash2[:unko]
value2 = hash2[:death]

p value1
p value2

# aとbは同一オブジェクトの異なる参照にすぎない
p value1.equal?(value2)

# なので片方に破壊的変更をするともう片方も変わる
value1.upcase!
# 書いてから思ったけどここから下だけ変わるんだ
p value1
p value2 

# ハッシュ自体は空、！！？！？
p hash2

# ブロックを噛ませたほうがよい
hash3 
