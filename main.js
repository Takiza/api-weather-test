document.getElementById("form").addEventListener('submit', function(event){
	event.preventDefault();

	let city = document.getElementById("city").value;
	console.log(city);

	const request = new XMLHttpRequest();
	const url = "app.php";
	const params = "city=" + city;
	console.log(params);

	request.responseType = "json";
	request.open("POST", url, true);
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

	request.addEventListener("readystatechange", () => {
		if(request.readyState === 4 && request.status === 200) {
			let obj = request.response;

			document.getElementById("wt").innerHTML = "";

			for (var i = 0; i < obj.length; i++) {
				let date = new Date();
				date.setTime(parseInt(obj[i].Dt)*1000);
				document.getElementById("wt").innerHTML += "<tr><th scope=\"row\">"+date.getDate()+"."+date.getMonth()+" "+date.getHours()+":00</th><td>"+obj[i].Temp+"</td><td>"+obj[i].Pressure+"</td><td>"+obj[i].Humidity+"</td></tr>";
			}
    	}	
	});
	request.send(params);
});
