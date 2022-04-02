# coding: utf-8
# 存在しないキーはnilが返る
hash1 = {}
p hash1[:fuba]

# Hash.newメソッド

### そもそもキーのないハッシュという意味不明な物体をどう扱うのか！！？？！

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
hash3 = Hash.new { 'yawamuge' }
value3 = hash3[:unko]
value4 = hash3[:death]
p value3
p value4

# これはこんどは違うオブジェクトになる、ブロック実行が挟まれるため
p value3.equal?(value4)

# なので片方を破壊的変更してももう片方は不変
p value3.upcase!
p value4

# ハッシュは空のまま
p hash3

## キーと初期値を同時に設定する（普通はそうしてくれ）
# Hash.newメソッドにブロックを与える
hash4 = Hash.new { |hash, key| hash[key] = 'der todesking' }
p hash4[:gyoe]
p hash4[:abo]

# ハッシュは空ではない
p hash4
