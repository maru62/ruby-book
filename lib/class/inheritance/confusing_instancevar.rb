# インスタンス変数を混同する例
class Parent
    def initialize
        @first = 1
        @second = 2
        @third = 3
    end

    # 毎回1,2,3という数字が返るはず？
    def number
        "#{@first}.#{@second}.#{@third}"
    end
end

class Child < Parent
    def initialize
        super
        @hour = 60
        @minute = 30
        # 偶然秒のsecondがsuperに既存の変数名だったので大変なことになる
        @second = 59
    end

    def time
        "#{@hour}.#{@minute}.#{@second}"
    end
end

parent1 = Parent.new
p parent1.number

# ここでChildを経由して@secondが上書きされてしまうので注意
child1 = Child.new
p child1.time

# 当たり前だが子クラスのインスタンスで親クラスのメソッドが使える
p child1.number
# 変数のミス 確認済