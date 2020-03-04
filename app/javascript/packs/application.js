import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { setPosition } from '../plugins/current_location';
import { initAutocomplete } from '../plugins/init_autocomplete';


initMapbox();
initAutocomplete();
// setPosition();
