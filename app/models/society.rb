class Society < ApplicationRecord
  belongs_to :region
  has_many :members
  has_many :topics
  validates :registration_number, :region, :name, :address, presence: true
end
