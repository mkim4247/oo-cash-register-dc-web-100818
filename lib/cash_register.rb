
class CashRegister 
  attr_accessor :total, :discount, :title, :last_transaction, :items
  
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @title = title
    @quantity = quantity
    @price = price 
    
    @last_transaction = price * quantity
    @total += @last_transaction
    
    @quantity.times do 
      @items << title
    end
  end
  
  def apply_discount
    if @discount != nil
      @total -= (@discount * @total) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end