class DerTodesking
    class BloodType
        attr_reader :type

        def initialize(type)
            @type = type
        end
    end
end

# :: で参照してインスタンスを生成する
blood_type_1 = DerTodesking::BloodType.new('B')
# 当然BloodTypeのインスタンスになるがわかりづらい
p blood_type_1.type #=> B