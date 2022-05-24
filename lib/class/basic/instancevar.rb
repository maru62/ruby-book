class Person
    def initialize name     #   参照しているRailsの本が括弧を使わない書き方なのでそうしてみる
        #   インスタンス作成時の引数をインスタンス変数に保存
        #   メソッドを超えて見えるのは@つき変数だけ（たぶん）
        @name = name
    end

    def hello
        #   インスタンス変数に保存した名前を表示する
        "hellowork #{@name}"
    end

=begin
    def hello_nonexistent
        #   存在しないインスタンス変数はnilが返ってきてエラーにならない
        "hellowork #{@nonexistent}"
    end
=end    
end

# インスタンス変数は作成というか定義すらされていないものを参照するとnilが返ってくる（エラーにならない）、確認済み

me1 = Person.new 'todesking' #   ここも括弧いらない
puts me1.hello
#puts me1.hello_nonexistent     上記の例、確認済み

class PersonLocalVars
    def initialize name
        @name = name
    end

    def shuffledhello
        shuffled_name = @name.chars.shuffle.join
        "hellowork #{shuffled_name}"
    end
end

me2 = PersonLocalVars.new 'todesking'
puts me2.shuffledhello

# インスタンス変数を外部から参照したい場合のゲッター付きのクラス

class PersonReadable
    def initialize name
        @name = name
    end

    # @nameを外部から参照する
    def name
        @name
    end
end

me3 = PersonReadable.new 'todesking'
puts me3.name

# インスタンス変数を外部から変更したい場合のセッター付きのクラス

class PersonWritable
    def initialize name
        @name = name
    end

    # @nameを外部から参照する
    # 下のセッターと名前をそろえておく
    def name
        @name
    end
    # @nameを外部から変更する
    # なんかコンストラクターメソッドか再帰メソッドみたいなのがあるらしい！？！？
    def name= value
        @name = value
    end
end

me4 = PersonWritable.new 'todesking'
me4.name = 'fuba'   #   name=メソッドを呼び出している
puts me4.name

