# coding: utf-8
class Name1
  attr_accessor :name

  def initialize name
    @name = name
  end

  def hellowork
    # self無しでnameを表示する
    "hellowork #{name}"
  end

  def hellowork_self
    # selfをつける
    "hellowork #{self.name}"
  end
  
  def my_name
    # 直接インスタンス変数にアクセスする
    "hellowork #{@name}"
  end
end

name1 = Name1.new 'todesking'

# 特に違いはない
puts name1.hellowork
puts name1.hellowork_self
puts name1.my_name


## selfに意味がある例、値を代入するperson=メソッドの場合
class Name2
  attr_accessor :name

  def initialize name
    @name = name
  end

  def rename_to_todesking
    # これだとスコープがここから出ない、当たり前だ
    ## selfなしでname=メソッドを呼ぶ？←いや俺もわかんないんだけど、=を後置する記法そのものが出てくるわけではない
    ## ただの代入記号を=後置メソッドって呼んでるのか？
    name = 'todesking'
  end

  def rename_to_todesko
    # self付きで代入
    self.name = 'todesko'
  end

  def rename_to_todepyon
    # 直接インスタンス変数に代入する
    @name = 'todepyon'
  end
end

name2 = Name2.new 'der todesking'

# 失敗
name2.rename_to_todesking
p name2.name

# 下二つは成功
name2.rename_to_todesko
p name2.name

name2.rename_to_todepyon
p name2.name

# フィールド変数を変更するときはselfつけるって当たり前だろそんなの