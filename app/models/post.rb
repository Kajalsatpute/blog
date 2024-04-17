class Post < ApplicationRecord
  belongs_to :user
  has_many :poly_comments, as: :commentable
  has_and_belongs_to_many :tags
end
