class Event < ApplicationRecord
  has_many :reviews, as: :reviewable
end
