class User < ApplicationRecord
  has_secure_password
  has_many :cars
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true

  def last_oil_change
    
  end

end




