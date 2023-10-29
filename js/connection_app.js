// Simple App that loads a picture.
const App = (onstart, onload) => {
  onstart();

  const h1 = document.createElement("h1");
  h1.innerText = "App";

  const img = document.createElement("img");
  img.src = "hhttp://mjge.in/admin/assets/images/logo.png";
  img.className = "loading";
  img.onload = () => {
    img.className = "";
    onload();
  };

 // const app = document.getElementById("app");
//  app.innerHTML = "";
//  app.append(h1);
//  app.append(img);
}

let isSlow;
let loaded;

const loadApp = () => {
  App(
    () => {
      loaded = false;
      isSlow = setTimeout(() => {
        // Show "Slow Internet Connection." message.
        document.body.className = "theme-teal";
        console.debug("slow");
      //  alert("Slow...")
      }, 3000); // Intentionally a low number for testing. Try some different values here, or play with different Internet Throttling setting.
    },
    () => {
      loaded = true;
      clearTimeout(isSlow);
      setTimeout(() => { document.body.className = ""; }, 3000); // Hide message after 1s.
      console.debug("loaded");
  });
};


// We are "offline".
window.addEventListener("offline", () => {
  // Show "No Internet Connection." message.
  document.body.className = "theme-red";
});


// When we back "online".
window.addEventListener("online", () => {
  // Show "Back online" message.
  document.body.className = "theme-indigo";
  console.debug("online");

  // Hide message after 1s.
  setTimeout(() => { document.body.className = ""; }, 1000);

  // There was not enough time to load the App. Do it again.
  if (!loaded) {
    console.debug("Reconnecting...");
    loadApp();
  }
});


window.addEventListener("DOMContentLoaded", loadApp);