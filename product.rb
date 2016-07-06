class Product
  attr_accessor :name, :price, :vat, :id, :sale
  @@id = 0

  def initialize(name:, price:, vat:, sale: false)
    @id = next_id
    @name = name
    @price = price
    @vat = vat
    @sale = sale
  end 

  def next_id
    @@id += 1
  end
  
  def self.price_formatted(price)
    format("$%.2f", price)
  end

  def price_with_vat
    price * (1 + vat)
  end

end
