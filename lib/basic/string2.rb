# %記号の使い方

## シングルクォート相当
puts %q!紘平、酒ばかり飲んでいると"ダメ"になる!

## ダブルクォート相当
puts %Q!紘平、酒ばかり飲んでいると"ダメ"になる!
puts %!紘平、酒ばかり飲んでいると"ダメ"になる!

## ?も釘六合に使える
puts %q?紘平、酒ばかり飲んでいると"ダメ"になる?
puts %q(紘平、酒ばかり飲んでいると"ダメ"になる)

# ヒアドキュメント、あのビットシフトと同じ演算子のやつ
str1 = <<TEXT
紘平、酒ばかり
飲んでいると
ロリコンになる
TEXT
puts str1

str2 = <<HTML
<div>
    <p>紘平、酒ばかり飲んでいるとダメになる</p>
</div>
HTML
puts str2 

# 識別子をインデント可能にしてソースをきれいに
def kouhei_sake
    <<-TEXT
紘平、酒ばかり飲んで
いるとダメになる
    TEXT
end
puts kouhei_sake

# 文字列のインデントを表現時に無視する
def kouhei_sake_tilde
    <<~TEXT
        紘平、酒ばかり飲んで
        いるとダメになる
    TEXT
end
puts kouhei_sake_tilde

# 式展開
name = '智士'
str_satoshi_sake = <<TEXT
#{name}、酒ばかり飲んでいるとダメになる
TEXT
puts str_satoshi_sake

# 識別子を''で囲むと式展開が無効になる、""だと有効 → 無効にならないんだけど
str_satoshi_sake_sq = <<'TEXT'
#{name}、酒ばかり飲んでいるとダメになる
TEXT
puts str_satoshi_sake

# 演算子と識別子 <<UNKO は式とみなされるのでメソッドの引数にできる（引数のあとに文字列本体がゾロゾロ続く）
people = '小池紘平'
people.prepend(<<TEXT) # 括弧は閉じる
上山智士
飛渡誠之進
青木ナナ
石丸治樹
TEXT
puts people

## 識別子にたいしてメソッドを呼びだす
prefs = <<TEXT.upcase
tokyo
saitama
tama
chiba
TEXT
puts prefs