number = '03-2077-0633'

case number
when /^\d{3}-\d{4}$/
    puts '郵便番号です'
when /^\d{4}-\/\d{1,2}\/\d{1,2}$/
    puts '日付です'
when /^\d+-\d+-\d+$/
    puts '電話番号です'
end

# これの中身が===だよと書いてある

sample1 = {1 => 'hoge', 2 => 'unpo', 3 => 'gyo'}
sample2 = 'Der Todesking'

# 型を定義するメソッドの名前を===で比較できる

case sample1
when String
    puts '文字列です'
when Array
    puts '配列です'
when Hash
    puts 'ハッシュです'
end

case sample2
when String
    puts '文字列です'
when Array
    puts '配列です'
when Hash
    puts 'ハッシュです'
end

# case文の中身が===なので適宜再定義して使うことが出来る