todesko_de = 'Das ist der todesking'
todesko_fr = 'C\'est le roi des morts'
todesko_ar = 'Hadha hu malik al-maut'

# フランス語だけシャッフルしてみる
# メソッド定義部を変数から生やせる

def todesko_fr.shuffle
    chars.shuffle.join
end

p todesko_fr.shuffle

# 別の書き方

class << todesko_ar
    def shuffle
        chars.shuffle.join
    end
end

p todesko_ar.shuffle