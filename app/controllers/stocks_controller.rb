class StocksController <  ApplicationController
    def search
        if params[:stock]
            @stock = Stock.find_by_ticker(params[:stock]) #dawar 3leha fl data base el awel
            @stock ||= Stock.new_from_lookup(params[:stock]) # if not in data base hatha bl function new_from_lookup
        end

        
                 
                if @stock
                     render partial: 'lookup'  
                    
                    
                else
                    render status: :not_found, nothing: true
                end
                  
            
           
        
      
    end
end