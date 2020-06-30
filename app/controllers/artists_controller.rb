class ArtistsController < ApplicationController
  def index 
    byebug
    @artists = Artist.all
  end 
  
  def show 
    @artist = Artist.find(params[:id])
  end 

  def new 
    @artist = Artist.new
  end 

  def create 
    artist =  Artist.create(artist_params)
    # artist =  Artist.new(artist_params)

    # if artist.save
    if artist.valid? 
      redirect_to artist_path(artist)
    else 
      flash[:error_list] = artist.errors.full_messages

      redirect_to new_artist_path
    end 

  end 

  def super_destroy
    artist = Artist.find(params[:id])
    artist.destroy 

    redirect_to artists_path
  end 

  private

  def artist_params
    params.require(:artist).permit(:name, :age, :title)
  end 

end
