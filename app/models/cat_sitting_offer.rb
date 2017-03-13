class CatSittingOffer < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :bookings
  validates :title, presence: true
  validates :localisation, presence: true
  validates :description, presence: true
end
