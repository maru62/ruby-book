require 'minitest/autorun'
require './lib/class/gate/gate'    #   rubyコマンド実行場所からの相対パス
require './lib/class/gate/ticket'

class GateTest < Minitest::Test
    # 立川で乗って国立で出るのが成功する場合のテスト
    def test_gate
        tachikawa = Gate.new :tachikawa
        kunitachi = Gate.new :kunitachi
        ticket = Ticket.new(140)
        tachikawa.enter(ticket)
        assert kunitachi.exit(ticket)
    end

    def test_tachikawa_to_nishikokubunji_when_fare_is_not_enough
        tachikawa = Gate.new :tachikawa
        nishikokubunji = Gate.new :nishikokubunji

        ticket = Ticket.new 140
        tachikawa.enter(ticket)
        refute nishikokubunji.exit(ticket)      #   falseだとテストが通る
    end
end


