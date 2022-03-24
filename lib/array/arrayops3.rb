# 配列の要素がすべて同じ文字列オブジェクトになってしまう例

dat1 = Array.new(5, 'todesking')
str1 = dat1[0]
str1.upcase!
print dat1       #   全て大文字になる
puts 

# 初期化の際にブロックを用いると回避できる

dat2 = Array.new(5) { 'todesking '}     #   暗黙のreturn文
str2 = dat2[0]
str2.upcase!
print dat2
puts

# index関係の組み込みメソッド
people1 = ['ywmg', 'todesking', 'jobasu', 'suzukinnnn']
people1.each_with_index { |people, i| puts "#{i}: #{people}" }
people1.map.with_index { |people, i| puts "#{i}: #{people}" }