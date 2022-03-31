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

=begin
# キーワード引数部をハッシュで受け付けてみる
def buy_burger(menu, options = {})
  puts options
end

buy_burger('fish', {'drink' => true, 'potato' => false})

# これでも間違いではないが中括弧を省略しても良い

buy_burger('fish', 'drink' => true, 'potato' => false)

# 最後の引数がハッシュである場合のみ、こうでない場合の例はまあいいでしょう

# メソッド呼び出しの外側の括弧が省略できるのでそちらも省略した場合、Railsでよく出てきた気がする

buy_burger 'fish', 'drink' => true, 'potato' => false

