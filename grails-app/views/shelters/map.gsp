
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Refugios en  Puerto Rico</title>
    <meta name="layout" content="kickstart" />

    <script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>

    <link rel="stylesheet" type="text/css" href="/css/result-light.css">


    <script type='text/javascript' src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>

    <style type='text/css'>
    #map { height: 480px; width: 640px }
    </style>

</head>
<body>
<title>Google Maps Example</title>

<body>
<div id="map" class="center"/>

<script type="text/javascript">
    $(window).load(function() {

        var  latitude
        var longitude
        //Use HTML5 Geolocation API To Get Current Position
        navigator.geolocation.getCurrentPosition(function(position){

        //Get Latitude From Geolocation API
        latitude = position.coords.latitude;

        //Get Longitude From Geolocation API
         longitude = position.coords.longitude;

          //  alert(latitude)
        var altitud = position.coords.altitude




        //Define New Google Map With Lat / Lon
       // var center = new google.maps.LatLng(latitude, longitude);


        // Construct the catalog query string
        //url = 'http://data.ct.gov/resource/9k2y-kqxn.json?organization_type=Public%20School%20Districts&$$app_token=CGxaHQoQlgQSev4zyUh5aR5J3';
        //url = 'https://data.pr.gov/resource/refugios-en-puerto-rico.json';
        //url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=y%20%3E%2017.940414000000001";
        //url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=within_circle%28x,-66.457573,18.263279,%2010000%29";
        //url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=within_circle(x,-65.478973,18.120427, 10000)";
        url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=within_circle(x,"+longitude+","+latitude+", 10000)";

        // Intialize our map
        //var center = new google.maps.LatLng(41.7656874,-66.609792);
        var center = new google.maps.LatLng(latitude,longitude); //aarroyo



        var mapOptions = {
            zoom: 12,
            center: center
        }
        var map = new google.maps.Map(document.getElementById("map"), mapOptions);

            var marker1 = new google.maps.Marker({
                position: new google.maps.LatLng(latitude,longitude),
                map: map


                //position: new google.maps.LatLng(entry.location_1.latitude,
                //                                 entry.location_1.longitude),
            }); marker1.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png')
            var infowindow = new google.maps.InfoWindow({
                content: "Usted está aquí"
            });

            google.maps.event.addListener(marker1, 'click', function() {
                infowindow.open(map,marker1);
            });

        // Retrieve our data and plot it
        $.getJSON(url, function(data, textstatus) {
            console.log(data);
            $.each(data, function(i, entry) {
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(entry.x.longitude,entry.x.latitude),
                    map: map,
                    title: location.name


                    //position: new google.maps.LatLng(entry.location_1.latitude,
                    //                                 entry.location_1.longitude),
                }); marker.setIcon('http://maps.google.com/mapfiles/ms/icons/green-dot.png')

                var infowindow = new google.maps.InfoWindow({
                    content: entry.description
                });

                google.maps.event.addListener(marker, 'click', function() {
                    infowindow.open(map,marker);
                });
            });
        });
    });
    });
</script>
