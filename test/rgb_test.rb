require 'minitest/autorun'
require './lib/rgb'     #   実行する場所からの相対パスになるので、実行するときはruby-book/.に戻る必要がある

class RgbTest < Minitest::Test
    def test_to_hex # 変数そのものを動かしてすべて網羅するわけではない
        assert_equal '#000000', to_hex(0, 0, 0)
        assert_equal '#ffffff', to_hex(255, 255, 255)
    end

    def test_to_ints
        assert_equal [0, 0, 0] ,to_ints('#000000')
        assert_equal [255, 255, 255] ,to_ints('#ffffff')
    end
end
