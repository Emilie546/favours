export const setPosition = () => {
  const position = navigator.geolocation.watchPosition(succesPosition);

}

const succesPosition = (pos) => {
  const mapElement = document.getElementById('map');
  const lng = pos.coords.longitude;
  const lat = pos.coords.latitude;
  const marker_user = [lng, lat];
  console.log(marker_user)
  // marker_user.push(JSON.parse(mapElement.dataset.marker_user));
  // console.log(marker_user);
};

const setMarker = () => {
  const button = document.querySelector('#location');
  button.addEventListener('click', sendPosition);
};


// const sendPosition = () => {
//   const position = navigator.geolocation.getCurrentPosition(succesPosition);
// }
// const succesPosition = (pos) => {
//   const button = document.querySelector('#location');
//   const csrfToken = document.querySelector("[name='csrf-token']").content;
//   fetch(button.dataset.path, {
//     method: "POST",
//     headers: {
//       'X-CSRF-Token': csrfToken,
//       'Content-Type': 'application/json'
//     },
//     credentials: "same-origin",
//     body: JSON.stringify({
//       alert: {
//         latitude: pos.coords.latitude,
//         longitude : pos.coords.longitude
//       }
//     })
//   })
//     .then(response => response.json())
//     .then((data) => {
//       window.location.href = data.path;
//     });
// };
// const initSendPosition = () => {
//   const button = document.querySelector('#location');
//   button.addEventListener('click', sendPosition);
// };
// export { initSendPosition };
