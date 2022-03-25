# 実装ではない疑似コード
=begin
def buy_burger (what_burger, drink, potato)
    # ハンバーガーを購入する
    if drink
        # ドリンクを購入する
    end
    if potato
        # ポテトを購入する
    end
end

buy_burger('cheese', true, true)
buy_burger('fish', true, true)

これだと引数が並んでいるだけで可読性が低い、ので引数をキー付きのハッシュ（状のもの）にしてみる

def buy_burger(what_burger, drink: true, potato: true)    # booleanじゃないんだ、初期値がtrueになる 
    ......
end

この場合の呼び出し例
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)

キーワード引数の初期値は引数では省略できる
buy_burger('cheese')

ハッシュ部の引数に対して、あれば型が一致していれば引数としてハッシュを渡せる
params = { drink: true, potato: false }
buy_burger('fish', params)
=end



