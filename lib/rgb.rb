def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0') # そのままブロック単位でreturnされる
    end
end

def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    ints = []
    [0, 0, 0]
end
