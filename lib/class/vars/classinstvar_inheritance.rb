class Product
    # クラスインスタンス変数
    @name = 'Product'
    
    def self.name
        @name
    end

    def initialize(name)
        @name = name
    end

    # attr_reader :name でもよいが@nameの中身を考えるのでメソッドを書きます
    # 念のため クラスインスタンス変数の@nameを手動でreturnしている
    def name
        @name
    end
end

class DVD < Product
    @name = 'DVD'
    
    def self.name
        # クラスインスタンス変数を参照している
        @name
    end

    def upcase_name
        @name.upcase
    end
end

# あとは出力

p Product.name  #=> Product
p DVD.name      #=> DVD

product1 = Product.new('Der Todesking')
p product1.name #=> Der Todesking

dvd1 = DVD.new('Le roi des morts')
p dvd1.name         #=> Le roi des morts
p dvd1.upcase_name  #=> LE ROI DES MORTS
p product1.name     #=> Der Todesking
