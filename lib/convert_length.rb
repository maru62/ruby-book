# coding: utf-8
def convert_length(length, unit_from, unit_to)
  # まず変換したい諸単位を定義する、んじゃなかった
  # m / m, m / ft, m / in
    units = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }
    (length / units[unit_from] * units[unit_to]).round(2)
end
