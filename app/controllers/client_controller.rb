class ClientController < ApplicationController
    responders :flash
    expose (:clients)
    expose :client, attributes: :domain_params
    
    respond_to :html
    def create 
      client.save
      respond_with client, location: :back
    end
    
    def destroy
      client.destroy
      respond_with client, location: :back
    end
    
    def update
      client.update_attributes(domain_params)
      respond_with client, location: :back
    end
      
    private 
    def domain_params 
      params.require(:client).permit!
    end
end
