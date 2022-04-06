class Person
    def initialize name
        @name = name
    end

    # 処理は平行していて同じだが扱うフィールドが共通しない場合はクラスメソッドを使いたい
    # 配列が手動で作れてしまえば不要なメソッドなので例としてわかりづらいのではないか
    def self.create_people names
        names.map do |name|
            Person.new name
        end
    end

    # こちらはインスタンスメソッド
    def hello
        "hellowork #{@name}."
    end
end

# 名前を自前で用意する
sample = ['todesking', 'fuba', '__ywmg__']

# クラスメソッドの呼び出し
people = Person.create_people sample     #   最初から配列を取れるんだ

people.each do |person|
    # インスタンスメソッドをインスタンスごとに呼ぶ
    puts person.hello
end

