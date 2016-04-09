class StaticPagesController < ApplicationController
  def home
	  skyconArrayLtd   = ["PARTLY_CLOUDY_DAY", "CLEAR_DAY", "RAIN", "SLEET"]
		@randomSkyconLtd = skyconArrayLtd[rand(0..3)]
  end
end
