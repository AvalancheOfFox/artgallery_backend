class ArtworksController < ApplicationController

    def index
        @artworks = Artwork.all
        render json: ArtworkSerializer.new(@artworks)
    end

    def show
        @artwork = artwork.find(params[:id])
        options = {
            include: [:artist]
        }
        render json: ArtworkSerializer.new(artwork, options)
    end

    
end
