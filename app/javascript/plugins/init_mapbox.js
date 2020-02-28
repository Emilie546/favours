import mapboxgl from 'mapbox-gl';
import { setPosition } from './current_location'

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const mapMarkers = [];

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers ,mapMarkers);

    fitMapToMarkers(map, markers);
    if (mapElement.dataset.page === "show") {
      navigator.geolocation.watchPosition((position) => {
         succesPosition(markers, map, position, mapMarkers)
      });
    }
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const succesPosition = (markers, map, pos, mapMarkers) => {
  const mapElement = document.getElementById('map');
  const lng = pos.coords.longitude;
  const lat = pos.coords.latitude;
  const marker_user = {lng: lng, lat: lat};


  console.log(mapMarkers)
  mapMarkers.forEach((m) => {
    m.remove();
  });

  addMarkersToMap(map,markers,mapMarkers);
  addMypositionToMap(map, marker_user, mapMarkers);

  fitMapToMarkers(map, markers.concat([marker_user]));

};

const addMypositionToMap = (map, marker, mapMarkers) => {

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const mapMarker = new mapboxgl.Marker({color: 'red'})
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
    mapMarkers.push(mapMarker);

};

const addMarkersToMap = (map, markers, mapMarkers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const mapMarker = new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);

    mapMarkers.push(mapMarker);

  });
};

export { initMapbox }
