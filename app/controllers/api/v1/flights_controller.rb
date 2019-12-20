class Api::V1::FlightsController < ApplicationController
    require 'json'
    require 'net/http'
    require 'active_support/core_ext/hash'

    def get_flights
        resp = Net::HTTP.get_response(URI.parse("https://api.flightstats.com/flex/schedules/rest/v1/json/from/#{params[:origin]}/to/#{params[:destination]}/departing/#{params[:date]}?appId=#{ID}&appKey=#{KEY}")).body
        flights = JSON.parse(resp)
        render json: flights
    end

    def get_airports
        resp = Net::HTTP.get_response(URI.parse("http://aviation-edge.com/v2/public/autocomplete?key=#{KEY_TWO}&city=#{params[:city_name]}")).body
        airports = JSON.parse(resp)
        render json: airports
    end

    def get_location
        resp = Net::HTTP.get_response(URI.parse("https://api.flightstats.com/flex/airports/rest/v1/json/iata/#{params[:iata]}?appId=#{ID}&appKey=#{KEY}")).body
        location = JSON.parse(resp)
        render json: location
    end

    def get_user_flight
        resp = Net::HTTP.get_response(URI.parse("https://api.flightstats.com/flex/schedules/rest/v1/json/flight/#{params[:carrier]}/#{params[:flight_id]}/departing/#{params[:year]}/#{params[:month]}/#{params[:day]}?appId=#{ID}&appKey=#{KEY}")).body
        flight = JSON.parse(resp)
        render json: flight
    end

end