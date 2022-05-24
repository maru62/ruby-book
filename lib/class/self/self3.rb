=begin 全部間違い
class Foo
    def self.bar
        # クラスメソッドからインスタンスメソッドを呼び出す、エラー
        self.baz
    end

    def baz
        # インスタンスメソッドからクラスメソッドを呼び出す、エラー
        self.bar
    end
end

p Foo.bar

foo = Foo.new
p foo.baz

=end