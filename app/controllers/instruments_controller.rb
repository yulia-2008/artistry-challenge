class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
      end
    
      def show
        @instrument = Instrument.find(params[:id])
      end
    
      
    
      def create
         @instrument = Instrument.create(instrument_params)
         
           redirect_to new_instrument_path
         end
       
    
       
    
       
    
    
      private
      def instrumnent_params
        params.require(:instrument).permit(:name, :classification)
      end
end
