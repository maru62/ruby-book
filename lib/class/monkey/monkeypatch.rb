class DerTodesking
    def initialize(name)
        @name = name
    end

    def hello
        "hello #{@name}"
    end
end

# モンキーパッチをあてる前の実行例
user1 = DerTodesking.new('todesko')
p user1.hello   #=> "hello todesko"

# 今からモンキーパッチを当てる、要するにclass命令（これもメソッドなんだろうが）が2回書ける
class DerTodesking
    def hello
        "hellowork #{@name}"
    end
end

# 当てた後の実行例
p user1.hello   #=> "hellowork todesko"