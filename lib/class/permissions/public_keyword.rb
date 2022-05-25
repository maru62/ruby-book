class DerTodesking
    # publicキーワードで明示的に設定することもできるが、ふつうは下にprivateをまとめておく
    private

    def todesking_private
        'privatesking'
    end

    public

    def todesking_public
        'publicsking'
    end
end

todesko = DerTodesking.new
p todesko.todesking_public