const BASE_URL = "http://localhost:3000"
const DELIVERIES_URL = `${BASE_URL}/v1/deliveries`
const SHIPMENTS_URL = `${BASE_URL}/v1/shipments`
const COMPANIES_URL = `${BASE_URL}/v1/companies`
const CARRIERS_URL = `${BASE_URL}/v1/carriers`

// ${COMPANIES_URL}/total_deliveries
// ${COMPANIES_URL}/on_time_deliveries
// ${COMPANIES_URL}/late_deliveries
// ${COMPANIES_URL}/total_cost
// ${COMPANIES_URL}/late_cost


document.addEventListener("DOMContentLoaded", function(){
  // # guarantee deliveries

  fetch(COMPANIES_URL + '/1/total_deliveries')
  .then(resp => resp.json())
  .then(json => console.log("Total Deliveries:", json))

  fetch(COMPANIES_URL + '/1/total_cost')
  .then(resp => resp.json())
  .then(json => console.log("Total Cost:", json))



  // # of g deliveries on time
  fetch(COMPANIES_URL + '/1/on_time_deliveries')
  .then(resp => resp.json())
  .then(json => console.log("On Time Deliveries:", json))

  // # late and cost needs to be refunded

  fetch(COMPANIES_URL + '/1/late_deliveries')
  .then(resp => resp.json())
  .then(json => console.log("Late Deliveries:", json))

  fetch(COMPANIES_URL + '/1/late_cost')
  .then(resp => resp.json())
  .then(json => console.log("Late Cost:", json))
})
