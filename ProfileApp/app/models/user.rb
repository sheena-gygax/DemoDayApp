class User < ActiveRecord::Base
  attr_accessible :email, :first, :last, :password, :password_confirmation
  
  before_save { |user| user.email = email.downcase }
  
  has_secure_password
  
  validates :first, :presence => true
  validates :last, :presence => true
  validates :password, :presence => true, length: { minimum: 6 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: { case_sensitive: false }
end
