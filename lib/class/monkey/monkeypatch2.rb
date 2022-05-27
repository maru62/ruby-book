class DerTodesking
    def initialize(name)
        @name = name
    end

    def hello
        "hello #{@name}"
    end
end

# classの再オープン
class DerTodesking
    # 古いhelloをバックアップ
    alias hello_original hello
    # これ外して同じ名前のを入れたら再帰した

    # モンキーパッチ
    def hello
        "#{hello_original} is old hellowork #{@name}"
    end

end

# 当てた後の実行例
user1 = DerTodesking.new('todesko')
p user1.hello   #=> 