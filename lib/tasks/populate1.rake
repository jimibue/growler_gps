namespace :populate1 do
  desc "Create the breweries"
  task breweries: :environment do

###########################
  breweries= [
      {
        "name": "Wasatch",
        "image_url": "http://www.nwdreno.com/nw-content/uploads/2015/06/wasatch-logo.jpg"
      },
      {
        "name": "Red Rock",
        "image_url": "https://pbs.twimg.com/profile_images/555444268613894144/D3oQesOQ.jpeg"
      },
      {
        "name": "Desert Edge",
        "image_url": "https://www.beerqwest.com/media/reviews/photos/original/b1/d2/19/desert-edge-brewery-at-the-pub-24-1377266990.jpg"
      },
      {
        "name": "Uinta",
        "image_url": "https://pbs.twimg.com/profile_images/1318970223/Uinta_Brewing_Co._Logo__4.png"
      }
    ]

#create each brewery
breweries.each do |brewery|
  Brewery.create(name: brewery[:name],
                 image_url: brewery[:image_url]
                )
end
puts "Brewery length #{Brewery.count}"
###############################
end

desc "create the beers"
task beers: :environment do

###########################
beers = [
  {
    "brewery": "Uinta",
    "name": "Cutthroat",
    "beer_type": "Pale Ale",
    "seasonal": "false",
    "default_beer_price": 12.01,
    "description": "This traditional style pale ale has a rich amber color full malt body and a clean hop finish.",
    "abv": 4
  },
  {
    "brewery": "Uinta",
    "name": "Sumr",
    "beer_type": "Summer Ale",
    "seasonal": "true",
    "default_beer_price": 12.01,
    "description": "Citrusy and thirst-quenching this refreshing golden ale is highlighted by the use of unique hops.",
    "abv": 4
  },
  {
    "brewery": "Uinta",
    "name": "Baba",
    "beer_type": "Lager",
    "seasonal": "false",
    "default_beer_price": 12.01,
    "description": "Robust and smooth",
    "abv": "this full-flavored lager is exceptionably drinkable and pitch black in color"
  },
  {
    "brewery": "Uinta",
    "name": "Hoodoo",
    "beer_type": "Kolsch",
    "seasonal": "false",
    "default_beer_price": 12.01,
    "description": "This crisp kolsch-style ale is golden in color and exhibits refreshing hop character.",
    "abv": 4
  },
  {
    "brewery": "Wasatch",
    "name": "Jalapeño Cream Ale",
    "beer_type": "Ale",
    "seasonal": "false",
    "default_beer_price": 13.5,
    "description": "flavor of fresh jalapenoes without an intense burn",
    "abv": 4
  },
  {
    "brewery": "Wasatch",
    "name": "Pumpkin Ale",
    "beer_type": "Ale",
    "seasonal": "false",
    "default_beer_price": 13.5,
    "description": "Careful though - this malty amber has more than a hint of pumpkin",
    "abv": 4
  },
  {
    "brewery": "Wasatch",
    "name": "Vanilla Porter",
    "beer_type": "Porter",
    "seasonal": "true",
    "default_beer_price": 13.5,
    "description": "A smooth porter with hints of vanilla that really shine through",
    "abv": 4
  },
  {
    "brewery": "Wasatch",
    "name": "Chocolate Rye Stout",
    "beer_type": "Stout",
    "seasonal": "false",
    "default_beer_price": 14,
    "description": "complex layers of cocoa dark chocolate and caramel flavors",
    "abv": 4
  },
  {
    "brewery": "Wasatch",
    "name": "Wasatch Hefeweizen",
    "beer_type": "Pils",
    "seasonal": "false",
    "default_beer_price": 14,
    "description": "Bavarian yeast strain that brings out notes of banana and clove.",
    "abv": 4
  },
  {
    "brewery": "Red Rock",
    "name": "Fröhlich",
    "beer_type": "Pils",
    "seasonal": "false",
    "default_beer_price": 14,
    "description": "lovely floral and hoppy nose; distinct hop bitterness",
    "abv": 5.5
  },
  {
    "brewery": "Red Rock",
    "name": "Golden Halo Blonde",
    "beer_type": "Ale",
    "seasonal": "false",
    "default_beer_price": 11,
    "description": "golden color and a nobel hop aroma",
    "abv": 5.8
  },
  {
    "brewery": "Red Rock",
    "name": "Elephino Double",
    "beer_type": "IPA",
    "seasonal": "true",
    "default_beer_price": 14,
    "description": "finest malts and double dry-hopped",
    "abv": 8
  },
  {
    "brewery": "Red Rock",
    "name": "Bobcat Nutbrown",
    "beer_type": "Ale",
    "seasonal": "true",
    "default_beer_price": 14,
    "description": "Chocolate and Crystal malts lend a soft body taste",
    "abv": 6.1
  },
  {
    "brewery": "Red Rock",
    "name": "Drioma Russian Imperial",
    "beer_type": "Stout",
    "seasonal": "true",
    "default_beer_price": 14,
    "description": "This dark black ale is roasty full of chocolate malt",
    "abv": 10.1
  },
  {
    "brewery": "Desert Edge",
    "name": "Happy Valley Hefeweizen",
    "beer_type": "Hefeweizen",
    "seasonal": "false",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  },
  {
    "brewery": "Desert Edge",
    "name": "Utah Pale Ale",
    "beer_type": "Pale Ale",
    "seasonal": "false",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  },
  {
    "brewery": "Desert Edge",
    "name": "Pub Pils",
    "beer_type": "Pilsner",
    "seasonal": "false",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  },
  {
    "brewery": "Desert Edge",
    "name": "Later Day Stout",
    "beer_type": "Stout",
    "seasonal": "false",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  },
  {
    "brewery": "Desert Edge",
    "name": "#9 Saison",
    "beer_type": "Saison",
    "seasonal": "true",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  },
  {
    "brewery": "Desert Edge",
    "name": "Augustus",
    "beer_type": "Amber ale",
    "seasonal": "true",
    "default_beer_price": 7.95,
    "description": "No description",
    "abv": 4
  }
]

beers.each do |beer|
  tempBrewery = Brewery.find_by(name: beer[:brewery])
  Beer.create(brewery_id: tempBrewery.id,
              name: beer[:name],
              description: beer[:description],
              beer_type: beer[:beer_type],
              seasonal: beer[:seasonal],
              abv: beer[:abv],
              default_beer_price: beer[:default_beer_price]
              )
end
puts "Beers created.... count is #{Beer.count}"
###########################
end

desc "Create the stations"
task stations: :environment do

##################################
stations = [
          {
            "brewery": "Wasatch",
            "name": "Wasatch Downtown",
            "address": "2110 Highland Dr. SLC UT 84106",
            "phone": "801-783-1127",
            "website_url": "http://www.wasatchbeers.com",
            "gps_latitude": 40.724577,
            "gps_longitude": -111.85977
          },
          {
            "brewery": "Wasatch",
            "name": "Wasatch Park City",
            "address": "250 Main St. Park City UT 84060",
            "phone": "435-649-0900",
            "website_url": "www.wasatchbeers.com",
            "gps_latitude": 40.724577,
            "gps_longitude": -111.85977
          },
          {
            "brewery": "Red Rock",
            "name": "Red Rock Downtown",
            "address": "443 N. 400 W. SLC UT 84103",
            "phone": "801-214-3386",
            "website_url": "http://www.redrockbrewing.com",
            "gps_latitude": "40.779201.",
            "gps_longitude": -111.903147
          },
          {
            "brewery": "Red Rock",
            "name": "Red Rock Park City",
            "address": "1640 W. Redstone Center Park City UT 84098",
            "phone": "435-575-0295",
            "website_url": "http://www.redrockbrewing.com",
            "gps_latitude": 40.720015,
            "gps_longitude": -111.541647
          },
          {
            "brewery": "Desert Edge",
            "name": "Desert Edge Trolley Square",
            "address": "700 east 500th south",
            "phone": "801-521-8917",
            "website_url": "http://www.desertedgebrewery.com",
            "gps_latitude": 40.7572164,
            "gps_longitude": -111.872881
          },
          {
            "brewery": "Uinta",
            "name": "Brewhouse Pub",
            "address": "1722 South Fremont Dr.",
            "phone": "801-467-0228",
            "website_url": "http://www.uintabrewing.com/brewhouse_pub",
            "gps_latitude": 40.7326101,
            "gps_longitude": -111.954182
          },
          {
            "brewery": "null",
            "name": "Bayou",
            "address": "645 State Street Salt Lake City  UT 84111",
            "phone": "801-000-0000",
            "website_url": "http://www.utahbayou.com/",
            "gps_latitude": 40.7551396,
            "gps_longitude": -111.8878619
          },
          {
            "brewery": "null",
            "name": "Beer Bar",
            "address": "161 East 200 South",
            "phone": "801-355-3618",
            "website_url": "http://www.beerbarslc.com/#about",
            "gps_latitude": 40.765212,
            "gps_longitude": -111.886287
          }
]
tempBreweryId = nil
stations.each do |station|

    if station[:brewery] == 'null'
      tempBreweryId = nil
    else
      tempBreweryId = Brewery.find_by(name: station[:brewery]).id
    end
    Station.create(brewery_id: tempBreweryId,
                   name: station[:name],
                   phone: station[:phone],
                   website_url: station[:website_url],
                   address: station[:address],
                   gps_latitude: station[:gps_latitude], 
                   gps_longitude: station[:gps_longitude], 
                  )
  end
puts "Stations created.... count is #{Station.count}"
##################################
end

desc "Create on taps beers"
  task on_taps: :environment do

  #
  tapped_beers = [
            {
            "station": "Wasatch Downtown",
            "beer": "Jalapeño Cream Ale",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Downtown",
            "beer": "Pumpkin Ale",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Downtown",
            "beer": "Vanilla Porter",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Downtown",
            "beer": "Chocolate Rye Stout",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Park City",
            "beer": "Jalapeño Cream Ale",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Park City",
            "beer": "Pumpkin Ale",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Park City",
            "beer": "Vanilla Porter",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Wasatch Park City",
            "beer": "Chocolate Rye Stout",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Downtown",
            "beer": "Fröhlich",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Downtown",
            "beer": "Golden Halo Blonde",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Downtown",
            "beer": "Elephino Double",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Downtown",
            "beer": "Bobcat Nutbrown",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Downtown",
            "beer": "Drioma Russian Imperial",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Park City",
            "beer": "Fröhlich",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Park City",
            "beer": "Golden Halo Blonde",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Park City",
            "beer": "Elephino Double",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Park City",
            "beer": "Bobcat Nutbrown",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Red Rock Park City",
            "beer": "Drioma Russian Imperial",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Desert Edge Trolley Square",
            "beer": "Happy Valley Hefeweizen",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Desert Edge Trolley Square",
            "beer": "Pub Pils",
            "actual_64_price": "Pilsner",
            "in_stock": 0
            },
            {
            "station": "Desert Edge Trolley Square",
            "beer": "Later Day Stout",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Desert Edge Trolley Square",
            "beer": "#9 Saison",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Desert Edge Trolley Square",
            "beer": "Augustus",
            "actual_64_price": 0,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Pumpkin Ale",
            "actual_64_price": 9,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Vanilla Porter",
            "actual_64_price": 9,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Chocolate Rye Stout",
            "actual_64_price": 9,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Happy Valley Hefeweizen",
            "actual_64_price": 9,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Pub Pils",
            "actual_64_price": "Pilsner",
            "in_stock": 9
            },
            {
            "station": "Bayou",
            "beer": "Later Day Stout",
            "actual_64_price": 9,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "#9 Saison",
            "actual_64_price": 10,
            "in_stock": 0
            },
            {
            "station": "Bayou",
            "beer": "Augustus",
            "actual_64_price": 10,
            "in_stock": 0
            },
            {
            "station": "Beer Bar",
            "beer": "Jalapeño Cream Ale",
            "actual_64_price": 10,
            "in_stock": 0
            },
            {
            "station": "Beer Bar",
            "beer": "Chocolate Rye Stout",
            "actual_64_price": 10,
            "in_stock": 0
            },
            {
            "station": "Beer Bar",
            "beer": "Happy Valley Hefeweizen",
            "actual_64_price": 10,
            "in_stock": 0
            },
            {
            "station": "Beer Bar",
            "beer": "Pub Pils",
            "actual_64_price": "Pilsner",
            "in_stock": 11
            },
            {
            "station": "Beer Bar",
            "beer": "Augustus",
            "actual_64_price": 11,
            "in_stock": 0
            }
  ]

  tapped_beers.each do |tb|
    tempBeer = Beer.find_by(name: tb[:beer])

    tempStaionId = Station.find_by(name: tb[:station]).id
    actual_64_price = tb[:actual_64_price] == 0 ? tempBeer.default_beer_price : tb[:actual_64_price]

    Tap.create( station_id: tempStaionId,
                            beer_id: tempBeer.id,
                            actual_64_price: actual_64_price,
                            in_stock: true
                           )

    end  

  puts "tapped_beers #{Tap.count}"
  end

end
 

