require 'minitest/autorun'
require './lib/class/gate'    #   rubyコマンド実行場所からの相対パス

class GateTest < Minitest::Test
    # 立川で乗って国立で出るのが成功する場合のテスト
    def test_gate
        tachikawa = Gate.new :tachikawa
        kunitachi = Gate.new :kunitachi
        ticket = Ticket.new(140)
        tachikawa.enter(ticket)
        assert kunitachi.exit(ticket)
    end
end
