// var map = new google.maps.Map(document.getElementById('map'), {
//     center: new google.maps.LatLng(37.7831,-122.4039),
//     zoom: 12,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
// });

// var weatherLayer = new google.maps.weather.WeatherLayer({
//   temperatureUnits: google.maps.weather.TemperatureUnit.FAHRENHEIT
// });
// weatherLayer.setMap(map);

// var cloudLayer = new google.maps.weather.CloudLayer();
// cloudLayer.setMap(map);

// var mapOptions = {
//     center: new google.maps.LatLng("Wasatch Breweries"),
//     zoom: 12,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
// };
// var map = new google.maps.Map(document.getElementById('map'), mapOptions);

// var markerOptions = {
//     position: new google.maps.LatLng(37.7831, -122.4039),
//     map: map
// };
// var marker = new google.maps.Marker(markerOptions);
// marker.setMap(map);

// var infoWindowOptions = {
//     content: 'WASATCH BREWERY'
// };

// var infoWindow = new google.maps.InfoWindow(infoWindowOptions);
// google.maps.event.addListener(marker,'click',function(e){
  
//   infoWindow.open(map, marker);
  
// });
$(document).ready(function(){
    console.log('test');
    handler = Gmaps.build('Google');
    handler.buildMap({ 
        provider: {}, 
        internal: {id: 'map'}
      }, function(){
        markers = handler.addMarkers([
          {
            lat: 40.724577, 
            lng: -111.882880, 
            infowindow: 'You are Here, Church & State'
          },
          {
            lat: 40.641810, 
            lng: -111.494477, 
            infowindow: 'Wasatch Brewing, Park City'
        },
        {
            lat: 40.724577, 
            lng: -111.859770, 
            infowindow: 'Wasatch Brewing, Downtown SLC'
        },{
            lat: 40.779201, 
            lng: -111.903147, 
            infowindow: 'Red Rock Brewery, Downtown SLC'
        },
        {
            lat: 40.720015, 
            lng: -111.541647, 
            infowindow: 'Red Rock Brewery, Park City'
        },{
            lat: 40.7572164, 
            lng: -111.872881, 
            infowindow: 'Desert Edge Trolley Square, SLC'
        },
        {
            lat: 40.7326101, 
            lng: -111.954182, 
            infowindow: 'Uinta Brewhouse Pub, SLC'
        },
        {
            lat: 40.7551396, 
            lng: -111.8878619, 
            infowindow: 'Bayou, SLC'
        },
        {
            lat: 40.765212, 
            lng: -111.886287, 
            infowindow: 'Beer Bar, SLC'
        },


        ]);
        handler.bounds.extendWith(markers);
        // handler.fitMapToBounds();
        handler.getMap().setCenter(new google.maps.LatLng(40.760992, -111.882880));
        handler.getMap().setZoom(10);
      }
    );    
  //   // var infowindow = new google.maps.InfoWindow({
  //   // content: "Wasatch Brewery";
  // });
});







