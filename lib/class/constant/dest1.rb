class DerTodesking
    NAME = 'todesking'
    SOME_NAMES = ['todesko', 'todepyon', 'todecchi']
    SOME_PRICES = { 'todesko' => 1000, 'todepyon' => 2000, 'todecchi' => 3000 }
end

# 破壊的に大文字に変換

DerTodesking::NAME.upcase!
p DerTodesking::NAME

DerTodesking::SOME_NAMES << 'todechan'
p DerTodesking::SOME_NAMES 

DerTodesking::SOME_PRICES['todechan'] = 4000 # ハッシュの追加ってこんなんでできんだっけ
p DerTodesking::SOME_PRICES