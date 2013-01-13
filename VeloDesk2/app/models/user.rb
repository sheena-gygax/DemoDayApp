class User < ActiveRecord::Base
  attr_accessible :bike_id, :email, :first, :last, :password_digest, :status
  
  belongs_to :bike
end
