class Post < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable
  has_many :comments
  acts_as_taggable_on :tags
  validates :title, :description, presence: true
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
