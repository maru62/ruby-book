# Railsでも標準的な、シンボルをキーに用いたハッシュ
=begin
currencies = {
     :jpn => 'yen',
     :chn => 'rmb',
     :kor => 'won',
     :mys => 'ringgit',
     :phl => 'peso',
     :vnm => 'dong',
     :ind => 'rupiah',
     :sgp => 'sgdollar'
    }
=end
# キー値がシンボルである場合はコロンを後置する記法があるのでよく出てくる、これを今頃知りした
# コロンが後置された変数もシンボルになる
currencies1 = {
    jpn: 'yen',
    chn: 'rmb',
    kor: 'won',
    mys: 'ringgit',
    phl: 'phlpeso',
    vnm: 'dong',
    ind: 'rupiah',
    sgp: 'sgdollar'
}

# 値もシンボルである場合はコロンが向き合う演算子みたいな感じ？になる
currencies2 = {
    gbr: :pound
    eur: :euro
    che: :swissfranc
    rus: :ruble
    tur: :lire
    usa: :usdollar
    mex: :mexpeso
    can: :candollar
}

# キー列に違う型を混在させてもよいがふつうはしない
=begin
    hash1 = {
        'todesking' => hoge
        fuba: => piyo
    }
=end

# 値に関してはそういうケースもよくある
    person1 = {
        name: '小池紘平',
        age: 33,
        # 値が配列
        friends: ['me', 'gyoepi'],
        # 値がハッシュ
        contact: { twitter: 'ywmg', addres: '大分県'}
    }
