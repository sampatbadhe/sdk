class Comment < ApplicationRecord
  belongs_to :member
  belongs_to :commentable, polymorphic: true
  validates :member, :content, presence: true
end
