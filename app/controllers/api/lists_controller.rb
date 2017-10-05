class Api::ListsController < ApiController
    before_action :authenticated?
    
    def create
        list = List.new(params.require(:list).permit(:name, :permissions))
        if list.save
            render json: list
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
