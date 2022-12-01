const express = require("express");
const bodyParser = require("body-parser");
const postgres = require("postgres");

const sql = postgres("postgres://asu_admin:PASSWORD@localhost:5432/covid_asu", {});
const port = 2000

const app = express();
app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(express.static("public"));

app.get("/", (req, res) => {
    res.render("table");
});

app.post("/", async function (req, res) {
	query = ""
	result = null
	switch(req.body.relation) {
		case "colleges":
			console.log("HERE")
			try {
				result = await sql`SELECT * FROM colleges WHERE CAST(ipeds_id AS text) LIKE ${req.body.ipeds_id != "" ? req.body.ipeds_id : "%"} AND county LIKE ${req.body.county != "" ? req.body.county : "%"} AND state LIKE ${req.body.state != "" ? req.body.state : "%"} AND date LIKE ${req.body.date != "" ? req.body.date : "%"} AND city LIKE ${req.body.city != "" ? req.body.city : "%"} AND college LIKE ${req.body.college != "" ? req.body.college : "%"} AND CAST(cases AS text) LIKE ${req.body.cases != "" ? req.body.cases : "%"}`
				table = "<table>"
				table += "<tr><th>IPEDS ID</th><th>County</th><th>State</th><th>Date</th><th>City</th><th>College</th><th>Cases</th></tr>"
				for (var i = 0; i < result.length; i++) {
					table += "<tr>"
					table += `<td width="100">${result[i]["ipeds_id"]}</td>`
					table += `<td width="200">${result[i]["county"]}</td>`
					table += `<td width="150">${result[i]["state"]}</td>`
					table += `<td width="100">${result[i]["date"]}</td>`
					table += `<td width="100">${result[i]["city"]}</td>`
					table += `<td width="200">${result[i]["college"]}</td>`
					table += `<td width="100">${result[i]["cases"]}</td>`
					table += "</tr>"
				}
				table += "</table>"
				res.send({html: table})
				console.log(result)
			} catch (e) {
				console.log(e)
			}
			break;
		case "county":
			console.log("NOW")
			try {
				result = await sql`SELECT * FROM countyfipsandname WHERE CAST(fips AS text) LIKE ${req.body.fips != "" ? req.body.fips : "%"} AND county LIKE ${req.body.county != "" ? req.body.county : "%"}`
				table = "<table>"
				table += "<tr><th>FIPS</th><th>County</th></tr>"
				for (var i = 0; i < result.length; i++) {
					table += "<tr>"
					table += `<td width="100">${result[i]["fips"]}</td>`
					table += `<td width="200">${result[i]["county"]}</td>`
					table += "</tr>"
				}
				table += "</table>"
				res.send({html: table})
				console.log(result)
			} catch (e) {
				console.log(e)
			}
			break;
		case "mask":
			console.log("TEST")
			console.log(`SELECT * FROM mask_use WHERE CAST(fips AS text) LIKE ${req.body.fips != "" ? req.body.fips : "%"} AND  CAST(never AS text) LIKE ${req.body.never != "" ? req.body.never : "%"} AND  CAST(rarely AS text) LIKE ${req.body.rarely != "" ? req.body.rarely : "%"} AND  CAST(sometimes AS text) LIKE ${req.body.sometimes != "" ? req.body.sometimes : "%"} AND  CAST(frequently AS text) LIKE ${req.body.frequently != "" ? req.body.frequently : "%"} AND  CAST(always AS text) LIKE ${req.body.always != "" ? req.body.always : "%"}`)
			try {
				result = await sql`SELECT * FROM mask_use WHERE CAST(fips AS text) LIKE ${req.body.fips != "" ? req.body.fips : "%"} AND  CAST(never AS text) LIKE ${req.body.never != "" ? req.body.never : "%"} AND  CAST(rarely AS text) LIKE ${req.body.rarely != "" ? req.body.rarely : "%"} AND  CAST(sometimes AS text) LIKE ${req.body.sometimes != "" ? req.body.sometimes : "%"} AND  CAST(frequently AS text) LIKE ${req.body.frequently != "" ? req.body.frequently : "%"} AND  CAST(always AS text) LIKE ${req.body.always != "" ? req.body.always : "%"}`
				table = "<table>"
				table += "<tr><th>fips</th> <th>never</th> <th>rarely</th> <th>sometimes</th> <th>frequently</th> <th>always</th></tr>"
				for (var i = 0; i < result.length; i++) {
					table += "<tr>"
					table += `<td width="100">${result[i]["fips"]}</td>`
					table += `<td width="200">${result[i]["never"]}</td>`
					table += `<td width="150">${result[i]["rarely"]}</td>`
					table += `<td width="100">${result[i]["sometimes"]}</td>`
					table += `<td width="100">${result[i]["frequently"]}</td>`
					table += `<td width="200">${result[i]["always"]}</td>`
					table += "</tr>"
				}
				table += "</table>"
				res.send({html: table})
				console.log(result)
			} catch (e) {
				console.log(e)
			}
			break;
		case "prisons":
			try {
				result = await sql`SELECT * FROM prisons WHERE CAST(nyt_id AS text) LIKE ${req.body.nyt_id != "" ? req.body.nyt_id : "%"} AND 
CAST(county AS text) LIKE ${req.body.county != "" ? req.body.county : "%"} AND 
CAST(facility_name AS text) LIKE ${req.body.facility_name != "" ? req.body.facility_name : "%"} AND 
CAST(facility_city AS text) LIKE ${req.body.facility_city != "" ? req.body.facility_city : "%"} AND 
CAST(facility_type AS text) LIKE ${req.body.facility_type != "" ? req.body.facility_type : "%"} AND 
CAST(facility_state AS text) LIKE ${req.body.facility_state != "" ? req.body.facility_state : "%"} AND 
CAST(total_inmate_cases AS text) LIKE ${req.body.total_inmate_cases != "" ? req.body.total_inmate_cases : "%"} AND 
CAST(total_officer_cases AS text) LIKE ${req.body.total_officer_cases != "" ? req.body.total_officer_cases : "%"}`
				table = "<table>"
				table += "<tr><th>nyt_id</th><th>county</th><th>facility_name</th><th>facility_city</th><th>facility_type</th><th>facility_state</th><th>total_inmate_cases</th><th>total_officer_cases</th></tr>"
				for (var i = 0; i < result.length; i++) {
					table += "<tr>"
table += `<td width="100">${result[i]["nyt_id"]}</td>`
table += `<td width="100">${result[i]["county"]}</td>`
table += `<td width="100">${result[i]["facility_name"]}</td>`
table += `<td width="100">${result[i]["facility_city"]}</td>`
table += `<td width="100">${result[i]["facility_type"]}</td>`
table += `<td width="100">${result[i]["facility_state"]}</td>`
table += `<td width="100">${result[i]["total_inmate_cases"]}</td>`
table += `<td width="100">${result[i]["total_officer_cases"]}</td>`
					table += "</tr>"
				}
				table += "</table>"
				res.send({html: table})
				console.log(result)
			} catch (e) {
				console.log(e)
			}
			break;
			
		case "uscounties":
			try {
				result = await sql`SELECT * FROM us_counties_recent WHERE CAST(fips AS text) LIKE ${req.body.fips != "" ? req.body.fips : "%"} AND 
CAST(date AS text) LIKE ${req.body.date != "" ? req.body.date : "%"} AND 
CAST(state AS text) LIKE ${req.body.state != "" ? req.body.state : "%"} AND 
CAST(cases AS text) LIKE ${req.body.cases != "" ? req.body.cases : "%"} AND 
CAST(deaths AS text) LIKE ${req.body.deaths != "" ? req.body.deaths : "%"}`
				table = "<table>"
				table += "<tr><th>fips</th><th>date</th><th>state</th><th>cases</th><th>deaths</th></tr>"
				for (var i = 0; i < result.length; i++) {
					table += "<tr>"
table += `<td width="100">${result[i]["fips"]}</td>`
table += `<td width="100">${result[i]["date"]}</td>`
table += `<td width="100">${result[i]["state"]}</td>`
table += `<td width="100">${result[i]["cases"]}</td>`
table += `<td width="100">${result[i]["deaths"]}</td>`
					table += "</tr>"
				}
				table += "</table>"
				res.send({html: table})
				console.log(result)
			} catch (e) {
				console.log(e)
			}
			break;
	}
})

app.listen(port, () => {
    console.log(`I am listening on port ${port}`);
	console.log(intersect([1], [1]))
});

function intersect(a, b) {
  var setA = new Set(a);
  var setB = new Set(b);
  var intersection = new Set([...setA].filter(x => setB.has(x)));
  return Array.from(intersection);
}
