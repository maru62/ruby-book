# Stringクラスを継承した独自クラス
class MyString < String
    # 文字列シャッフル機能
    def shuffle
        chars.shuffle.join
    end
end
    
string1 = MyString.new('todesking')
p string1             #=> todesking
p string1.shuffle

=begin
# Arrayクラスを拡張した独自クラス
class MyArray < Array

end

array1 = MyArray.new()
array1 << 40
array1 << 60
p array1
p array1.class
=end

#特に具体的な内容なない