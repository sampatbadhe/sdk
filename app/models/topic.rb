class Topic < ApplicationRecord
  belongs_to :society
  belongs_to :member
end
