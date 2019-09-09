class ArtworksController < ApplicationController

    before_action :set_artwork, only: [:update, :destroy]

    def index
        @artworks = Artwork.all
        render json: ArtworkSerializer.new(@artworks)
    end

    def show
        options = {
            include: [:artist]
        }
        render json: ArtworkSerializer.new(@artwork, options)
    end

# POST /artworks
    def create
        @artwork = Artwork.create(artwork_params)
            if @artwork.save
                render json: @artwork, status: :created, location: @artwork
            else
                render json: @artwork.errors, status: :unprocessable_entity
            end
    end

# PATCH/PUT /artworks/1
def update
    if @artwork.update(artwork_params)
        render json: @artwork
    else
        render json: @artwork.errors, status: :unprocessable_entity
    end
end

# DELETE /artworks/1
def destroy
    @artwork.destroy
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
        @artwork = Artwork.find(params[:id])
    end
    # Only allow a trusted parameter "white list" through.
    def artwork_params
        params.require(:artwork).permit(:id, :title, :medium, :source, :artist_id)
    end
end
    

