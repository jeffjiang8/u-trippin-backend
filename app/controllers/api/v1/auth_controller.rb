class Api::V1::AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # token = JWT.encode({user_id: user.id}, "发发发")
            render json: user
        else
            render json: {errors: "Username/Password Incorrect! Please Try Again!"}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "Please Sign Up / Login!"}
        end
    end

end