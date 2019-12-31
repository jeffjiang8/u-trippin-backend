class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end

    def create
        item = Item.create({
            trip_id: params[:trip_id],
            category_id: params[:category_id],
            name: params[:name],
            packed: params[:packed],
            user_id: params[:user_id]
        })

        render json: item
    end

    def update
        item = Item.find(params[:id])
        item.update( trip_id: params[:trip_id],
                        category_id: params[:category_id],
                        name: params[:name],
                        packed: params[:packed],
                        user_id: params[:user_id])
        render json: item
    end

    def destroy
        Item.find(params[:id]).destroy
        
        render json: Item.all
    end
end
