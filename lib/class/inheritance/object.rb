# Objectが継承されているのだけ確認する
class Something
end

something = Something.new
p something.class
# Somethingクラスのインスタンスか（真）
p something.instance_of?(Something)
# Stringクラスのインスタンスか（偽）
p something.instance_of?(String)

# 組み込みのObjectクラスに対して継承を調べる
# instance_of?は同階層しかとらない
p something.instance_of?(Object)    # 偽
p something.is_a?(Something)        # 真
p something.is_a?(Object)           # 真
p something.is_a?(BasicObject)      # 真
p something.is_a?(String)           # 偽