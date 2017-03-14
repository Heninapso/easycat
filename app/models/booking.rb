class Booking < ApplicationRecord
  belongs_to :cat_sitting_offer
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
