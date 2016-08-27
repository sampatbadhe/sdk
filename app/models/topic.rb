class Topic < ApplicationRecord
  belongs_to :society
  belongs_to :member
  has_many :comments, as: :commentable
end
