class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    # 金額を成形するクラスメソッド
    def self.format_price(price)
        "#{price}円"
    end

    def to_format
        # インスタンスメソッドからクラスメソッドを呼び出す
        formatted_price = Product.format_price(price) # self.class.format_priceでもよい
        "name: #{name}, price: #{formatted_price}"
    end
end

product = Product.new('Der Todesking', 1800)
puts product.to_format