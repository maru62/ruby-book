# 復習 =で終わる変なメソッドがあった
class DerTodesking
    # =で終わるメソッド
    def name=(value)
        @name = value
    end
end

todesking1 = DerTodesking.new
# 変数に代入するようにnameメソッドを呼び出す
todesking1.name = 'todesko'