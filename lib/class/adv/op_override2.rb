# == のオーバーライドを試す

class Goods
    attr_reader :code, :name

    def initialize(code, name)
        @code = code
        @name = name
    end

# 2' 演算子をメソッドみなしてオーバーライドする
    def ==(the_other)
        if the_other.is_a?(Goods)   #   Goodsかどうか
            code == the_other.code
        else
            # the_otherがgoodsでなければ常に偽
            false
        end
    end  
end

# 入力するデータの例

goods_a = Goods.new('A-0001', 'todesko')
goods_b = Goods.new('B-0001', 'der todesking')
goods_c = Goods.new('A-0001', 'todesko')

# 1' goods_a == goods_b => true にしたい

# 3' テスト
p goods_a == goods_b    #=> false
p goods_a == goods_c    #=> true

=begin
本筋とは関係ないんですけど、メソッドの引数の仮変数？の権限が意外と強くて、なんかnewもないのにインスタンスを勝手に呼び出せるようなのが驚いた。
=end

=begin
補足
左辺がたとえば整数リテラルだとIntegerクラスの組み込み変数が呼び出されるのでエラーになる
1 == hoge
=end