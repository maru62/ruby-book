# coding: utf-8
# 疑似コードなので実行できない
=begin

# 引数のハッシュにダラダラいろいろついてきたときに必要なもの以外を捨てる
def buy_burger(menu, drink: true, potato: true, **others)
    ......
end

buy_burger('fish', drink: true, potato: false, salad:true, chicken: false)
# salad以降が無視される

=end


# キーワード引数部をハッシュで受け付けてみる
def buy_burger(menu, options = {})
  puts 
