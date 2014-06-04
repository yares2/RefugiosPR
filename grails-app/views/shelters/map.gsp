
%{--<!DOCTYPE html>--}%



%{--<title>Responsive HTML5 Google Maps Current User Location Demo - Digicution</title>--}%
%{--<script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>--}%

%{--<link rel="stylesheet" type="text/css" href="/css/result-light.css">--}%


%{--<script type='text/javascript' src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>--}%

%{--<style type='text/css'>--}%
%{--#map { height: 480px; width: 640px }--}%
%{--</style>--}%
%{--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />--}%

%{--<!-- Include Google Maps API -->--}%
%{--<script src="http://maps.google.com/maps/api/js?sensor=false"></script>--}%

%{--<!-- Include jQuery -->--}%
%{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>--}%

%{--<!-- Geolocation JS -->--}%
%{--<script type="text/javascript">--}%

    %{--function showMap() {--}%

        %{--//If HTML5 Geolocation Is Supported In This Browser--}%
        %{--if (navigator.geolocation) {--}%

            %{--//Use HTML5 Geolocation API To Get Current Position--}%
            %{--navigator.geolocation.getCurrentPosition(function(position){--}%

                        %{--//Get Latitude From Geolocation API--}%
                        %{--var latitude = position.coords.latitude;--}%

                        %{--//Get Longitude From Geolocation API--}%
                        %{--var longitude = position.coords.longitude;--}%

                        %{--var altitud = position.coords.altitude--}%

                        %{--//Define New Google Map With Lat / Lon--}%
                        %{--var center = new google.maps.LatLng(latitude, longitude);--}%

               %{--// url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=within_circle(x,-66.609792,17.993004, 10000)";--}%
                %{--url ="https://data.pr.gov/resource/refugios-en-puerto-rico.json?$where=within_circle(x,longitud, latitude,10000)";--}%

                %{--// Intialize our map--}%
                %{--//var center = new google.maps.LatLng(41.7656874,-66.609792);--}%
                %{--//var center = new google.maps.LatLng(17.993004,-66.609792); //aarroyo--}%

                %{--var mapOptions = {--}%
                    %{--zoom: 12,--}%
                    %{--center: center--}%
                %{--}--}%
                %{--var map = new google.maps.Map(document.getElementById("map"), mapOptions);--}%

                %{--// Retrieve our data and plot it--}%
                %{--$.getJSON(url, function(data, textstatus) {--}%
                    %{--console.log(data);--}%
                    %{--$.each(data, function(i, entry) {--}%
                        %{--var marker = new google.maps.Marker({--}%
                            %{--position: new google.maps.LatLng(entry.x.longitude,entry.x.latitude),--}%
                            %{--map: map,--}%
                            %{--title: location.name--}%

                            %{--//position: new google.maps.LatLng(entry.location_1.latitude,--}%
                            %{--//                                 entry.location_1.longitude),--}%
                        %{--});--}%
                    %{--});--}%
                %{--});--}%
            %{--});--}%



%{--//                        //Specify Google Map Options--}%
%{--//                        var mapOptions = {--}%
%{--//                            zoom: 15,--}%
%{--//                            center: coords,--}%
%{--//                            mapTypeControl: true,--}%
%{--//                            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL}, mapTypeId: google.maps.MapTypeId.ROADMAP};--}%
%{--//                        map = new google.maps.Map(document.getElementById("mapContainer"), mapOptions);--}%
%{--//                        var marker = new google.maps.Marker({--}%
%{--//                            position: coords,--}%
%{--//                            map: map,--}%
%{--//                            title: "You Are Here!"--}%
%{--//                        });--}%




        %{--}else {--}%

            %{--//Otherwise - Gracefully Fall Back If Not Supported... Probably Best Not To Use A JS Alert Though :)--}%
            %{--alert("Geolocation API is not supported in your browser.");--}%
        %{--}--}%

    %{--}--}%

    %{--//Once Page Is Populated - Initiate jQuery--}%
    %{--$(document).ready(function() {--}%

        %{--//Show The Map--}%
        %{--showMap();--}%

        %{--// When The Viewing Window Is Resized--}%
        %{--$(window).resize(function() {--}%

            %{--//CSS Resizes Container So Lets Recall The Map Function--}%
            %{--showMap();--}%

        %{--});--}%

    %{--});--}%

%{--</script>--}%

%{--<!-- Map Container Styling -->--}%
%{--<style type="text/css">--}%

%{--/* #Full Screen CSS (Desktop)--}%
%{--================================================== */--}%
%{--#mapContainer {--}%
    %{--height: 500px;--}%
    %{--width: 920px;--}%
    %{--border:10px solid #eaeaea;--}%
    %{--margin-top:20px;--}%
    %{--margin-bottom:20px;--}%
%{--}--}%

%{--/* #Tablet (Portrait)--}%
%{--================================================== */--}%
%{--@media only screen and (min-width: 768px) and (max-width: 959px) {--}%
    %{--#mapContainer {--}%
        %{--height: 500px;--}%
        %{--width: 708px;--}%
    %{--}--}%
%{--}--}%

%{--/*  #Mobile (Portrait)--}%
%{--================================================== */--}%
%{--@media only screen and (max-width: 767px) {--}%
    %{--#mapContainer {--}%
        %{--height: 260px;--}%
        %{--width: 260px;--}%
    %{--}--}%
%{--}--}%

%{--/* #Mobile (Landscape)--}%
%{--================================================== */--}%
%{--@media only screen and (min-width: 480px) and (max-width: 767px) {--}%
    %{--#mapContainer {--}%
        %{--height: 400px;--}%
        %{--width: 400px;--}%
    %{--}--}%
%{--}--}%

%{--</style>--}%

%{--</head>--}%

%{--<body>--}%

%{--<!-- Map Container -->--}%
%{--<div id="map" />--}%

%{--</body>--}%



%{--</html>--}%

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Socrata Example - jsFiddle demo by chrismetcalf</title>
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
<div id="map" />

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
                });
            });
        });
    });
    });
</script>
