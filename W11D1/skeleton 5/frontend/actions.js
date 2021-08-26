function selectLocation(cityString, jobsArray) {
  return { type: "SWITCH_LOCATION", city: cityString, jobs: jobsArray };
}

window.selectLocation = selectLocation;
export default selectLocation;
