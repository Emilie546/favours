import mapboxgl from 'mapbox-gl';
import { setPosition } from './current_location'

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    if (mapElement.dataset.page === "show") {
      navigator.geolocation.watchPosition(function(position){succesPosition(markers, map, position)});
    }
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const succesPosition = (markers, map, pos) => {
  const mapElement = document.getElementById('map');
  const lng = pos.coords.longitude;
  const lat = pos.coords.latitude;
  const marker_user = {lng: lng, lat: lat};
  addMypositionToMap(map, marker_user);
  markers.push(marker_user);
  fitMapToMarkers(map, markers);
};

const addMypositionToMap = (map, marker) => {

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker({color: 'red'})
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

export { initMapbox }
