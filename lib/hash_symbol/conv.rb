# coding: utf-8
currencies =
{
    'jp' => 'yen',
    'us' => 'dollar',
    'eu' => 'euro',
    'cn' => 'rmb'
}

p currencies.to_a

# 逆をやる.to_hメソッドがあるが一対一対応の二次配列をいちいち整形してやらないといけない。

currencies_array = [
  [:jp, "yen"],
  [:us, "dollar"],
  [:eu, "euro"],
  [:cn, "rmb"]
]

p currencies_array.to_h
