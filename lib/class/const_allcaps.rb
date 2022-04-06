class Product1
    # 既定の価格を定数として定義する
    DEFAULT_PRICE = 500       #   全て大文字とアンスコ

    attr_reader :name, :price

    def initialize name, price = DEFAULT_PRICE  #   ここで代入しちゃうんだ
        @name = name
        @price = price
    end
end

product1 = Product1.new 'a free todesking'
p product1.price

class Product2
    DEFAULT_PRICE = 450

    ## 参考書には書いてないがオーバーライドされている
    def self.default_price
        #   クラスメソッドで前述の定数を参照するだけ
        DEFAULT_PRICE
    end

    def default_price
        #   インスタンスメソッドから定数を参照する
        DEFAULT_PRICE
    end
end

p Product2.default_price    #   クラスメソッドでの参照

product2 = Product2.new
p product2.default_price    #   インスタンスメソッドでの参照