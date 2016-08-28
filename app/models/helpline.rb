class Helpline < ApplicationRecord
  belongs_to :region
  belongs_to :helpline_category
  validates :address, :name, :helpline_category, :region, :email_address, presence: true
end
