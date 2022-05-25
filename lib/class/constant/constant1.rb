class Product
    DEFAULT_PRICE = 0

    # あとからメソッドで定数をprivateにする
    private_constant :DEFAULT_PRICE
end

p Product::DEFAULT_PRICE # privateにしたのでエラー 確認済