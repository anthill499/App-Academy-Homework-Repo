import { createStore } from "redux";
import reducer from "./reducer";

const store = createStore(reducer); // state = createStore(reducer);
export default store;
