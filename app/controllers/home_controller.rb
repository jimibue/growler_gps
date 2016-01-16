class HomeController < ApplicationController
  def index
  	breweries = Brewery.all 
  	beers = Beer.all
  	stations = Station.all
   	taps = Tap.all
   	@data = {
   		breweries: breweries,
   		beers: beers,
   		stations: stations,
   		taps: taps
   	}

   	@data
  end
end
