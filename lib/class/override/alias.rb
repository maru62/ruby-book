=begin
# 組み込みメソッドでもStringのsizeはlengthのエイリアスメソッド
s = 'Hello'
p s.length  #=> 5
p s.size    #=> 5
=end

class Hellowork
    def hello
        'todesking'
    end

    # aliasを定義する
    alias greeting hello
end

todesking = Hellowork.new
p todesking.hello
p todesking.greeting