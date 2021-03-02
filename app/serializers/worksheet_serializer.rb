class WorksheetSerializer
  include JSONAPI::Serializer
  attributes :id

  has_many :love
  has_many :good_ats
  has_many :world_needs
end
