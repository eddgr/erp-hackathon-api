const BASE_URL = "http://localhost:3000"
const DELIVERIES_URL = `${BASE_URL}/v1/deliveries`
const SHIPMENTS_URL = `${BASE_URL}/v1/shipments`
const COMPANIES_URL = `${BASE_URL}/v1/companies`
const CARRIERS_URL = `${BASE_URL}/v1/carriers`

console.log("hello")

// # guarantee deliveries

fetch(DELIVERIES_URL)
  .then(resp => resp.json())
  .then(json => console.log(json))



// # of g deliveries on time


// # late and cost needs to be refunded
