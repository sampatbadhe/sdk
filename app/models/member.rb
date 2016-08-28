class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, authentication_keys: [:email]
  belongs_to :society
  has_many :topics
  has_many :comments
  validates :email, :first_name, :last_name, :phone_number, :society, presence: true
  delegate :region_id, to: :society, allow_nil: true

  def to_s
    "#{first_name} #{last_name}".to_s.capitalize
  end
end
