class AuthController < ApplicationController
    skip_before_action :authorized

    def create
        user = User.find_by(email: user_login_params[:email])
        if user && user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: user.id })
            options = {
                include: [:books, :grabs]
            }
            render json: { user: UserSerializer.new(user, options), jwt: token }, status: :accepted
        else
            render json: { error: 'Incorrect email or password. Please try again.' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end
