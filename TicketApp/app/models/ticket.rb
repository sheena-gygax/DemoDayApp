class Ticket < ActiveRecord::Base
  attr_accessible :address, :city, :date, :genre, :name, :price, :state, :zip
end
