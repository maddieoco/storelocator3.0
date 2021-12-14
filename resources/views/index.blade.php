<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body style="background-color: #f8fafc">
    <div class="container mt-5">
        <div class="row bg-white" id="location_form">
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
                
                {{-- <div id="map"  style="width:500px; height:300px;"></div> --}}
            </div>
            <div class="col-md-6">
                <img src="{{asset('images/map.jpg')}}" style="width: 100%" alt="">
            </div>
        </div>

        {{-- RESULTS --}}
        <div class="row mt-5 bg-white" style="display: none" id="result_container">
            <div class="col-md-12 pt-3 pb-3">
                <span id="result_count"></span>
                RESULTS FOUND
                
                <button type="button" class="btn btn-outline-secondary float-right" onclick="toggleForm()">SEARCH AGAIN</button>
            </div>
            <div class="col-md-4" id="result_cards" style="height: 500px;overflow-y: scroll;">
                {{-- <div class="card" style="width: 100%">
                    <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="card-link">Card link</a>
                    </div>
                </div> --}}
            </div>
            <div class="col-md-8">
                <div id="map"  style="height:500px;"></div>
            </div>
        </div>
    </div>
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
        var all_locations /* = {!!json_encode($locations)!!} */;

        //initialize map on document ready
        $(document).ready(function(){
            $(window).keydown(function(event){
                if(event.keyCode == 13) {
                    event.preventDefault();
                    return false;
                }
            });
            
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

            getLocations();
        });

        function getLocations(){
            all_locations=[];
            $.ajax({
                url: window.location.origin+'/get-locations',
                type: 'GET',
                success: function (res) {
                    if (res.status=='success') {
                        console.log(res.locations);
                        all_locations = res.locations;
                    }
                    else if(res.status=='error') {
                        alert('Locations not found');
                    }
                }
            });
        }

        var result_count,result_cards;
        function showCloseLocations() {
            console.log('show close locations');
            result_cards='';result_count = 0;
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
                                options:{fillColor:"#3a3a3a78"}, 
                                map: map
                            });
                            // if (radius_circle) map.fitBounds(radius_circle.getBounds());
                            for (var j = 0; j < all_locations.length; j++) {
                                (function (location) {
                                    var marker_lat_lng = new google.maps.LatLng(location.lat, location.lng);
                                    
                                    var distance_from_location = google.maps.geometry.spherical.computeDistanceBetween(address_lat_lng, marker_lat_lng); //distance in meters between your location and the marker
                                    
                                    // console.log(distance_from_location, radius_mi * 1609.34);
                                    if (distance_from_location <= radius_mi * 1609.34) {
                                        result_count=result_count+1;
                                        var new_marker = new google.maps.Marker({
                                            position: marker_lat_lng,
                                            map: map,
                                            title: location.company
                                        });


                                        google.maps.event.addListener(new_marker, 'click', function () {
                                            if(infowindow){
                                                infowindow.setMap(null);
                                                infowindow = null;
                                            }
                                            infowindow = new google.maps.InfoWindow(
                                                { 
                                                    content: '<div style="text-align:left">'
                                                                +'<p><b>Company:</b> ' + location.company + '</p>'
                                                                +'<p><b>Address1:</b> ' + location.address1 + '</p>'
                                                                +'<p><b>Location:</b>'+location.country+', '+location.city+', '+location.state+' '+location.zip+'</p>'
                                                                +'<p><b>Email:</b> ' + location.email + '</p>'
                                                                +'<p><b>Phone1:</b> ' + location.phone1 + '</p>'
                                                            +'</div>',
                                                    size: new google.maps.Size(150,50),
                                                    pixelOffset: new google.maps.Size(0, -30)
                                                    , position: marker_lat_lng, map: map
                                                }
                                            );
                                        });
                                        markers_on_map.push(new_marker);
                                        prepareResult(location,markers_on_map.length - 1);
                                        $('#result_cards').html(result_cards);
                                        $('#result_count').html(result_count);
                                    }
                                })(all_locations[j]);
                            }
                            
                            $('#location_form').hide();
                            $('#result_container').show();
                            
                            if (radius_circle) map.fitBounds(radius_circle.getBounds());
                        } else {
                            alert("No results found while geocoding!");
                        }
                    } else {
                        alert("Geocode was not successful: " + status);
                    }
                });
            }
        }

        function prepareResult(location,marker_index){
            // console.log(marker.position);
            result_cards += '<div class="card">'
                            +'<div class="card-body">'
                                +'<h5 class="card-title">'+location.company+'</h5>'
                                +'<p class="card-text">'+location.address1+'</p>'
                                +'<p class="card-text">'+location.city+', '+location.state+' '+location.zip+'</p>'
                                +'<p class="card-text">'+location.phone1+'</p>'
                                +'<p class="card-text">'+location.email+'</p>'
                                +'<a href="#" onclick="showMarkerContent('+marker_index+')" class="btn btn-sm btn-outline-secondary">Show on map</a>'
                            +'</div>'
                        +'</div>';
        }

        function toggleForm(){
            $('#result_container').hide();
            $('#location_form').show();
        }

        function showMarkerContent(marker_index){
            // map.setZoom(17);
            // map.panTo(markers_on_map[marker_index].position);
            google.maps.event.trigger(markers_on_map[marker_index], 'click');
        }
    </script>
</body>
</html>
