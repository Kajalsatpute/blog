class Article < ApplicationRecord
  has_many :books
  validates :title, presence: true, length: {minimum: 5}

  def self.article_count
    puts "Article count at #{Time.now} is : #{Article.count}"
  end
end
