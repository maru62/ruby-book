todesking = 'todesko'

# ドット演算子の使い方が同じ

# クラスメソッド
class Todesking
    def self.hello
        'hello.'
    end

    class << self
        def hi
            'hi.'
        end
    end
end

# 特異メソッド

def todesking.hello
    'hello.'
end

class << todesking
    def hi
        'hi.'
    end
end

# クラス構文に外部から特異メソッドを定義する
def Todesking.hello
    'Hello.'
end

class << Todesking
    def hi
        'Hi.'
    end
end

p Todesking.hello
p Todesking.hi