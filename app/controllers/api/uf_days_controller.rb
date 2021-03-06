class Api::UfDaysController <ActionController::API
    include ActionController::MimeResponds

    def search_date
        @client = Client.find_by(name: request.headers['x-cliente'])
        if @client 
            @client.visited += 1
            @client.save
            @uf_by_day = UfDay.find_by(created_at: DateTime.parse(params[:date]))
            respond_to :json

            if @uf_by_day 
                render json: @uf_by_day.to_json(only:[:value, :id])
            else
                render json: {error: 'Fecha no encontrada'}
            end
        else
            render json: {error: 'Usuario no encontrado'}
        end
    end
    
end
