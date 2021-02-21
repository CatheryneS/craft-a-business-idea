class Worksheet < ApplicationRecord
  belongs_to :user
  # has_many :loves, :good_ats, :world_needs
end
