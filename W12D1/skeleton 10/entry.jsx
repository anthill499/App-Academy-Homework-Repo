import React from "react";
import ReactDOM from "react-dom";
import { HashRouter } from "react-router-dom";
import Rainbow from "./components/rainbow.jsx";

// makes the router available to any descendent each router components
// such as <Route/> and <Link/>

const Root = () => (
  <HashRouter>
    <Rainbow />
  </HashRouter>
);

document.addEventListener("DOMContentLoaded", () => {
  const main = document.getElementById("main");
  ReactDOM.render(<Root />, main);
});
