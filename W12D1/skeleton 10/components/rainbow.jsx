import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

import Red from "./red";
import Green from "./green";
import Blue from "./blue";
import Violet from "./violet";

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        {}

        <div id="rainbow">
          {<Route path="/red" render={() => <Red />} />}
          {<Route path="/green" render={() => <Green />} />}
          {<Route path="/blue" render={() => <Blue />} />}
          {<Route path="/violet" render={() => <Violet />} />}
        </div>
      </div>
    );
  }
}

export default Rainbow;
