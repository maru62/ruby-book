# さっきは直接代入したが今回はわかりにくい例を示す
class DerTodesking
    TODESKING = ['der', 'tod', 'esk', 'ing']

    def self.words_cut(words = TODESKING)
        words.delete(4)
        # 組み込みメソッドによる変更
        words
    end
end

## こんな一回限りの動作をメソッドでやるか？例のための例のような気がする
# メソッド実行によって変更すると
p DerTodesking.words_cut

# 背後にある変数を直接編集しているので変数が変わってしまうことになる
## こんな当たり前のこといちいち写してるのよくわからん
p DerTodesking::TODESKING