# キーと値
# 中括弧がブロックの記法と同じであることに注意、えっこれ定義上は別物なの
currencies =
{
    'jp' => 'yen',
    'us' => 'dollar',
    'eu' => 'euro',
    'cn' => 'rmb'
}

# 追加
currencies['kr'] = 'wong'

# 上書き 大体同じ

# キー読み出し
p currencies['cn']
p currencies['tr'] # 存在しないのでnilが返る
puts

# each ようやくRailsでよく出てくるやつに来ました
## ブロック変数が二次
currencies.each do |key, value|
    puts "#{key} : #{value}"
end
puts

# ブロック変数が一次だとキーと値が二項の配列に格納される
currencies.each do |key_value|
    puts "#{key_value[0]} : #{key_value[1]}"
end
puts

# 同値比較について
## すべてのキーと値が同じであれば順番は問わないでtrue、値がどれか異なるとfalse

# sizeメソッド
p currencies.size
puts

# deleteで削除
# currencies.delete('jp')
## 削除しようとしたキーがないときはnilが返る
p currencies.delete('za')
## ブロックを渡すと例外処理ができる
p currencies.delete('za') { |key| "Not Found: #{key}" }
