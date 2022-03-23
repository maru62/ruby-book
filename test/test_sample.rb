require 'minitest/autorun'

class SampleTest < Minitest::Test
    def test_sample
        # これは成功するテストのサンプル
        # assert_equal 'RUBY', 'ruby'.upcase
        # 失敗するテストのサンプル
        # assert_equal 'RUBY', 'ruby'.capitalize
        # 失敗するテストのサンプル2、nilは文字列ではないのでupcaseメソッドを呼ぶことはできない
        assert_equal 'RUBY', nil.upcase
    end
end
