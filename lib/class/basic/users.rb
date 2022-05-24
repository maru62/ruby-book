# サンプルデータ作成
users = []
users << { personal_name: '紘平', surname: '小池', age: 33 }
users << { personal_name: '悠紀', surname: '大山', age: 35 }
users << { personal_name: '徳仁', surname: '天皇', age: 62 }

# 氏名を作成するメソッド
def full_name(user)
    "#{user[:surname]} #{user[:personal_name]}"
end

# データ表示
users.each do |user|
    puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
end

# これだと型に変数から合わせているだけなので非常に脆弱
# 例
## データにキーを追加されるなど
# users[0][:country] = '日本'