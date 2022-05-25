class Product
    # 定数はメソッドの内部で作成できない
    def somemethod
        DEFAULT_PRICE = 0
    end
end

p Product::DEFAULT_PRICE # エラー、確認済