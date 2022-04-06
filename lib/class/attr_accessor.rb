class User
    # @nameを読み書きするメソッドが自動的に定義されるメソッド（？）、引数がシンボル
    attr_accessor :name

    def initialize name
        @name = name
    end

    # attr_accessorを呼び出したのでゲッターとセッターを明示的に定義しなくてよい
end

# 実行例
user1 = User.new 'todesking'
# @nameの変更
p user1.name = 'der todesking'      #   ここでpを実行してよい
p user1.name

#   引数が複数ある場合
class Person
    # @surnameと@personal_nameへのアクセサメソッドを定義する
    attr_accessor :surname, :personal_name

    def initialize surname, personal_name
        @surname = surname
        @personal_name = personal_name
    end
end

person1 = Person.new '小池', '紘平'
p person1.surname
p person1.personal_name