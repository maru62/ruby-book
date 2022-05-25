=begin
class User
    private 

    def todesking
        'todesking'
    end
end
=end

#user1 = User.new    #   エラー
#   private だとレシーバ（インスタンス）をつけて実行できない

class User
=begin
    def hello
        # nameメソッドはprivateなのでselfがつけられない
        "Hello, I am #{self.name}"
    end
=end

    def hello
        # selfを消すと良い
        "Hello, I am #{name}"
    end

    private
    def name
        'todesking'
    end
end

user1 = User.new
p user1.hello   #   通る