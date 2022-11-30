class Company < ApplicationRecord
  has_many :reviews, as: :reviewable
end
