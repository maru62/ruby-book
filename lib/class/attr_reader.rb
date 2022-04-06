class User
    # attr_readerメソッドでゲッターのみを定義する
    attr_reader :name

    def initialize name
        @name = name
    end
end

user1 = User.new 'todesking'
# @nameへの参照はできる
p user1.name

# @nameへの書き込みはエラー
# p user1.name = 'todesko'      確認済み、出てくるエラーが変な気がするが