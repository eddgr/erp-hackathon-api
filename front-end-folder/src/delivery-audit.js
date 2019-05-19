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
  const totalDeliveries = document.querySelector("#totalDeliveries")
  const totalCost = document.querySelector("#totalCost")
  const deliveryContainer = document.querySelector("#delivery-container")
  const onTimeDeliveries = document.querySelector("#onTimeDeliveries")
  const lateDeliveries = document.querySelector("#lateDeliveries")
  const lateCost = document.querySelector("#lateCost")

  fetch(COMPANIES_URL + '/1/total_deliveries')
  .then(resp => resp.json())
  .then(totalDeliveriesText => {
    totalDeliveries.innerText = totalDeliveriesText
  })

  fetch(COMPANIES_URL + '/1/total_cost')
  .then(resp => resp.json())
  .then(totalCostText => {
    totalCost.innerHTML = `$ ${totalCostText}`
  })



  // # of g deliveries on time
  fetch(COMPANIES_URL + '/1/on_time_deliveries')
  .then(resp => resp.json())
  .then(onTimeDeliveriesText => {
    onTimeDeliveries.innerText = onTimeDeliveriesText
  })

  // # late and cost needs to be refunded

  fetch(COMPANIES_URL + '/1/late_deliveries')
  .then(resp => resp.json())
  .then(lateDeliveriesText => {
    lateDeliveries.innerText = lateDeliveriesText
  })

  fetch(COMPANIES_URL + '/1/late_cost')
  .then(resp => resp.json())
  .then(lateCostText => {
    lateCost.innerHTML = `$ ${lateCostText}`
  })
})
