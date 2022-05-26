class DerTodesking
    # 配列の要素を個別にfreezeしておく、最後に配列そのものもfreezeする
    WORDS = ['der', 'tod', 'esk', 'ing'].map(&:freeze).freeze
end

DerTodesking::WORDS[0].upcase!
p DerTodesking::WORDS # エラー 確認済