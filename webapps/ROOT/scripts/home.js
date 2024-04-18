document.addEventListener("DOMContentLoaded", function () {
	const homeLink = document.getElementById("home");
	const aboutLink = document.getElementById("about");
	const contactLink = document.getElementById("contact");
	const pageContent = document.getElementById("page-content");
	const loginForm = document.getElementById("login-form");
	const form = document.getElementById("loginForm");
	homeLink.addEventListener("click", function (event) {
		event.preventDefault();
		loadPageContent("Home");
	});
	aboutLink.addEventListener("click", function (event) {
		event.preventDefault();
		loadPageContent("About Us");
	});
	contactLink.addEventListener("click", function (event) {
		event.preventDefault();
		loadPageContent("Contact Us");
	});
	// form.addEventListener("submit", function (event) {
	// 	event.preventDefault();
	// 	const username = document.getElementById("username").value;
	// 	const password = document.getElementById("password").value;
	// 	if (username && password) {
	// 		loginForm.classList.remove("show");
	// 		const age = prompt("Please enter your age:");
	// 		const name = prompt("Please enter your name:");
	// 		const address = prompt("Please enter your address:");
	// 		const scheme = prompt("Please enter your scheme:");
	// 	} else {
	// 		alert("Please fill in all fields.");
	// 	}
	// });
	function loadPageContent(page) {
		let content = "";
		if (page === "Home") {
			content = "<p>Welcome to our financial services!</p>";
			loginForm.classList.add("show");
		} else {
			loginForm.classList.remove("show");
		}
		if (page === "About Us") {
			content =
				"<p>About Us: We are a leading provider of financial solutions.</p>";
		} else if (page === "Contact Us") {
			content =
				'<div class="profile">' +
				'<img src="/pics/pic1.webp" alt="Profile 1">' +
				'<div class="info">' +
				"<h3>Harish S</h3>" +
				"<p>Email: sharish@student.tce.edu</p>" +
				"<p>Phone: 6379814932</p>" +
				"</div>" +
				"</div>" +
				'<div class="profile">' +
				'<img src="/pics/pic2.jpg" alt="Profile 2">' +
				'<div class="info">' +
				"<h3>Joshua</h3>" +
				"<p>Email: joshuarussel@student.tce.edu</p>" +
				"<p>Phone: 9876543210</p>" +
				"</div>" +
				"</div>" +
				'<div class="profile">' +
				'<img src="/pics/pic3.webp" alt="Profile 3">' +
				'<div class="info">' +
				"<h3>Vivegan</h3>" +
				"<p>Email: vivegan@student.tce.edu</p>" +
				"<p>Phone: 9978900123</p>" +
				"</div>" +
				"</div>";
		}
		pageContent.innerHTML = content;
	}
	loadPageContent("Home");
});
