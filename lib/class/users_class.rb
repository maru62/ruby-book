# Userクラスの定義
class User
    attr_reader :personal_name, :surname, :age # ここ組み込みメソッドなんだ

    # コンストラクター
    def initialize(personal_name, surname, age)
        @personal_name = personal_name
        @surname = surname
        @age = age
    end
end

# サンプルデータ作成
users = []
users << User.new('紘平', '小池', 33)
users << User.new('悠紀', '大山', 35)
users << User.new('徳仁', '天皇', 62)

# 氏名を作成するメソッド
def full_name(user)
    "#{user.surname} #{user.personal_name}"
end

# データ表示
users.each do |user|
    puts "氏名: #{full_name(user)}、年齢: #{user.age}"
end

# これだと型に変数から合わせているだけなので非常に脆弱
# 例
## データにキーを追加されるなど
# users[0][:country] = '日本'

an_user = User.new('晋三', '安倍', 67)
puts an_user.personal_name   # an_userはpersonal_nameメソッドのレシーバー
