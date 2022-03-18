def add(a, b)
    a + b
end
puts add(100, 200)

# メソッド名はスネークケースが推奨される
def hello_work
    puts 'hellowork'
end
hello_work

# 2バイト文字でも動く
def うんこ出し放題
    puts 'うんこ出し放題ぶりぶりぶり'
end
うんこ出し放題

=begin
returnはあまり使わないが存在する
def add(a, b)
    return a + b
end
=end

# 最後に評価された式がメソッドの戻り値になる
def greeting(country)
    if country == 'jp'
        'こんにちは'
    else
        'hello'
    end
end

puts greeting('jp')
puts greeting('us')

# returnはなんかbreakっぽい
def greeting_ret(country)
    return 'countryが定義されていません' if country.nil?
    if country == 'jp'
        'こんにちは'
    else
        'hello'
    end
end

puts greeting_ret(nil)
puts greeting_ret('us')

# メソッドに引数がある場合も実は括弧を省略できる

def greeting_nobra country
    if country = 'jp'
        'うんこ'
    else
        'shit'
    end
end

# 実行するときも括弧いらない
puts greeting_nobra 'jp' 