class Topic < ApplicationRecord
  belongs_to :society
  belongs_to :member
  has_many :comments, as: :commentable
  enum status: { unresolved: 0, resolved: 1 }
end
