class Society < ApplicationRecord
  belongs_to :region
  has_many :members
end
