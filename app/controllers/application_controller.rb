class ApplicationController < ActionController::API

    def get_auth_header
        request.headers["Authorization"]
    end

    # def decoded_token
    #     JWT.decode(get_auth_header, "发发发")[0]["user_id"]
    # end

    def session_user
        User.find_by(id: get_auth_header)
    end

    # def encode_token(id)
    #     JWT.encode({user_id: id}, "super_verbose_and_secret_key")
    # end

    # def decoded_token
    #     begin
    #         JWT.decode(get_auth_header, "super_verbose_and_secret_key")[0]["user_id"]
    #     rescue
    #         nil
    #     end
    # end

    # def session_user
    #     User.find_by(id: decoded_token)
    # end
    def logged_in?
        !!session_user
    end
end
