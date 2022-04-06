class User
    # attr_writerで書き込み用のメソッドだけを定義する
    attr_writer :name

    def initialize(name)
        @name = name
    end
end

user1 = User.new 'todesko'

# @nameの変更はできる
p user1.name = 'el rey del muerte'

# 参照はできない
#p user1.name       エラー、確認済