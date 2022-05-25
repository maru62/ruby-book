class Person
    # weightは非公開
    attr_reader :name
    # attr_readerはフィールド変数がそのままインスタンスに生えてくるやつ

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    # other_userと体重を比較したくなってきた
    # other_userより自分のほうが重い場合はtrue
    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    
end

