=begin
equal?
==
eql?
===
=end

# equal オブジェクトIDが等しいか、全く同じインスタンスかどうか
a = 'todesking'
b = 'todesking'

p a.equal?(b)   #=> false

c = a

p c.equal?(a)   #=> true

# == は再定義可能なので再定義することがある



