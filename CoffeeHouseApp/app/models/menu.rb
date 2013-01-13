class Menu < ActiveRecord::Base
  attr_accessible :roast, :size
  
  has_many :drinks
end
