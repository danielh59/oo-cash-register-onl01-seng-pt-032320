require 'pry'
class CashRegister
attr_accessor :cash_register, :cash_register_with_discount, :total



def initialize(discount = 0)
@total = 0
@discount = discount
@item_list  = []
end

def discount
@discount
end

def add_item(item, price, quantity = 1)
      some_items_hash= {}
      some_items_hash[:name] = item
      some_items_hash[:price] = price
      some_items_hash[:quantity] = quantity

    @item_list <<  some_items_hash
    @total += price * quantity
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  elsif @discount > 1
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
end

def items
  @item_list
end

end
