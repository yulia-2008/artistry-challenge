class ArtistsController < ApplicationController
  def index 
    @artists = Artist.all
  end 

  def show 
    @artist = Artist.find(params[:id])
  end 

  def new 
    @artist = Artist.new
  end 

  def create 
   @artist = Artist.create(artist_params)
   
   @artist = Artist.new(artist_params)
  #  if @artist.save
   if @artist.valid? 
    flash[:success] = "WELCOME TO THE ARTIST CLUB"
    redirect_to artist
    # redirect_to artist_path(artist)
   else
    flash[:errors] = artist.errors.full_messages
    redirect_to new_artist_path
   end
  end 

  # def update 
  #  @artist = Artist.find(params[:id])
  
  #  if @artist.update(artist_params) 
  #   redirect_to artist
  #   # redirect_to artist_path(artist)
  #  else
  #   flash[:errors] = artist.errors.full_messages
  #   redirect_to edit_artist_path
  #  end
  # end 

  private 

  def artist_params
    params.require(:artist).permit(:name, :title, :age)
  end 
end
