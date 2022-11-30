class User < ApplicationRecord
  has_one :smartphone

  def full_name
    "#{name} #{vorname}"
  end
end
