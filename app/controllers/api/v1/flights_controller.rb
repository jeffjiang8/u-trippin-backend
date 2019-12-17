class Api::V1::FlightsController < ApplicationController
    require 'json'
    require 'net/http'
    require 'active_support/core_ext/hash'

    def get_flights
        resp = Net::HTTP.get_response(URI.parse("https://api.flightstats.com/flex/schedules/rest/v1/json/from/#{params[:origin]}/to/#{params[:destination]}/departing/#{params[:date]}?appId=#{ID}&appKey=#{KEY}")).body
        flights = JSON.parse(resp)
        render json: flights
    end

end