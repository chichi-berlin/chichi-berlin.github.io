---
layout: default
---
<div id='hours'>
Montag bis Samstag: 10 bis 19 Uhr
</div>

<div id='offer'>
Gebrauchte Räder<br>
Neu designte Räder<br>
Schöne Oldtimer<br>
Service Montage<br>
Inspektionen<br>
Inzahlungnahme<br>
Ankauf
</div>


<div id='map'></div>


<script>
var map = L.mapbox.map('map', 'chichi.i67bj050', { zoomControl:false })
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
    var content = '<p>Flughafen Straße 50</p>' +
        '<p>12053 Berlin</p>';
    layer.bindPopup(content).openPopup();;
});
</script>

