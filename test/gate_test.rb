require 'minitest/autorun'
require './lib/class/gate/gate'    #   rubyコマンド実行場所からの相対パス
require './lib/class/gate/ticket'

class GateTest < Minitest::Test
    #   コンストラクタ（らしきもの）
    def setup
        @tachikawa = Gate.new :tachikawa
        @kunitachi = Gate.new :kunitachi
        @nishikokubunji = Gate.new :nishikokubunji
    end

    #   立川で乗って国立で出るのが成功する場合のテスト
    def test_gate
        ticket = Ticket.new 140
        @tachikawa.enter ticket
        assert @kunitachi.exit ticket
    end

    #   立川から西国分寺まで行くときに運賃が足りなかった場合テストが通らないかどうか
    def test_tachikawa_to_nishikokubunji
        ticket = Ticket.new 140
        @tachikawa.enter ticket
        refute @nishikokubunji.exit ticket      #   falseだとテストが通る
    end

    #   慣れてきたのであとはケース書くだけになってきた
    def test_tachikawa_to_nishikokubunji_when_fare_is_enough
        ticket = Ticket.new 160
        @nishikokubunji.enter ticket
        assert @nishikokubunji.exit ticket
    end

    def test_kunitachi_to_nishikokubunji
        ticket = Ticket.new 150
        @kunitachi.enter ticket
        assert @nishikokubunji.exit ticket
    end
end

## メモ　インスタンスを持って実行可能なのはテストコードだけでライブラリには動くインスタンスはない
