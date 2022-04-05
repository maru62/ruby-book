# 表記の例
:todesking
:Todesking #補正しないで
:der_todesking
:fuba?
:fuba!
:_todesko
:$money
:@todepyon

# 数字とハイフンなどダメな例
=begin
:666
:der-todesking
:der todesking
:()
=end

# シングルクォートで囲むと有効
:'666'
:'der-todesking'
:'der todesking'
:'()'

# ダブルクォートを使うと式展開できる
name = 'Kouhei'
p :"#{name.upcase}"  # !?!?!??

# ハッシュを作成する際に:を後置するとキーがシンボルになる
p hash1 = { 'todesking': 666 }

# %記法でシンボルを作成するときは%s
p %s!der todesking!
p %s(der todesking)

# %iでシンボルの配列が作れる
p %i(fuba todesking yawamuge)

# %Iで改行文字や式展開を認識できる ?
p %I(der\ntodesking #{name.upcase!})

# 文字列とは互換性はない
string = 'todesking'
symbol = :todesking

# 変換メソッド
p string == symbol
# p string + symbol エラー
p string.to_sym
p string.to_sym == symbol
p symbol.to_s
p string == symbol.to_s
p string + symbol.to_s

# respond_toメソッドで文字列とシンボルが両方使える例
## includeメソッドが呼び出せるかどうか文字列かシンボルで調べる
p 'todesking'.respond_to?('include?')
p 'todesking'.respond_to?(:include?)

# 一般的にはどちらかしか扱えないメソッドのほうが多い
## includeは文字列しか受け付けない
p 'todesking'.include?('des')
# p 'todesking'.include?(:des) # エラー
