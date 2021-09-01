require "pry"

class CashRegister
    attr_accessor :discount, :total

    def initialize(total=0, discount=20)
        @total = total
        @discount = discount
    end

    def add_item(item, price, quantity=1)
        self.total += (price * quantity)
    end

    def apply_discount
        binding.pry
        discount = (100.0 - self.discount.to_f) / 100
        self.total = (self.total * discount).to_i
        self.total + 16
    end

end