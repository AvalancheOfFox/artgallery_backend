class ArtworkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :medium, :artist, :source
  belongs_to :artist 
end
