class Unko
    # クラス定義の呼び込み時に呼び出される
    puts "フィールドになぜかいきなりぶら下がっている意味不明のself: #{self}"

    def self.gyoe       # selfをつけるとインスタンス無しメソッドになる
        puts "クラスメソッド内のself: #{self}"  # 予約語を呼んでいる　！？
    end

    def hoge
        puts "インスタンスメソッド内のself: #{self}"
    end

    # 定義の後ならクラスメソッドをすぐに内部で呼び出せる
    self.gyoe
end

puts Unko.gyoe
kuso = Unko.new
puts kuso.hoge  # 内部IDが出てくる

# 確認済