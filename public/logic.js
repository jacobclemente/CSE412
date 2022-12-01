function filterColleges(ipeds_id, county, state, date, city, college, cases) {
	jQuery.ajax({
		url: "/",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify({relation: "colleges", ipeds_id: ipeds_id, county: county, state: state, date: date, city: city, college: college, cases: cases}),
		success: function(result) {
			jQuery("#ctable").html(result.html)
		}
	});
}

function filterCounty(fips, county) {
	jQuery.ajax({
		url: "/",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify({relation: "county", fips: fips, county: county}),
		success: function(result) {
			jQuery("#cftable").html(result.html)
		}
	});
}

function filterMask(fips, never, rarely, sometimes, frequently, always) {
	jQuery.ajax({
		url: "/",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify({relation: "mask", fips: fips, never: never, rarely: rarely, sometimes: sometimes, frequently: frequently, always: always}),
		success: function(result) {
			jQuery("#mtable").html(result.html)
		}
	});
}

function filterPrisons(nyt_id, county, facility_name, facility_city, facility_type, facility_state, total_inmate_cases, total_officer_cases) {
	jQuery.ajax({
		url: "/",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify({relation: "prisons", nyt_id: nyt_id, county: county, facility_name: facility_name, facility_city: facility_city, facility_type: facility_type, facility_state: facility_state, total_inmate_cases: total_inmate_cases, total_officer_cases: total_officer_cases}),
		success: function(result) {
			jQuery("#ptable").html(result.html)
		}
	});
}

function filterUSCounties(fips, date, state, cases, deaths ) {
	jQuery.ajax({
		url: "/",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify({relation: "uscounties", fips: fips, date: date, state: state, cases: cases, deaths: deaths}),
		success: function(result) {
			jQuery("#ustable").html(result.html)
		}
	});
}

function openTab(evt, tabName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
}