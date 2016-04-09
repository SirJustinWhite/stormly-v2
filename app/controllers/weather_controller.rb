class WeatherController < ApplicationController
require 'forecast_io'

  def current_location
  	if cookies[:lat] && cookies[:long]
  		#Set the lat/long as instance variables from the cookies
  		@lat  = cookies[:lat]
  		@long = cookies[:long]

  		#initalize forecast.io
  		ForecastIO.api_key   = '489e6541e3f4c8d407a3152e17f8e8d3'
  		@forecast   				 = ForecastIO.forecast(@lat, @long) 
  		forecast 					   = @forecast

  		# Geocoder 
  		@geocoder = Geocoder.search(@lat+","+@long)
  		@city = @geocoder[0].address_components[2]["long_name"]


  		# Currently
  		currently  = forecast.currently
  		@feelsLike = currently.apparentTemperature.round.to_s + "°"
  		@summary	 = currently.summary
  		@icon			 = currently.icon
  		@temp 	 	 = currently.temperature.round.to_s + "°"


  		# Minutely 

  		# Hourly

  		# Daily

  		# Flags

  	else
  		#redirect if no cookies
  		redirect_to root_url
  	end
  end

end
