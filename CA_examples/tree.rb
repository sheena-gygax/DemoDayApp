
class OrangeTree
  def initialize( days_old ) 
    @age = days_old # in days
  end
  
  def has_fruit?
    if @age < 365
      return false
    else 
      return true
    end
  end
  
  def wait_a_year
      @age=@age + 365
    end
    
    def wait_in_days(value)
      @age = @age + value
    end
  
end


tree = OrangeTree.new( 10 )
puts tree.has_fruit? # => false

tree.wait_in_days(20) # value = 20
puts tree.has_fruit? # => false
tree.wait_in_days(350)
puts tree.has_fruit? # => true
