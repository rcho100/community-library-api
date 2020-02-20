class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
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
            token = encode_token(user_id: user.id)
            options = {
                include: [:books, :grabs]
            }
            render json: { user: UserSerializer.new(user, options), jwt: token }, status: :created
        else
            render json: { error: "failed to create user" }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
