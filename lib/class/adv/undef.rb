class DerTodesking
    # freezeの定義を削除
    undef freeze
end

todesking = DerTodesking.new
todesking.freeze # エラー 確認済