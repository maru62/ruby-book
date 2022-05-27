word1 = 'unpoko'
word2 = 'unpoko'

# eql? が真ならhash値を同じになる
p word1.eql?(word2)     #=>     true

p word1.hash
p word2.hash            #   二つとも同じ

number1 = 1
number2 = 1.000

p number1.eql?(number2) #=>     false

p number1.hash
p number2.hash          #   異なる