class Friend < ActiveRecord::Base

  validates  :name,    presence: true
  validates  :email,   presence: true
  validates  :email, uniqueness: true
  validates  :message, presence: true
  belongs_to :user
  has_many   :pictures 
end


