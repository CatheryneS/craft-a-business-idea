class Api::V1::UsersController < ApplicationController

    def index
        users = User.all

        render json: UserSerializer.new(users)
    end

    def show 
        debugger
        user = User.find_by(id: )
    end

    def create
        user = User.new(user_params)

        if user.save 
            render json: UserSerializer.new(user), status: :created
        else
            resp = { error: user.errors.full_messages.to_sentence}
            render json: resp, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:credentials).permit(:name, :username, :password)
    end
end
