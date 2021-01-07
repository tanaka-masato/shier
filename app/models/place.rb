class Place < ApplicationRecord
  has_many :user_places
  has_many :users, througt: :user_places
  accepts_nested_attributes_for :user_places
end
