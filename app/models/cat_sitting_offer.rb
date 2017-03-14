class CatSittingOffer < ApplicationRecord
  has_attachments :photos, maximum: 3
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :localisation, presence: true
  validates :description, presence: true
end
