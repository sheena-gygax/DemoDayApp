class Need < ActiveRecord::Base
  attr_accessible :item, :price
  
  validates_presence_of :item
  validates_presence_of :price  
end
