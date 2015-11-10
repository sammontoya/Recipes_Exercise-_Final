// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
      var coordinates = new google.maps.LatLng(32.7475811,-117.1311596);
      var mapOptions = {
        center: coordinates,
        zoom:1,
        mapTypeId:google.maps.MapTypeId.ROADMAP
      };
      var mapContainer = $("#googleMap")[0];
      var map = new google.maps.Map(mapContainer, mapOptions);
      });
