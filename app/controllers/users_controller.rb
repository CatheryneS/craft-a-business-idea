class UsersController < ApplicationController

    def index
        user = User.all

        render json: user
    end

    def create
        byebug
    end
end
