class Article < ApplicationRecord
  has_many :books
  validates :title, presence: true, length: {minimum: 5}
end
