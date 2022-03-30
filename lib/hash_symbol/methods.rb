# coding: utf-8
currencies =
{
    jp: 'yen',
    kr: 'wong',
    us: 'dollar',
    eu: 'euro',
    cn: 'rmb'
}

# キーを列挙
p currencies.keys

# 値を列挙
p currencies.values

# キーが存在するかどうか
p currencies.has_key?(:jp)
p currencies.has_key?(:gb)

# 別のハッシュのキーをハッシュの中で展開する
currencies2 =
{
  in: 'rupee',
  ru: 'ruble',
  **currencies
}
p currencies2



