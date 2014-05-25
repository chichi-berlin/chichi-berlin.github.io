---
layout: default
---
<div id='offer'>
Gebrauchte Räder<br>
Neu designte Räder<br>
Oldtimer<br>
Service<br> 
Montage<br>
Inspektionen<br>
Inzahlungnahme<br>
Ankauf
</div>


<div id='map'></div>

<div id='hours'>
<p>Öffnungszeiten 10:00 bis 19 Uhr - geschlossen Donnerstag und Sonntag</p>
</div>
<div id='custom'>
<p>Hier steht dann dein Text oder nichts</p>
</div>

<div id='ribbon'>
<img src="{{ content }}/images/ribbon.png"></img>
</div>


<script>
// var map = L.mapbox.map('map', 'chichi.i67bj050', { zoomControl:false })
//     .setView([52.481108,13.426183], 16);

var map = L.mapbox.map('map', 'chichi.i725d13j', { zoomControl:false })
    .setView([52.482,13.425884], 14);
var customIcon = L.icon({
    iconUrl: '{{ content }}/images/logo_p.png',

    iconSize:     [38, 31], 
    iconAnchor:   [20, 20], 
    popupAnchor:  [0, -20] 
});


var marker = L.marker([52.481035,13.425884], {icon: customIcon});
marker.addTo(map);
var popupContent=document.createElement('p');
popupContent.id = 'popup';
popupContent.innerHTML='<b>ChiChi</b><br>Flughafen Straße 50<br>12053 Berlin';
marker.bindPopup(popupContent).openPopup();

</script>



    



