$(document).ready(function() {
  var search = $('#search').get(0);

  if (search) {
    var autocomplete = new google.maps.places.Autocomplete(search, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed');
    google.maps.event.addDomListener(search, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

// function onPlaceChanged() {
//   var place = this.getPlace();
//   var components = getSearchComponents(place);

//   $('#search').trigger('blur').val(components.search);
//   $('#zip_code').val(components.zip_code);
//   $('#city').val(components.city);
//   if (components.country_code) {
//     $('#country').val(components.country_code);
//   }
// }

function getSearchComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  for (var i in place.search_components) {
    var component = place.search_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    search: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}
