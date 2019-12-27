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
            user_id: get_auth_header
        })

        render json: item
    end
end
