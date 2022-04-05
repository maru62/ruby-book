# Userクラスの定義
class User
    def initialize  # .newのときに呼び出される予約語のようなものらしい
        puts 'Initialized'
    end
end

User.new    #   インスタンス無しで実行できるって説明が教科書にない

=begin
initializeメソッドはprivateなので以下はエラー
user = user.new
user.initialize
=end

# initializeに引数がつくと（それをコンストラクターと言うのではないか）newにも引数が必要
class UserConstructor
    def initialize name, age
        puts "name: #{name}, age: #{age}"
    end
end

#p UserConstructor.new   #   エラー
puts UserConstructor.new('小池紘平', 34)    #   クラスの内部IDまでついてくる

class InstanceMeth
    #   インスタンスメソッドの定義
    def hello
        "hellowork"
    end
end

inst = InstanceMeth.new
# インスタンス経由で呼び出せる
puts inst.hello