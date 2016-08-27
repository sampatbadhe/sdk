class Member < ApplicationRecord
  belongs_to :society
  has_many :topics
end
