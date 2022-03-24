def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0') # そのままブロック単位でreturnされる
    end
end

def to_ints(rgb)
    rgb.scan(/\w\w/).map(&:hex)
end