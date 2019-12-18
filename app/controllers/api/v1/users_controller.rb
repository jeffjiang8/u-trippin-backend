class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def create
        user = User.new(
            username: params[:username],
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            email: params[:email],
            phone_number: params[:phone_number],
            password: params[:password]
        )
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end
end
