class ArtistPaintings < ActiveRecord::Base
    belongs_to :painting
    belongs_to :artist
end
