class Topic < ApplicationRecord
  belongs_to :society
  belongs_to :member
  has_many :comments, as: :commentable
  validates :member, :society, :title, :description, :status, presence: true
  enum status: { unresolved: 0, resolved: 1 }
end
