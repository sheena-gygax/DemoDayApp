class Bike < ActiveRecord::Base
  attr_accessible :date_desired, :expected_return, :first_choice, :image, :out, :second_choice, :size, :style
  
  has_many :users
  
end
