var marker1, marker2;

function initMap() {
    //Map options
    var mapoptions1 = {
        mapTypeControl: false,
        zoom: 8,
        center: {lat: 37.97945, lng: 23.71622},
        componentRestrictions: {country: "gr"}
    }
    //New Map
    var map = new google.maps.Map(document.getElementById('map'), mapoptions1);

    // var card = document.getElementById('pac-card');
    // var card = document.getElementById('pac-card');
    var input_from = document.getElementById('pac-input-from');
    var input_to = document.getElementById('pac-input-to');

    marker1 = new google.maps.Marker({
        map: map,
        draggable: false,
        position: {lat: 38.97945, lng: 23.71622},
        visible: false
    });

    marker2 = new google.maps.Marker({
        map: map,
        draggable: false,
        position: {lat: 37.97945, lng: 24.71622},
        visible: false
    });

    // var bounds = new google.maps.LatLngBounds(
    //   marker1.getPosition(), marker2.getPosition());
// map.fitBounds(bounds);

    google.maps.event.addListener(marker1, 'position_changed', update);
    google.maps.event.addListener(marker2, 'position_changed', update);

    update();

//   // var strictBounds = document.getElementById('strict-bounds-selector');

//   // map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);

    var autocomplete_from = new google.maps.places.Autocomplete(input_from, mapoptions1);
    var autocomplete_to = new google.maps.places.Autocomplete(input_to, mapoptions1);
    autocomplete_from.bindTo('bounds', map);
    autocomplete_to.bindTo('bounds', map);
// autocomplete_from.setFields(
//             ['address_components', 'geometry', 'icon', 'name']);
// autocomplete_to.setFields(
//             ['address_components', 'geometry', 'icon', 'name']);


    var infowindow = new google.maps.InfoWindow();
    var infowindowContent = document.getElementById('infowindow-content');
    infowindow.setContent(infowindowContent);
//   var marker = new google.maps.Marker({
//     map: map,
//     position: new google.maps.LatLng(0, -29)
//   });


    function xristina(param, mark) {
        var place = param.getPlace();
        if (place && place.geometry) {

            infowindow.close();
            mark.setVisible(false);

            // If the place has a geometry, then present it on a map.
            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZoom(17);  // Why 17? Because it looks good.
            }
            mark.setPosition(place.geometry.location);
            mark.setVisible(true);


            var address = '';
            if (place.address_components) {
                address = [
                    (place.address_components[0] && place.address_components[0].short_name || ''),
                    (place.address_components[1] && place.address_components[1].short_name || ''),
                    (place.address_components[2] && place.address_components[2].short_name || '')
                ].join(' ');
            }

            infowindowContent.children['place-icon'].src = place.icon;
            infowindowContent.children['place-name'].textContent = place.name;
            infowindowContent.children['place-address'].textContent = address;
            infowindow.open(map, marker);

        }
    }


    autocomplete_to.addListener('place_changed', function () {
        xristina(autocomplete_to, marker2);
    });
    autocomplete_from.addListener('place_changed', function () {
        xristina(autocomplete_from, marker1);
    });


}

function update() {
    var path = [marker1.getPosition(), marker2.getPosition()];

    var latlngorigin = document.getElementById('latlngorigin').value = path[0].toString();

    var latlngStrOrigA = latlngorigin.split('(');
    var latorigsplitA = latlngStrOrigA[1].split(')');
    var latlngStrorigin = latorigsplitA[0].split(',', 2);
    var latorigin = parseFloat(latlngStrorigin[0]);
    var lngorigin = parseFloat(latlngStrorigin[1]);
    document.getElementById('latorigin').value = latorigin;
    document.getElementById('lngorigin').value = lngorigin;


    var latlngdestination = document.getElementById('latlngdestination').value = path[1].toString();

    var latlngStrDesA = latlngdestination.split('(');
    var latorigsplitA = latlngStrDesA[1].split(')');
    var latlngStrDestination = latorigsplitA[0].split(',', 2);
    var latdestination = parseFloat(latlngStrDestination[0]);
    var lngdestination = parseFloat(latlngStrDestination[1]);
    document.getElementById('latdestination').value = latdestination;
    document.getElementById('lngdestination').value = lngdestination;


}
