const BASE_URL = "http://localhost:3000"
const DELIVERIES_URL = `${BASE_URL}/v1/deliveries`
const SHIPMENTS_URL = `${BASE_URL}/v1/shipments`
const COMPANIES_URL = `${BASE_URL}/v1/companies`
const CARRIERS_URL = `${BASE_URL}/v1/carriers`

function grab(ele) {
  return document.querySelector('ele')
}


fetch(CARRIERS_URL, {method: "GET"})
  .then(function(resp) {
    return resp.json()
  })
  .then(function(carriers) {
    const carrierContainer = grab('#carrier-container')
    carriers.forEach(function(carrier){
      // debugger
      console.log(carrier)
      carrierContainer.innerHTML += `
        <tr id="cname${carrier.id}">
          <td>${carrier.name}</td>
        </tr>
      `
      })
  })
