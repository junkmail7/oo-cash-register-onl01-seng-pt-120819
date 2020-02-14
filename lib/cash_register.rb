class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 20)
  @total = 0
  @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @total+=price*quantity
  end
  
  def apply_discount()
    @total=@total*(discount*0.04)
    if discount==20
    message = "After the discount, the total comes to $#{@total.round}."
    return message
    elsif discount == nil
    message = "There is no discount to apply."
    return message
    end
  end
  
  def items
    self.items << title
  end
end
