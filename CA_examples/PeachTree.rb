# PRACTICE
# 1. I have a fruit tree and I want to know if it will produce fruit, it will only produce fruit if it is more than one year old.
# 2. The tree must be over one year old to have fruit. Given 'x' many days, does my tree have fruit?
# 3. If the tree is less than one year. I will wait a year - write code to let me know after one year, my tree will have fruit.
# 4. If the tree is less than one year, in 'x' many days will my tree have fruit?


class PeachTree
  
  def initialize( tree_type, days_old )
    @type = tree_type
    @age = days_old
  end
  
  def get_type
    return @type
  end
  
  def get_age
    return @age
  end
  
  
  def has_fruit?
    if @age < 365
        return false
      else
        return true
    end
  end   

  def wait_year
    if !self.has_fruit?
    return @age + 365
    end
  end
  
  def until_fruit
    if !self.has_fruit?
    return 365 - @age
  end
  end
  
end




tree = PeachTree.new( "peach", 70 ) 
puts tree.get_age
puts tree.until_fruit
puts tree.get_age
puts tree.wait_year
puts tree.get_age
puts tree.until_fruit



