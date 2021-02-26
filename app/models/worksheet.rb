class Worksheet < ApplicationRecord
  belongs_to :user
  has_many :love
  has_many :good_ats
  has_many :world_needs
end
