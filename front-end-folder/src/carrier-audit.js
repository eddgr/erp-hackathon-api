const BASE_URL = "http://localhost:3000"
const DELIVERIES_URL = `${BASE_URL}/v1/deliveries`
const SHIPMENTS_URL = `${BASE_URL}/v1/shipments`
const COMPANIES_URL = `${BASE_URL}/v1/companies`
const CARRIERS_URL = `${BASE_URL}/v1/carriers`


fetch(CARRIERS_URL)
.then(function(response) {
   return response.json();
 }) //response start
 .then(function(myJson) {
   console.log(JSON.stringify(myJson));
   var body = document.querySelector('#body')
   for (let i = 0; i < myJson.length; i++){
       // for (const id of myJson)

       // debugger
       body.innerHTML += `
       <br>
       <br>
       <div class= 'container'>
           <div class= 'card'>
           <p>carrier id : ${myJson[i].id}</p>
           <p>carrier name : ${myJson[i].name} </p>
           <div>
       <div>
       `
       // debugger
   }


 }); //fetch end
