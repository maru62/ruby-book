nums1 = [1, 2, 3, 4]
nums1.each do |n; sum|
    # ローカルのsumを初期化してブロック引数を加算する
    sum = 10
    sum += n

    p sum
end