---
layout: default
---
<div id='offer'>
Gebrauchte Räder<br>
Neu designte Räder<br>
Oldtimer<br>
Service Montage<br>
Inspektionen<br>
Inzahlungnahme<br>
Ankauf
</div>


<div id='map'></div>

<div id='hours'>
<p>Montag bis Samstag: 10 bis 19 Uhr</p>
</div>

<div id='ribbon'>
<img src="{{ content }}/images/ribbon.png"></img>
</div>


<script>
// var map = L.mapbox.map('map', 'chichi.i67bj050', { zoomControl:false })
//     .setView([52.481108,13.426183], 16);

var map = L.mapbox.map('map', 'chichi.i725d13j', { zoomControl:false })
    .setView([52.481108,13.426183], 16);

var featureLayer = L.mapbox.featureLayer({
        type: 'FeatureCollection',
        features: [{
            type: 'Feature',
            properties: {
                size: 5,
                population: 10
            },
            geometry: {
                type: 'Point',
                coordinates: [13.426183,52.481108]
            }
        }]
    })
    .addTo(map);

featureLayer.eachLayer(function(layer) {
    var popupContent=document.createElement('p');
    popupContent.id = 'popup';
    popupContent.innerHTML='<b>ChiChi</b><br>Flughafen Straße 50<br>12053 Berlin';
    layer.bindPopup(popupContent).openPopup();
});
</script>







