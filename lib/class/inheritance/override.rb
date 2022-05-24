class Product
    attr_reader :name, :price   # ここなんでシンボルなんだっけ

    def initialize(name, price)
        @name = name
        @price = price
    end

    # to_sを文字列が出るようにオーバーライド
    def to_s
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        super(name, price)
        @running_time = running_time
    end

    # to_sに上映時間を追加
    ## superで基底クラスの相当するメソッドを呼んでくれるらしい
    def to_s
        "#{super}, running_time: #{running_time}"
    end
end

product1 = Product.new('Der Todesking', 2550)
p product1.to_s     #  クラスIDの乱数が出るので文字列が出るようにオーバーライドする、した

dvd1 = DVD.new('The Emperor\'s Naked Army Marches On', 3300, 122)
p dvd1.to_s         #   同上