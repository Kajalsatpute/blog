class Post < ApplicationRecord
  # has_many :images, as: :imageable
  has_many :comments
  has_many_attached :images

  belongs_to :user

  acts_as_taggable_on :tags

  validates :title, presence: true

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
