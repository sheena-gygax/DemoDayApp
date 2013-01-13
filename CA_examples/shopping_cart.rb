class Item
  def initialize(name, price)
    @name = name
    @price = price
  end

  def name
    @name
  end
  
  def price
    @price
  end
  
  def name=(product)
    @name = product
  end
  
  def price=(price)
    @price = product
  end
end


class Cart
  def initialize
    @cart = []
  end
  
  
  def add(item, quantity)
    item_hash = Hash.new
    item_hash[:item] = item
    item_hash[:quantity] = quantity
    @cart << item_hash
  end
  
  def total
      total = 0
      @cart.each do |item_hash|
        item = item_hash[:item]
        price = item.price
        quantity = item_hash[:quantity]
        total = total + price * quantity
      end
      return total
    end
  
end

ipad = Item.new("iPad 2", 499)
imac = Item.new("iMac 27", 1699)
macbook = Item.new("MacBook Air 13", 1299)

cart = Cart.new

cart.add(ipad, 2)
cart.add(imac, 1)
cart.add(macbook, 1)

puts cart.total
