class User < ActiveRecord::Base
  validates  :first_name,  presence:   true 
  validates  :last_name,   presence:   true
  validates  :email,       presence:   true
  validates  :email,     uniqueness:   true
  has_many   :friends
  has_many   :pictures
  has_one    :beneficiary


  def self.full_name
  end
end
