def CashRegister 
  
  attr_accessor :total, :discount, :item, :price, :last_transaction
  
  @@cash_register = 0 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end   
  
  def self.total
    @total
  end 
    
 def add_item(name, price, quantity = 1)
    @total += (price * quantity)
     quantity.times do
      @items << name
  end
      @last_transaction = price * quantity

  end

  def apply_discount
  end 
  
  
  def void_last_transaction
    @total = @total
  end 
  
  
end 

