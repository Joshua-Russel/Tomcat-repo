function fetch(e) {
	const xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function () {
		if (this.readyState == 4 && this.status == 200) {
			const xmlDoc = this.responseXML;

			const users = xmlDoc.getElementsByTagName("user");

			let table =
				"<table  class='det-table'><tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Occupation</th><th>Policy Number</th><th>Type</th><th>Status</th><th>Coverage Amount</th><th>Start Date</th><th>End Date</th></tr>";

			for (let i = 0; i < users.length; i++) {
				let user = users[i];
				let id = user.getElementsByTagName("id")[0].childNodes[0].nodeValue;
				let name = user.getElementsByTagName("name")[0].childNodes[0].nodeValue;
				let age = user.getElementsByTagName("age")[0].childNodes[0].nodeValue;
				let gender =
					user.getElementsByTagName("gender")[0].childNodes[0].nodeValue;
				let occupation =
					user.getElementsByTagName("occupation")[0].childNodes[0].nodeValue;

				let policies = user.getElementsByTagName("insurancePolicy");
				for (let j = 0; j < policies.length; j++) {
					let policy = policies[j];
					let policyNumber =
						policy.getElementsByTagName("policyNumber")[0].childNodes[0]
							.nodeValue;
					let type =
						policy.getElementsByTagName("type")[0].childNodes[0].nodeValue;
					let status =
						policy.getElementsByTagName("status")[0].childNodes[0].nodeValue;
					let coverageAmount =
						policy.getElementsByTagName("coverageAmount")[0].childNodes[0]
							.nodeValue;
					let startDate =
						policy.getElementsByTagName("startDate")[0].childNodes[0].nodeValue;
					let endDate =
						policy.getElementsByTagName("endDate")[0].childNodes[0].nodeValue;

					table +=
						"<tr><td>" +
						id +
						"</td><td>" +
						name +
						"</td><td>" +
						age +
						"</td><td>" +
						gender +
						"</td><td>" +
						occupation +
						"</td><td>" +
						policyNumber +
						"</td><td>" +
						type +
						"</td><td>" +
						status +
						"</td><td>" +
						coverageAmount +
						"</td><td>" +
						startDate +
						"</td><td>" +
						endDate +
						"</td></tr>";
				}
			}

			table += "</table>";

			document.getElementById("insuranceData").innerHTML = table;
		}
	};
	xhttp.open("GET", "details.xml", true);
	xhttp.send();
}
// const btn = document.querySelector("button");
// this.addEventListener("load", fetch);
window.onload = fetch;
