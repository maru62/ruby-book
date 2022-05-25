=begin
class DerTodesking
    private

    # クラスメソッドもprivateになるかと思った
    def self.todesking
        'der todesking'
    end
end

# しかしならない
p DerTodesking.todesking
=end

# class << self 構文
class DerTodesking
    class << self
        private

        def todesking
            'todesko'
        end
    end
end

p DerTodesking.todesking    # エラー 確認済