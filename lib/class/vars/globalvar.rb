# グローバル変数の宣言と初期化
$movie_name = 'Der Todesking'

# グローバス変数に依存するクラス
class Movie
    def initialize(name)
        $movie_name = name
    end

    def self.name
        $movie_name
    end

    def name
        $movie_name
    end

end

# $movie_nameはすでに値を持つので単純呼び出しできる
p Movie.name    #=> Der Todesking

movie1 = Movie.new('El rey de la muerte')
p movie1.name   #=> El rey de la muerte

# Movie.newの段階でグローバル変数が書き換えられてしまう
p Movie.name    #=> El rey de la muerte
p $movie_name   #=> El rey de la muerte