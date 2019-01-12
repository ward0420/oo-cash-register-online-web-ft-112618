class CashRegister
  
  attr_accessor :total, :discount, :items, :price
  
  def initialize (total = 0, discount = 20.0)
    @total = total
    @discount = discount
    @items = []
    
  end

  
  def add_item(item, price, total_items = 1)
    self.total += price * total_items
      total_items.times {self.items << item}
        self.last_transaction = price*total_items
      end
  end
  
  
  
  def apply_discount
    if  @discount !=0
      self.total *= (1 - (@discount/ 100)).to_f
        "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
end

def void_last_transaction
  self.total -= self.last_transaction
end
