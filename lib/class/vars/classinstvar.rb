# 下のコードを解読しましょう
class DerTodesking
    @name = 'Todesking'
    
    def self.name
        @name
    end

    def initialize(name)
        @name = name
    end

    # attr_reader :name でもよいが@nameの中身を考えるのでメソッドを書きます
    # 念のため クラスインスタンス変数の@nameを手動でreturnしている
    def name
        @name
    end
end

p DerTodesking.name 

todesko = DerTodesking.new('The Death King')
p todesko.name          #   インスタンス変数
p DerTodesking.name     #   クラスインスタンス変数

# クラスインスタンス変数 インスタンスの作成とは別にクラスがフィールドに保持している変数