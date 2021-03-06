class Api::ClientsController <ActionController::API
    include ActionController::MimeResponds
    def find_client
        @client = Client.find_by(name: params[:name])
            respond_to :json 

            if @client 
                render json: @client.to_json(only:[:name, :visited])
            else
                render json: {error: 'cliente no encontrado'}
            end
        
    end
    
end