class Member < ApplicationRecord
  belongs_to :society
  has_many :topics
  has_many :comments
end
