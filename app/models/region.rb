class Region < ApplicationRecord
  has_many :societies
  has_many :helplines, dependent: :destroy
  validates :name, presence: true
end
