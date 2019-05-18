Example GET request:
```
fetch('http://localhost:3000/v1/companies')
 .then(resp=>resp.json())
 .then(company=>console.log(company))
```

Example POST request to create a new company:
```
fetch('http://localhost:3000/v1/companies', {
	method: "POST",
	headers: {
		"Content-Type": "application/json"
	},
	body: JSON.stringify({
		company: {
			"name": "Second company"
		}
	})
})
	.then(resp=>resp.json())
```
