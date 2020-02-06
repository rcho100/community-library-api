class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'mysecret')#'mysecret is temp secret'
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'mysecret')#'mysecret is temp secret'
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            user = User.find_by_id(user_id)
        end
    end

    def logged_in?
        !!current_user
    end
end
