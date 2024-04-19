class User < ApplicationRecord
  has_many :posts
  validates :username, presence: true, uniqueness: true
  validates :password, length: { in: 6..12 } 
  has_secure_password
end
