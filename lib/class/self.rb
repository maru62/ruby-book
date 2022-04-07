# coding: utf-8
class Person
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

person1 = Person.new 'todesking'

# 特に違いはない
puts person1.hellowork
puts person1.hellowork_self
puts person1.my_name
