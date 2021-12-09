@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
          @if (session('status'))
              <div class="alert alert-success" role="alert">
                  {{ session('status') }}
              </div>
          @endif
            <div class="card">
                <div class="card-header">Add Shop</div>

                <div class="card-body">
                  @if($errors->any())
                    <ul style="background: red;color:white">
                      @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                      @endforeach
                    </ul>
                  @endif

                    @php 
                    $route = route('shop.store');
                    if(isset($shop)){
                      $route = route('shop.update',$shop->id);
                    }
                    @endphp
                    <form method="POST" action="{{$route}}">
                      @csrf
                      @if(isset($shop))
                        {{ method_field('PATCH') }}
                      @endif

                      <input type="hidden" name="lat" id="lat" value="{{isset($shop)?$shop->lat : ''}}">
                      <input type="hidden" name="lng" id="lng" value="{{isset($shop)?$shop->lng : ''}}">
                      <div class="row">
                        <div class="col">
                          <div class="form-group">
                            <label>Company</label>
                            <input type="text" class="form-control" name="company" required value="{{isset($shop)?$shop->company : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          {{-- <div class="form-group">
                              <label>Address1</label>
                              <input type="text" class="form-control" name="address1" required value="{{isset($shop)?$shop->address1 : ''}}" >
                          </div> --}}

                          <div class="form-group">
                            <label for="location" class="form-label">Address1</label>
                            <div class="input-group">
                                <input type="text" name="address1" id="current" required="" onFocus="initializeAutocompleteLocOne()" class="form-control" aria-required="true" value="{{isset($shop)?$shop->address1 : ''}}" >
                                {{-- <span class="input-group-btn">
                                  <button style="border-radius: unset;" type="button" class="btn btn-primary" id="current_loc_btn" >Use My Location</button>
                                </span> --}}
                            </div>
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>Address2</label>
                              <input type="text" class="form-control" name="address2" value="{{isset($shop)?$shop->address2 : ''}}">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col">
                          <div class="form-group">
                              <label>City</label>
                              <input type="text" class="form-control" name="city" required value="{{isset($shop)?$shop->city : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>State</label>
                              <input type="text" class="form-control" name="state" required value="{{isset($shop)?$shop->state : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>ZIP</label>
                              <input type="text" class="form-control" name="zip" value="{{isset($shop)?$shop->zip : ''}}">
                          </div>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col">
                          <div class="form-group">
                              <label>Country</label>
                              <input type="text" class="form-control" name="country" required value="{{isset($shop)?$shop->country : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>Email</label>
                              <input type="email" class="form-control" name="email" required value="{{isset($shop)?$shop->email : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>Phone</label>
                              <input type="text" class="form-control" name="phone1" required value="{{isset($shop)?$shop->phone1 : ''}}">
                          </div>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col">
                          <div class="form-group">
                              <label>Type</label>
                              <input type="text" class="form-control" name="type" value="{{isset($shop)?$shop->type : ''}}">
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-group">
                              <label>Website</label>
                              <input type="text" class="form-control" name="website" value="{{isset($shop)?$shop->website : ''}}">
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBqqhqN5q545cx57GD5ht6JVidUQuuGd34&sensor=false&v=3&libraries=geometry,places&callback=initAutocomplete" async defer></script>
<script type="text/javascript">
  var country,city,state,zipcode,address;

  function initializeAutocompleteLocOne(){
      var input = document.getElementById('current');
      var options = {
        //types: ['(regions)'],
        componentRestrictions: {country: "PK"}
      };
      //var options = {}

      var autocomplete = new google.maps.places.Autocomplete(input, options);

      google.maps.event.addListener(autocomplete, 'place_changed', function() {
        var place = autocomplete.getPlace();
        var lat = place.geometry.location.lat();
        var lng = place.geometry.location.lng();
        var placeId = place.place_id;
        // to set city name, using the locality param
        var componentForm = {
          locality: 'short_name',
        };
        for (var i = 0; i < place.address_components.length; i++) {
        var addressType = place.address_components[i].types[0];
        if (componentForm[addressType]) {
          city = place.address_components[i][componentForm[addressType]];
        }

        if(addressType == 'country'){
          country = place.address_components[i]['long_name'];
        }
      }

      var geocoder = new google.maps.Geocoder;
      var infowindow = new google.maps.InfoWindow;
      geocodeLatLng(geocoder, lat,lng);
      
      });
  }

  function initMap(latlng) {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 8,
      center: {lat: 40.731, lng: -73.997}
    });
    var geocoder = new google.maps.Geocoder;
    var infowindow = new google.maps.InfoWindow;
    geocodeLatLng(geocoder, latlng);
    
  }

  function geocodeLatLng(geocoder, lat,lng) {
    var latlng = {lat: lat, lng: lng};
    
    geocoder.geocode({'location': latlng}, function(results, status) {
      if (status === 'OK') {
      if (results[0]) {
          var componentForm = {
              locality: 'short_name',
          };
          for (var i = 0; i < results[0].address_components.length; i++) {
              var addressType = results[0].address_components[i].types[0];
              if (componentForm[addressType]) {
                  city = results[0].address_components[i][componentForm[addressType]];
              }
  
              if(addressType == 'country'){
                  country = results[0].address_components[i]['long_name'];
              }
              if(addressType == "administrative_area_level_1"){
                  state = results[0].address_components[i]['long_name'];
              }
              if(addressType == "postal_code"){
                  zipcode = results[0].address_components[i]['long_name'];
              }
          }
        $('[name="city"]').val(city);
        $('[name="country"]').val(country);
        $('[name="state"]').val(state);
        $('[name="zip"]').val(zipcode);
        $('[name="lat"]').val(lat);
        $('[name="lng"]').val(lng);

        // document.getElementById("current").value =  results[0].formatted_address ;
        
      } else {
        window.alert('No results found');
      }
      } else {
      window.alert('Geocoder failed due to: ' + status);
      }
    });
  }

</script>
@endsection
