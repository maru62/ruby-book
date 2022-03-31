# coding: utf-8
# 存在しないキーはnilが返る
hash1 = {}
p hash1[:fuba]

# Hash.newメソッド
## キーがない場合はtodeskingを返す
hash2 = Hash.new('todesking')
p hash2[:foo]
# キーは指定しなくていいの？難しい

a = hash2[:unko]
b = hash2[:death]

p a
p b

# aとbは同一オブジェクト
p a.equal?(b)
