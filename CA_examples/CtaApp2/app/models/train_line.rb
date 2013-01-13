class TrainLine < ActiveRecord::Base
  attr_accessible :frequency, :name, :subway

  validates_presence_of :name
  validates_presence_of :frequency
  
end
