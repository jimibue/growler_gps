class Brewery < ActiveRecord::Base
	has_many :beers
	has_many :stations
end
