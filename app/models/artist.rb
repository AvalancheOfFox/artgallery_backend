class Artist < ApplicationRecord
    has_many :artworks

    def index
        @artists = Artist.all
        render json: @artists
    end

    def show
        render json: @artist
    end

# POST /artists
def create
    @artist = Artist.new(artist_params)

    if @artist.save
        render json: @artist, status: :created, location: @artist
    else
        render json: @artist.errors, status: :unprocessable_entity
    end
end

    # PATCH/PUT /artists/1
def update
    if @artist.update(artist_params)
        render json: @artist
    else
        render json: @artist.errors, status: :unprocessable_entity
    end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
        @artist = Artist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artist_params
        params.require(:artist).permit(:name)
    end

    
end
