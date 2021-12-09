@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row bg-white">
        <div class="col-md-6 text-center">
            <button type="button" class="btn btn-outline-secondary mt-5 mb-3 no-pointer">FIND A DEALER</button>
            <p>To locate a retailer that carries Park Hill Collection in your area, please enter your zip code and select a distance range.</p>
            <p>If you do not find the store that you are looking for,
                please contact us at:</p>
            <p><a href=""><i class="fa fa-envelope"></i> customerservice@parkhillcollection.com</a></p>
            <p><a href=""><i class="fa fa-phone"></i> 501-603-0600 / 1.888.603.3334</a></p>
            <form class="text-left mt-5" method="POST" action="{{route('locate')}}">
                @csrf
                <div class="form-group">
                    {{-- <label for="zipcode">Zip Code</label> --}}
                    <input type="text" class="form-control" name="zipcode" id="zipcode" placeholder="Zip / postal code">
                </div>
                <div class="form-group">
                    <select class="form-control" name="radius" id="radius">
                        <option value="100">100 miles</option>
                        <option value="200">200 miles</option>
                        <option value="300">300 miles</option>
                        <option value="400">400 miles</option>
                        <option value="500">500 miles</option>
                    </select>
                </div>
                <button type="button" onclick="showCloseLocations()" class="btn btn-outline-secondary w-100">Submit</button>
            </form>
              
              <div id="map"  style="width:500px; height:300px;"></div>
        </div>
        <div class="col-md-6">
            <img src="{{asset('images/map.jpg')}}" style="width: 100%" alt="">
        </div>
    </div>
</div>
@endsection

@section('scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBqqhqN5q545cx57GD5ht6JVidUQuuGd34&sensor=false&v=3&libraries=geometry,places&callback=initAutocomplete"
  ></script>
    <script>
        var map = null;
        var radius_circle;
        var markers_on_map = [];
        var geocoder;
        var infowindow;
        
        //all_locations is just a sample, you will probably load those from database
        var all_locations = {!!json_encode($locations)!!};

        //initialize map on document ready
        $(document).ready(function(){
            var latlng = new google.maps.LatLng(40.723080, -73.984340); //you can use any location as center on map startup
            var myOptions = {
                zoom: 1,
                center: latlng,
                mapTypeControl: true,
                mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
                navigationControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("map"), myOptions);
            geocoder = new google.maps.Geocoder();
            google.maps.event.addListener(map, 'click', function(){
                if(infowindow){
                    infowindow.setMap(null);
                    infowindow = null;
                }
            });
        });

        
        function showCloseLocations() {
            var i;
            var radius_mi = $('#radius option:selected').val();
            var address = $('#zipcode').val();
            //remove all radii and markers from map before displaying new ones
            if (radius_circle) {
                radius_circle.setMap(null);
                radius_circle = null;
            }
            for (i = 0; i < markers_on_map.length; i++) {
                if (markers_on_map[i]) {
                    markers_on_map[i].setMap(null);
                    markers_on_map[i] = null;
                }
            }

            if (geocoder) {
                geocoder.geocode({'address': address}, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
                            var address_lat_lng = /* results[0].geometry.location; */new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng());
                            
                            radius_circle = new google.maps.Circle({
                                center: address_lat_lng,
                                radius: radius_mi * 1609.34,
                                clickable: false,
                                map: map
                            });
                            if (radius_circle) map.fitBounds(radius_circle.getBounds());
                            for (var j = 0; j < all_locations.length; j++) {
                                (function (location) {
                                    geocoder.geocode({'address': location.ZIP}, function (results2, status2) {
                                        
                                        if (status2 == google.maps.GeocoderStatus.OK) {
                                            if (status2 != google.maps.GeocoderStatus.ZERO_RESULTS) {
                                                var marker_lat_lng = new google.maps.LatLng(results2[0].geometry.location.lat(), results2[0].geometry.location.lng());
                                                
                                                var distance_from_location = google.maps.geometry.spherical.computeDistanceBetween(address_lat_lng, marker_lat_lng); //distance in meters between your location and the marker
                                                
                                                // console.log(distance_from_location, radius_mi * 1609.34);
                                                if (distance_from_location <= radius_mi * 1609.34) {
                                                    var new_marker = new google.maps.Marker({
                                                        position: marker_lat_lng,
                                                        map: map,
                                                        title: location.name
                                                    });      								
                                                    google.maps.event.addListener(new_marker, 'click', function () {
                                                        if(infowindow){
                                                            infowindow.setMap(null);
                                                            infowindow = null;
                                                        }
                                                        infowindow = new google.maps.InfoWindow(
                                                            { 
                                                                content: '<div style="text-align:left">'
                                                                            +'<p>Company: ' + location.Company + '</p>'
                                                                            +'<p>Address1: ' + location.Address1 + '</p>'
                                                                            +'<p>City: ' + location.City + '</p>'
                                                                            +'<p>State: ' + location.State + '</p>'
                                                                            +'<p>Country: ' + location.Country + '</p>'
                                                                            +'<p>Email: ' + location.Email + '</p>'
                                                                            +'<p>Phone1: ' + location.Phone1 + '</p>'
                                                                        +'</div>',
                                                                size: new google.maps.Size(150,50),
                                                                pixelOffset: new google.maps.Size(0, -30)
                                                                , position: marker_lat_lng, map: map
                                                            }
                                                        );
                                                    });
                                                    markers_on_map.push(new_marker);
                                                }
                                            }
                                        }
                                    });
                                })(all_locations[j]);
                            }
                        } else {
                            alert("No results found while geocoding!");
                        }
                    } else {
                        alert("Geocode was not successful: " + status);
                    }
                });
            }
        }
    </script>
@endsection
