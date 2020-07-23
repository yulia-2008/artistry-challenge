class ArtistInstrumentsController < ApplicationController
    def index
        @artist_instruments = ArtistInstrument.all
      end
    
      def show
        @artist_instrument = ArtistInstrument.find(params[:id])
      end
    
      def new
        @artist_instrument = ArtistInstrument.new
      end
    
      def create
        @artist= Artist.find(params[:artist_instrument][:artist_id])
         @artist_instrument = ArtistInstrument.create(artist_instrument_params)
         redirect_to artist_path(@artist)
       end
    
    
      private
      def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
      end
end
