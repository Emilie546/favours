const setPosition = () => {
  const position = navigator.geolocation.watchPosition(succesPosition);
}

const succesPosition = (pos) => {

};

const setMarker = () => {
  const button = document.querySelector('#location');
  button.addEventListener('click', sendPosition);
};
