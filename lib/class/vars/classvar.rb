class Product
    # クラス変数の例
    # 前の@を全て@@に書き換える
    @@name = 'Product'
    
    def self.name
        @@name
    end

    def initialize(name)
        @@name = name
    end

    def name
        @@name
    end
end

class DVD < Product
    @@name = 'DVD'
    
    def self.name
        # クラスインスタンス変数を参照している
        @@name
    end

    def upcase_name
        @@name.upcase
    end
end

## 以下で実験

# DVDクラスを定義した段階で@@nameが"DVD"に変更される
p Product.name  #=> "DVD"
p DVD.name      #=> "DVD"

product1 = Product.new('Der Todesking')
p product1.name   #=> "Der Todesking"

# インスタンスを作成するとクラスそのもの（って何だよ）のクラス変数も変更される！
p Product.name  #=> "Der Todesking"
# 継承先も
p DVD.name      #=> "Der Todesking"

# 次は継承先のインスタンスを作る
dvd1 = DVD.new('Le roi des morts')
p dvd1.name     #=> "Le roi des morts"
p dvd1.upcase_name  #=> "LE ROI DES MORTS"

# これも継承先のインスタンスが作成された段階ですべて変更されてしまう
p product1.name #=> "Le roi des morts"
p Product.name  #=> "Le roi des morts"
p DVD.name      #=> "Le roi des morts"