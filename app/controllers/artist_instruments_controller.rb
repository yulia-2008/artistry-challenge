class ArtistInstrumentsController < ApplicationController
  def new 
    @artist_instrument = ArtistInstrument.new

    @artists = Artist.all
    @instruments = Instrument.all
  end 

  def create
    artist_instruemnt = ArtistInstrument.create(artist_instrument_params)

    redirect_to artist_path(artist_instruemnt.artist_id)
  end 

  private

  def artist_instrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end
end
