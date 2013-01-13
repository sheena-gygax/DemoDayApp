class Drink < ActiveRecord::Base
  attr_accessible :cost, :menu_id, :name
  
  belongs_to :menu
end
