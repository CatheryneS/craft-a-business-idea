class User < ApplicationRecord
  has_secure_password
  has_many :worksheets
  has_many :love, through: :worksheets

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
end
