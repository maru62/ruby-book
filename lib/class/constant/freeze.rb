# 定数といってもただの紳士協定みたいなもの
class Product
    DEFAULT_PRICE = 0
    # 実は再代入できる
    DEFAULT_PRICE = 1000
end

# 警告は来るが再代入後の値が返ってくる
p Product::DEFAULT_PRICE

# クラスの外部から直接再代入できる
p Product::DEFAULT_PRICE = 5000

# freezeメソッドで凍結できる
Product.freeze
p Product::DEFAULT_PRICE = 7500 # エラー 確認済