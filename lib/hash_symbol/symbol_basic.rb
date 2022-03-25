# Railsで頻繁に出てくるあれをようやくやります
p :todesking.class      #   Symbol
p 'todesking'.class     #   String
puts

# 文字列よりも比較が高速、サンプルはとくにありません
# 'todesking' == 'todesking'
# :todesking == :todesking

# 全く同じシンボルは同じオブジェクトである(!??!?)
p :ywmg.object_id
p :ywmg.object_id
p :ywmg.object_id
puts

## 文字列はそれぞれ異なる
### ところでこれ60,80,100とか返ってきて不気味
p 'ywmg'.object_id
p 'ywmg'.object_id
p 'ywmg'.object_id
puts

# 変更可能性について、シンボルは変更不可能
string = 'tobynet'
p string.upcase!    #　'TOBYNET'
symbol = :tobynet
# p symbol.upcase!    #   エラー
puts

# 当たり前だがポインタではない、そもそもポインタのこと忘れた


# シンボルをハッシュのキーにする場合、Railsでいつも見るアレ、文字列より高速
currencies = { :jpn => 'yen', :usa => 'dollar', :eur => 'euro', :ksa => 'riyal', :bra => 'real', :rus => 'ruble' }
p currencies[:ksa]
puts

# 組み込みメソッドもシンボルで管理されている
p 'tobynet'.methods
p :tobynet.methods


