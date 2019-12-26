class Api::V1::TripsController < ApplicationController

    def index 
        trips = Trip.all
        render json: trips
    end

    def show
        trip = Trip.find_by(user_id: params[:user_id])
        render json: trip
    end

    def create
        trip = Trip.create({
            name: params[:name],
            from: params[:from],
            carrier: params[:carrier],
            year: params[:year],
            month: params[:month],
            day: params[:day],
            time: params[:time],
            flight_id: params[:flight_id],
            user_id: get_auth_header
        })

        render json: trip
    end

        
end
