const BASE_URL = "http://localhost:3000"
const DELIVERIES_URL = `${BASE_URL}/v1/deliveries`
const SHIPMENTS_URL = `${BASE_URL}/v1/shipments`
const COMPANIES_URL = `${BASE_URL}/v1/companies`
const CARRIERS_URL = `${BASE_URL}/v1/carriers`

function grab(selector){
  return document.querySelector(selector)
};
const company_container = grab('#company')
fetch(COMPANIES_URL)
  .then(function(resp) {
    return resp.json()
  })
  .then(function(comp) {
    company_container.innerHTML +=`
    <p>${comp[0].name}</p>
    `
  })
