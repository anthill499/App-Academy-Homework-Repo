import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root";
// import logger from "redux-logger";

document.addEventListener("DOMContentLoaded", () => {
  const preloadedState = localStorage.state
    ? JSON.parse(localStorage.state)
    : {};
  const store = configureStore(preloadedState);
  const root = document.getElementById("content");
  ReactDOM.render(<Root store={store} />, root);
});

const addLoggingToDispatch = (store) => (next) => (action) => {
  // let dispatch = store.dispatch;
  const result = next(action);
  return result;
};

const applyMiddlewares = (store, listMiddleWares) => {
  let dispatch = store.dispatch();
  listMiddleWares.forEach((mw) => (dispatch = mw(store)(dispatch)));
  return Object.assign({}, store, { dispatch });
};
