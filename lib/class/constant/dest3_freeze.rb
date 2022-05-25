class DerTodesking
    # 配列を最初から凍結しておく
    WORDS = ['der', 'tod', 'esk', 'ing'].freeze

    def self.words_cut(words = WORDS)
        # freezeしてあるので編集できない
        words.delete('ing')
        words
    end
end

# p DerTodesking.words_cut # エラー 確認済

# ただし中身の文字列はfreezeされない
DerTodesking::WORDS[0].upcase!
p DerTodesking::WORDS # 最初の要素が大文字になっている