class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end
end

# 例

todesking = Product.new('Der Todesking', 2550)
p todesking.name
p todesking.price

# Productクラスを継承したい、する
class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        # superの属性
        super(name, price)
        # super()でsuperのコンストラクタ（同名メソッドって何）を呼び出す
        # 追加する属性
        @running_time = running_time
    end
end

dvd = DVD.new('Der Todesking', 2550, 80)
p dvd.name
p dvd.price
p dvd.running_time