class Society < ApplicationRecord
  belongs_to :region
  has_many :members
  has_many :topics
  has_many :maintenance_receipts
  validates :registration_number, :region, :name, :address, presence: true
end
