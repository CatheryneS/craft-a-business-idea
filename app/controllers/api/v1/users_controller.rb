class Api::V1::UsersController < ApplicationController

    def index
        user = User.all

        render json: user
    end

    def create
        user = User.new(user_params)

        if user.save 
            render json: UserSerializer.new(user)
        else
            render json: {
                notice: "Sign Up not successful"
            }
        end
    end

    private

    def user_params
        params.require(:credentials).permit(:name, :username, :password)
    end
end
