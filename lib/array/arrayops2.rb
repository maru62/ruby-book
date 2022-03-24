a, *b = 10, 20, 30, 40
puts b

c = [10]
print c.push(b)

d = [10]
print d.push(*b)    # splat展開

print [10, 20, *b, 30]   # 同上
