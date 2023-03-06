class CreationSerializer
  include JSONAPI::Serializer
  attributes :id :artist, :title, :type_of_work, :medium, :dimensions, :date_of_composition, :art_category, :comment, :price
end
