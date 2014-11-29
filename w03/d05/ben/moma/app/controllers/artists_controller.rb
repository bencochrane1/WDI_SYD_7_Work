class ArtistsController < ApplicationController


  def index
    @artists = Artist.all
  end  


  def show
    @artist = Artist.find(params[:id])
    @painting = Painting.where(artist_id: @artist)
    # @painting = Painting.find(params[:artist_id])
    # @paintings = .find(params[:artist_id])
    # @paintings = @artists.all
  end


  ####### new and create always go together
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
  end
  #######


  ####### new and create always go together
  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to @artist
  end

  #######

  private

  def artist_params

    params.require(:artist).permit(
      :first_name,
      :last_name,
      :nationality,
      :date_of_birth,
      :period,
      :image
    )
  end

end