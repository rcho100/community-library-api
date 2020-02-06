class UsersController < ApplicationController
    def index
        users = User.all
        if users
            options = {
                include: [:books, :grabs]
            }
            render json: UserSerializer.new(users, options), status: :created
        else
            render json: { error: "users not found" }, status: :not_found
        end
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: { user: UserSerializer.new(user) }, status: :created
        else
            render json: { error: "failed to create user" }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
