class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(    username: params[:username],
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        age: params[:age],
                        email: params[:email],
                        phone_number: params[:phone_number],
                    )
                    
        render json: user
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
            # token = JWT.encode({user_id: user.id}, "发发发")
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def destroy
        User.find(params[:id]).destroy
        
        render json: User.all
    end
end
