class Customer < ApplicationRecord
  has_many :cat_sitting_offers
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
end
