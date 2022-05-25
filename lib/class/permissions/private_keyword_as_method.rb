class DerTodesking
    # 最初はpublicメソッドとして定義する
    def todesko
        'Das ist der Todesking.'
    end

    def todepyon
        'Er macht daß die Menschen'
    end

    # privateメソッドに変更するメソッドとしてprivateキーワードがある
    private :todesko, :todepyon

    def todetaro
        'nicht mehr leben wollen'
    end
end

todesking = DerTodesking.new
# p todesking.todesko
# p todesking.todepyon
p todesking.todetaro    #   確認済