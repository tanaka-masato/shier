class Day < ApplicationRecord
  attachment :image
  has_many :comments
end
