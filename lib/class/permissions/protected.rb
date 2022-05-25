class Person
    # weightは非公開
    attr_reader :name
    # attr_readerはフィールド変数がそのままインスタンスに生えてくるやつ

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    # other_userと体重を比較したくなってきた
    # other_userより自分のほうが重い場合はtrue

    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    # protectedメソッドを指定すると同じクラスかサブクラスであれば呼び出せるようになる

    protected

    def weight
        @weight
    end       

end

# 2つインスタンス作って実際に比較する（できないのを確認する） 確認済
# protectedを指定したので同じクラスであれば参照できるようになる
todesko = Person.new('todesko', 70)
ywmg = Person.new('kouhei', 50)

# todeskoはywmgの体重を自分のインスタンスから取得できない、できるようになった
p todesko.heavier_than?(ywmg)
p ywmg.heavier_than?(todesko)

# attrではないのでメソッドの処理を経ずには直接呼び出せない 確認済
# p todesko.weight
