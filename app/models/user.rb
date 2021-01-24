class User < ApplicationRecord
  has_many :places, through: :user_places
  has_many :user_places, dependent: :destroy
  has_many :comments
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
