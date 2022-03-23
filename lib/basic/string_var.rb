name1 = "ariya"
name_sq = "ariya"
name_dq = 'ariya'
name2 = "kouhei"

puts "todes\nking"
puts 'todes\nking'

# 式展開を使うにはダブルクオートが必要、被展開部は特に問われないようだ
puts "der todesking #{name_sq}"
puts "der todesking #{name_dq}"

# ただの文字列として処理される
puts 'der todesking #{name_dq}'

# concat、たぶん式展開のほうが見やすいとのこと。（ここはシングルクォート）
puts 'der todesking' + name1

# バックスラッシュ
puts "der todeskng \#{name1}"
puts "der \"tode\"sking"