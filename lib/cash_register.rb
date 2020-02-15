require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items=[]
  @last_transaction = 0
  end
  
  def add_item(title, price, quantity=1)
    @total+=price*quantity
    quantity.times do
    @items << title
    
    end
    @last_transaction = price
  end
  
  def apply_discount
    @total=@total-(@total*(discount/100))
    @total=(total * ((100.0 - discount.to_f)/100)).to_i
    #binding.pry
    if discount!=0
    message = "After the discount, the total comes to $#{@total.round}."
    return message
    else
    message = "There is no discount to apply."
    return message
    end
    
  end
  
  def void_last_transaction
    #binding.pry
    if @total-last_transaction > 0
    @total=@total-last_transaction
    else
    @total=0.0
    end
  end
  
end
