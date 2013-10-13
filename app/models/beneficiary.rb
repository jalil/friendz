class Beneficiary < ActiveRecord::Base
  validates  :last_name,   presence: true
  validates  :first_name,  presence: true
  validates  :email,       presence: true
  validates  :email,     uniqueness: true
  belongs_to :user
end
