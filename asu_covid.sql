--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: colleges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colleges (
    ipeds_id integer NOT NULL,
    county text,
    state text,
    date text,
    city text,
    college text,
    cases integer
);


ALTER TABLE public.colleges OWNER TO postgres;

--
-- Name: countyfipsandname; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countyfipsandname (
    fips integer NOT NULL,
    county text
);


ALTER TABLE public.countyfipsandname OWNER TO postgres;

--
-- Name: mask_use; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mask_use (
    fips integer NOT NULL,
    never numeric,
    rarely numeric,
    sometimes numeric,
    frequently numeric,
    always numeric
);


ALTER TABLE public.mask_use OWNER TO postgres;

--
-- Name: prisons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prisons (
    nyt_id text NOT NULL,
    county text,
    facility_name text,
    facility_city text,
    facility_type text,
    facility_state text,
    total_inmate_cases integer,
    total_officer_cases integer
);


ALTER TABLE public.prisons OWNER TO postgres;

--
-- Name: us_counties_recent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.us_counties_recent (
    fips integer NOT NULL,
    date text,
    state text,
    cases integer,
    deaths integer
);


ALTER TABLE public.us_counties_recent OWNER TO postgres;

--
-- Data for Name: colleges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colleges (ipeds_id, county, state, date, city, college, cases) FROM stdin;
100724	Montgomery	Alabama	2021-05-26	Montgomery	Alabama State University	2
100812	Limestone	Alabama	2021-05-26	Athens	Athens State University	45
100858	Lee	Alabama	2021-05-26	Auburn	Auburn University	2742
100830	Montgomery	Alabama	2021-05-26	Montgomery	Auburn University at Montgomery	220
102429	Walker	Alabama	2021-05-26	Jasper	Bevill State Community College	4
100937	Jefferson	Alabama	2021-05-26	Birmingham	Birmingham-Southern College	263
101514	Limestone	Alabama	2021-05-26	Tanner	Calhoun Community College	137
100760	Tallapoosa	Alabama	2021-05-26	Alexander City	Central Alabama Community College	49
101143	Coffee	Alabama	2021-05-26	Enterprise	Enterprise State Community College	76
101240	Etowah	Alabama	2021-05-26	Gadsden	Gadsden State Community College	67
101435	Montgomery	Alabama	2021-05-26	Montgomery	Huntingdon College	0
101480	Calhoun	Alabama	2021-05-26	Jacksonville	Jacksonville State University	229
101602	Covington	Alabama	2021-05-26	Andalusia	Lurleen B. Wallace Community College	19
101648	Perry	Alabama	2021-05-26	Marion	Marion Military Institute	45
101675	Jefferson	Alabama	2021-05-26	Fairfield	Miles College	0
102049	Jefferson	Alabama	2021-05-26	Birmingham	Samford University	666
102076	Marshall	Alabama	2021-05-26	Boaz	Snead State Community College	29
251260	Randolph	Alabama	2021-05-26	Wadley	Southern Union State Community College	295
102234	Mobile	Alabama	2021-05-26	Mobile	Spring Hill College	162
102368	Pike	Alabama	2021-05-26	Troy	Troy University	855
10236803	Houston	Alabama	2021-05-26	Dothan	Troy University Dothan	18
10236802	Montgomery	Alabama	2021-05-26	Montgomery	Troy University Montgomery	20
10236801	Russell	Alabama	2021-05-26	Phenix	Troy University Phenix City	10
102377	Macon	Alabama	2021-05-26	Tuskeegee	Tuskegee University	110
100751	Tuscaloosa	Alabama	2021-05-26	Tuscaloosa	University of Alabama	4565
100663	Jefferson	Alabama	2021-05-26	Birmingham	University of Alabama at Birmingham	3143
100706	Madison	Alabama	2021-05-26	Huntsville	University of Alabama in Huntsville	393
101709	Shelby	Alabama	2021-05-26	Montevallo	University of Montevallo	192
101879	Lauderdale	Alabama	2021-05-26	Florence	University of North Alabama	763
102094	Mobile	Alabama	2021-05-26	Mobile	University of South Alabama	780
101587	Sumter	Alabama	2021-05-26	Livingston	University of West Alabama	35
434584	North Slope Borough	Alaska	2021-05-26	Utqiagvik	Ilisagvik College	0
102553	Anchorage Municipality	Alaska	2021-05-26	Anchorage	University of Alaska Anchorage	186
102614	Fairbanks North Star Borough	Alaska	2021-05-26	Fairbanks	University of Alaska Fairbanks	228
102632	Juneau City and Borough	Alaska	2021-05-26	Juneau	University of Alaska Southeast	16
240736	Maoputasi	American Samoa	2021-05-26	Pago Pago	American Samoa Community College	0
104151	Maricopa	Arizona	2021-05-26	Tempe	Arizona State University	6766
104160	Yuma	Arizona	2021-05-26	Yuma	Arizona Western College	41
105297	Apache	Arizona	2021-05-26	Tsaile	Dine College	16
104586	Yavapai	Arizona	2021-05-26	Prescott	Embry-Riddle Aeronautical University at Prescott	89
104717	Maricopa	Arizona	2021-05-26	Phoenix	Grand Canyon University	1935
423643	Maricopa	Arizona	2021-05-26	Glendale	Midwestern University at Glendale	248
105206	Mohave	Arizona	2021-05-26	Kingman	Mohave Community College	0
105330	Coconino	Arizona	2021-05-26	Flagstaff	Northern Arizona University	2959
104179	Pima	Arizona	2021-05-26	Tucson	University of Arizona	4365
107327	Mississippi	Arkansas	2021-05-26	Blytheville	Arkansas Northeastern College	65
106458	Craighead	Arkansas	2021-05-26	Jonesboro	Arkansas State University	1106
440402	Jackson	Arkansas	2021-05-26	Newport	Arkansas State University-Newport	139
106467	Pope	Arkansas	2021-05-26	Russellville	Arkansas Tech University	704
106625	Randolph	Arkansas	2021-05-26	Pocahontas	Black River Technical College	85
106713	Faulkner	Arkansas	2021-05-26	Conway	Central Baptist College	48
106795	Sevier	Arkansas	2021-05-26	De Queen	Cossatot Community College of the University of Arkansas	20
107044	White	Arkansas	2021-05-26	Searcy	Harding University	1088
107071	Clark	Arkansas	2021-05-26	Arkadelphia	Henderson State University	257
107080	Faulkner	Arkansas	2021-05-26	Conway	Hendrix College	86
107141	Benton	Arkansas	2021-05-26	Siloam Springs	John Brown University	77
106342	Independence	Arkansas	2021-05-26	Batesville	Lyon College	116
106980	Garland	Arkansas	2021-05-26	Hot Springs	National Park College	120
107460	Boone	Arkansas	2021-05-26	Harrison	North Arkansas College	134
367459	Benton	Arkansas	2021-05-26	Bentonville	NorthWest Arkansas Community College	43
107512	Clark	Arkansas	2021-05-26	Arkadelphia	Ouachita Baptist University	339
107974	Union	Arkansas	2021-05-26	El Dorado	South Arkansas Community College	41
107983	Columbia	Arkansas	2021-05-26	Magnolia	Southern Arkansas University	343
106397	Washington	Arkansas	2021-05-26	Fayetteville	University of Arkansas	3336
107743	Polk	Arkansas	2021-05-26	Mena	University of Arkansas Community College Rich Mountain	61
107585	Conway	Arkansas	2021-05-26	Morrilton	University of Arkansas Community College at Morrilton	78
10772501	Miller	Arkansas	2021-05-26	Texarkana	University of Arkansas Hope-Texarkana	69
108092	Sebastian	Arkansas	2021-05-26	Fort Smith	University of Arkansas at Fort Smith	300
106245	Pulaski	Arkansas	2021-05-26	Little Rock	University of Arkansas at Little Rock	284
106485	Drew	Arkansas	2021-05-26	Monticello	University of Arkansas at Monticello	212
106412	Jefferson	Arkansas	2021-05-26	Pine Bluff	University of Arkansas at Pine Bluff	268
106263	Pulaski	Arkansas	2021-05-26	Little Rock	University of Arkansas for Medical Sciences	224
107664	Pulaski	Arkansas	2021-05-26	North Little Rock	University of Arkansas-Pulaski Technical College	244
106704	Conway	Arkansas	2021-05-26	Conway	University of Central Arkansas	672
107558	Johnson	Arkansas	2021-05-26	Clarksville	University of the Ozarks	116
108232	San Francisco	California	2021-05-26	San Francisco	Academy of Art University	0
109350	Los Angeles	California	2021-05-26	Lancaster	Antelope Valley College	101
109785	Los Angeles	California	2021-05-26	Azusa	Azusa Pacific University	108
109819	Kern	California	2021-05-26	Bakersfield	Bakersfield College	0
110097	Los Angeles	California	2021-05-26	La Mirada	Biola University	99
110361	Riverside	California	2021-05-26	Riverside	California Baptist University	25
110404	Los Angeles	California	2021-05-26	Pasadena	California Institute of Technology	123
110413	Ventura	California	2021-05-26	Thousand Oaks	California Lutheran University	47
110422	San Luis Obispo	California	2021-05-26	San Luis Obispo	California Polytechnic State University, San Luis Obispo	2021
110529	Los Angeles	California	2021-05-26	Pomona	California State Polytechnic University, Pomona	61
111188	Solano	California	2021-05-26	Vallejo	California State University Maritime Academy	13
110486	Kern	California	2021-05-26	Bakersfield	California State University, Bakersfield	97
441937	Ventura	California	2021-05-26	Camarillo	California State University, Channel Islands	27
110538	Butte	California	2021-05-26	Chico	California State University, Chico	336
110547	Los Angeles	California	2021-05-26	Carson	California State University, Dominguez Hills	50
110574	Alameda	California	2021-05-26	Hayward	California State University, East Bay	43
110565	Orange	California	2021-05-26	Fullerton	California State University, Fullerton	45
110583	Los Angeles	California	2021-05-26	Long Beach	California State University, Long Beach	163
110592	Los Angeles	California	2021-05-26	Los Angeles	California State University, Los Angeles	199
409698	Monterey	California	2021-05-26	Marina	California State University, Monterey Bay	18
110608	Los Angeles	California	2021-05-26	Los Angeles	California State University, Northridge	149
110617	Sacramento	California	2021-05-26	Sacramento	California State University, Sacramento	148
110510	San Bernardino	California	2021-05-26	San Bernardino	California State University, San Bernardino	43
366711	San Diego	California	2021-05-26	San Marcos	California State University, San Marcos	118
110495	Stanislaus	California	2021-05-26	Turlock	California State University, Stanislaus	39
111948	Orange	California	2021-05-26	Orange	Chapman University	377
112260	Los Angeles	California	2021-05-26	Claremont	Claremont McKenna College	0
112075	Orange	California	2021-05-26	Irvine	Concordia University Irvine	82
113236	Orange	California	2021-05-26	Cypress	Cypress College	20
113698	Marin	California	2021-05-26	San Rafael	Dominican University of California	32
113980	Los Angeles	California	2021-05-26	Torrance	El Camino Community College	35
114433	Plumas	California	2021-05-26	Quincy	Feather River College	10
114716	Santa Clara	California	2021-05-26	Los Altos	Foothill College	0
114813	Fresno	California	2021-05-26	Fresno	Fresno Pacific University	31
110556	Fresno	California	2021-05-26	Fresno	Fresno State University	150
115409	Los Angeles	California	2021-05-26	Claremont	Harvey Mudd College	6
115728	Alameda	California	2021-05-26	Oakland	Holy Names University	20
115755	Humboldt	California	2021-05-26	Arcata	Humboldt State University	127
117946	Los Angeles	California	2021-05-26	Los Angeles	Loyola Marymount University	86
118693	San Mateo	California	2021-05-26	Atherton	Menlo College	21
118888	Alameda	California	2021-05-26	Oakland	Mills College	5
118912	San Diego	California	2021-05-26	Oceanside	MiraCosta College	55
118976	Stanislaus	California	2021-05-26	Modesto	Modesto Junior College	0
119678	Monterey	California	2021-05-26	Monterey	Naval Postgraduate School	0
120184	San Mateo	California	2021-05-26	Belmont	Notre Dame de Namur University	0
120254	Los Angeles	California	2021-05-26	Los Angeles	Occidental College	38
121150	Los Angeles	California	2021-05-26	Malibu	Pepperdine University	151
121257	Los Angeles	California	2021-05-26	Claremont	Pitzer College	1
121309	San Diego	California	2021-05-26	San Diego	Point Loma Nazarene University	298
121345	Los Angeles	California	2021-05-26	Claremont	Pomona College	25
121886	Los Angeles	California	2021-05-26	Whittier	Rio Hondo College	83
123554	Contra Costa	California	2021-05-26	Moraga	Saint Mary's College of California	77
122339	San Diego	California	2021-05-26	San Diego	San Diego City College	141
122375	San Diego	California	2021-05-26	San Diego	San Diego Mesa College	140
122384	San Diego	California	2021-05-26	San Diego	San Diego Miramar College	88
122409	San Diego	California	2021-05-26	San Diego	San Diego State University System	2336
122597	San Francisco	California	2021-05-26	San Francisco	San Francisco State University	24
122755	Santa Clara	California	2021-05-26	San Jose	San Jose State University	212
121619	Orange	California	2021-05-26	Santa Ana	Santa Ana College	37
122931	Santa Clara	California	2021-05-26	Santa Clara	Santa Clara University	321
122977	Los Angeles	California	2021-05-26	Santa Monica	Santa Monica College	11
399212	Orange	California	2021-05-26	Orange	Santiago Canyon College	14
123165	Los Angeles	California	2021-05-26	Claremont	Scripps College	4
123299	Shasta	California	2021-05-26	Redding	Shasta College	69
123509	San Mateo	California	2021-05-26	San Bruno	Skyline College	1
123563	Solano	California	2021-05-26	Fairfield	Solano Community College	0
123572	Sonoma	California	2021-05-26	Ronhert Park	Sonoma State University	20
123800	San Diego	California	2021-05-26	Chula Vista	Southwestern College	24
243744	Santa Clara	California	2021-05-26	Stanford	Stanford University	487
488800	San Joaquin	California	2021-05-26	Stockton	Teachers College of San Joaquin	0
110635	Alameda	California	2021-05-26	Berkeley	University of California, Berkeley	1095
110644	Yolo	California	2021-05-26	Davis	University of California, Davis	678
110398	San Francisco	California	2021-05-26	San Francisco	University of California, Hastings College of Law	11
110653	Orange	California	2021-05-26	Irvine	University of California, Irvine	617
110662	Los Angeles	California	2021-05-26	Los Angeles	University of California, Los Angeles	3119
445188	Merced	California	2021-05-26	Merced	University of California, Merced	124
110671	Riverside	California	2021-05-26	Riverside	University of California, Riverside	433
110680	San Diego	California	2021-05-26	San Diego	University of California, San Diego	1543
110699	San Francisco	California	2021-05-26	San Francisco	University of California, San Francisco	697
110705	Santa Barbara	California	2021-05-26	Santa Barbara	University of California, Santa Barbara	269
110714	Santa Cruz	California	2021-05-26	Santa Cruz	University of California, Santa Cruz	228
117140	Los Angeles	California	2021-05-26	La Verne	University of La Verne	5
121691	San Bernardino	California	2021-05-26	Redlands	University of Redlands	58
122436	San Diego	California	2021-05-26	San Diego	University of San Diego	717
122612	San Francisco	California	2021-05-26	San Francisco	University of San Francisco	34
123961	Los Angeles	California	2021-05-26	Los Angeles	University of Southern California	1936
120883	San Joaquin	California	2021-05-26	Stockton	University of the Pacific	80
125727	Santa Barbara	California	2021-05-26	Santa Barbara	Westmont College	99
125763	Los Angeles	California	2021-05-26	Whittier	Whittier College	8
126182	Alamosa	Colorado	2021-05-26	Alamosa	Adams State University	176
126289	Arapahoe	Colorado	2021-05-26	Littleton	Arapahoe Community College	104
126669	Jefferson	Colorado	2021-05-26	Lakewood	Colorado Christian University	241
126678	El Paso	Colorado	2021-05-26	Colorado Springs	Colorado College	222
127556	Mesa	Colorado	2021-05-26	Grand Junction	Colorado Mesa University	1243
126711	Garfield	Colorado	2021-05-26	Glenwood Springs	Colorado Mountain College Glenwood Springs	88
126775	Jefferson	Colorado	2021-05-26	Golden	Colorado School of Mines	892
126818	Larimer	Colorado	2021-05-26	Fort Collins	Colorado State University	3141
128106	Pueblo	Colorado	2021-05-26	Pueblo	Colorado State University-Pueblo	328
126863	Arapahoe	Colorado	2021-05-26	Aurora	Community College of Aurora	38
126942	Denver	Colorado	2021-05-26	Denver	Community College of Denver	107
127185	La Plata	Colorado	2021-05-26	Durango	Fort Lewis College	331
127200	Adams	Colorado	2021-05-26	Westminster	Front Range Community College	70
439288	Denver	Colorado	2021-05-26	Denver	Johnson & Wales University-Denver	16
127389	Prowers	Colorado	2021-05-26	Lamar	Lamar Community College	0
127565	Denver	Colorado	2021-05-26	Denver	Metropolitan State University of Denver	240
127617	Morgan	Colorado	2021-05-26	Fort Morgan	Morgan Community College	17
127732	Logan	Colorado	2021-05-26	Sterling	Northeastern Junior College	144
127778	Otero	Colorado	2021-05-26	La Junta	Otero Junior College	35
127820	El Paso	Colorado	2021-05-26	Colorado Springs	Pikes Peak Community College	192
127884	Pueblo	Colorado	2021-05-26	Pueblo	Pueblo Community College	124
127909	Jefferson	Colorado	2021-05-26	Lakewood	Red Rocks Community College	0
127918	Denver	Colorado	2021-05-26	Denver	Regis University	281
128258	Las Animas	Colorado	2021-05-26	Trinidad	Trinidad State Junior College	60
128328	El Paso	Colorado	2021-05-26	Air Force Academy	United States Air Force Academy	2
126614	Boulder	Colorado	2021-05-26	Boulder	University of Colorado Boulder	3725
126580	El Paso	Colorado	2021-05-26	Colorado Springs	University of Colorado Colorado Springs	365
126562	Adams	Colorado	2021-05-26	Aurora	University of Colorado Denver and Anschutz Medical Campus	263
127060	Denver	Colorado	2021-05-26	Denver	University of Denver	1310
127741	Weld	Colorado	2021-05-26	Greeley	University of Northern Colorado	710
128391	Gunnison	Colorado	2021-05-26	Gunnison	Western Colorado University	182
128498	New Haven	Connecticut	2021-05-26	New Haven	Albertus Magnus College	113
128771	Hartford	Connecticut	2021-05-26	New Britain	Central Connecticut State University	332
128902	New London	Connecticut	2021-05-26	New London	Connecticut College	109
129215	Windham	Connecticut	2021-05-26	Windham	Eastern Connecticut State University	296
129242	Fairfield	Connecticut	2021-05-26	Fairfield	Fairfield University	925
129774	New London	Connecticut	2021-05-26	New London	Mitchell College	79
130183	New Haven	Connecticut	2021-05-26	Waterbury	Post University	0
130226	New Haven	Connecticut	2021-05-26	Hamden	Quinnipiac University	1033
130253	Fairfield	Connecticut	2021-05-26	Fairfield	Sacred Heart University	1244
130493	New Haven	Connecticut	2021-05-26	New Haven	Southern Connecticut State University	433
130590	Hartford	Connecticut	2021-05-26	Hartford	Trinity College	272
130606	Hartford	Connecticut	2021-05-26	Farmington	Tunxis Community College	25
130624	New London	Connecticut	2021-05-26	New London	United States Coast Guard Academy	40
128744	Fairfield	Connecticut	2021-05-26	Bridgeport	University of Bridgeport	153
129020	Tolland	Connecticut	2021-05-26	Storrs	University of Connecticut	1673
129525	Hartford	Connecticut	2021-05-26	West Hartford	University of Hartford	358
129941	New Haven	Connecticut	2021-05-26	West Haven	University of New Haven	491
130314	Hartford	Connecticut	2021-05-26	West Hartford	University of Saint Joseph	35
130697	Middlesex	Connecticut	2021-05-26	Middletown	Wesleyan University	136
130776	Fairfield	Connecticut	2021-05-26	Danbury	Western Connecticut State University	284
130794	New Haven	Connecticut	2021-05-26	New Haven	Yale University	912
130934	Kent	Delaware	2021-05-26	Dover	Delaware State University	280
130907	Kent	Delaware	2021-05-26	Dover	Delaware Technical Community College Dover	99
13090701	Sussex	Delaware	2021-05-26	Georgetown	Delaware Technical Community College Georgetown	146
13090702	New Castle	Delaware	2021-05-26	Stanton	Delaware Technical Community College Stanton	181
130989	New Castle	Delaware	2021-05-26	Wilmington	Goldey-Beacom College	115
130943	New Castle	Delaware	2021-05-26	Newark	University of Delaware	2328
131098	Kent	Delaware	2021-05-26	Dover	Wesley College	115
131113	New Castle	Delaware	2021-05-26	New Castle	Wilmington University	0
133872	Orange	Florida	2021-05-26	Orlando	AdventHealth University	4
447883	Pinellas	Florida	2021-05-26	Largo	American Institute of Beauty	0
132374	Broward	Florida	2021-05-26	Coconut Creek	Atlantic Technical College	40
485768	Miami-Dade	Florida	2021-05-26	Miami	Atlantis University	1
446048	Collier	Florida	2021-05-26	Ave Maria	Ave Maria University	37
451149	Broward	Florida	2021-05-26	Davie	Aveda Institute-South Florida	1
451158	Leon	Florida	2021-05-26	Tallahassee	Aveda Institute-Tallahassee	1
457411	Seminole	Florida	2021-05-26	Casselberry	Aviation Institute of Maintenance-Orlando	1
132471	Miami-Dade	Florida	2021-05-26	Miami	Barry University	131
137591	Pasco	Florida	2021-05-26	New Port Richey	Bene's Career Academy	4
132602	Volusia	Florida	2021-05-26	Daytona Beach	Bethune-Cookman University	76
137856	Taylor	Florida	2021-05-26	Perry	Big Bend Technical College	14
132709	Broward	Florida	2021-05-26	Fort Lauderdale	Broward College	129
132976	Charlotte	Florida	2021-05-26	Port Charlotte	Charlotte Technical College	27
133021	Jackson	Florida	2021-05-26	Marianna	Chipola College	31
406547	Alachua	Florida	2021-05-26	Gainesville	City College at Gainesville	0
132851	Marion	Florida	2021-05-26	Ocala	College of Central Florida	96
133854	Broward	Florida	2021-05-26	Miramar	Concorde Career Institute-Miramar	3
438285	Orange	Florida	2021-05-26	Maitland	Cortiva Institute-Maitland	1
133386	Volusia	Florida	2021-05-26	Daytona Beach	Daytona State College	399
132693	Brevard	Florida	2021-05-26	Cocoa	Eastern Florida State College	220
133492	Pinellas	Florida	2021-05-26	Saint Petersburg	Eckerd College	61
133526	Duval	Florida	2021-05-26	Jacksonville	Edward Waters College	25
133553	Volusia	Florida	2021-05-26	Daytona Beach	Embry-Riddle Aeronautical University at Daytona Beach	575
369419	Hillsborough	Florida	2021-05-26	Tampa	Erwin Technical College	28
385619	Palm Beach	Florida	2021-05-26	Boca Raton	Everglades University	3
137023	St. Johns	Florida	2021-05-26	St. Augustine	First Coast Technical College	10
133711	St. Johns	Florida	2021-05-26	St. Augustine	Flagler College	252
461245	Flagler	Florida	2021-05-26	Palm Coast	Flagler Technical College	18
133650	Leon	Florida	2021-05-26	Tallahassee	Florida A&M University	574
133669	Palm Beach	Florida	2021-05-26	Boca Raton	Florida Atlantic University	754
487427	Hillsborough	Florida	2021-05-26	Tampa	Florida Career College at Tampa	7
133809	Hillsborough	Florida	2021-05-26	Temple Terrace	Florida College	80
135160	Columbia	Florida	2021-05-26	Lake City	Florida Gateway College	21
433660	Lee	Florida	2021-05-26	Fort Myers	Florida Gulf Coast University	935
476814	Orange	Florida	2021-05-26	Orlando	Florida Institute of Recording Sound and Technology	1
133881	Brevard	Florida	2021-05-26	Melbourne	Florida Institute of Technology	302
133951	Miami-Dade	Florida	2021-05-26	Miami	Florida International University	600
133979	Miami-Dade	Florida	2021-05-26	Miami Gardens	Florida Memorial University	146
408844	Miami-Dade	Florida	2021-05-26	Hialeah	Florida National University	23
482936	Polk	Florida	2021-05-26	Lakeland	Florida Polytechnic University	39
133508	Lee	Florida	2021-05-26	Fort Myers	Florida SouthWestern State College	92
134079	Polk	Florida	2021-05-26	Lakeland	Florida Southern College	380
133702	Duval	Florida	2021-05-26	Jacksonville	Florida State College at Jacksonville	76
134097	Leon	Florida	2021-05-26	Tallahassee	Florida State University	2427
134112	Orange	Florida	2021-05-26	Orlando	Florida Technical College	4
135267	Lee	Florida	2021-05-26	Fort Myers	Fort Myers Technical College	14
445744	St. Lucie	Florida	2021-05-26	Port Saint Lucie	Fortis Institute at Port Saint Lucie	2
459329	Pasco	Florida	2021-05-26	New Port Richey	Fred K. Marchman Technical College	25
134237	Orange	Florida	2021-05-26	Winter Park	Full Sail University	11
490090	Gadsden	Florida	2021-05-26	Quincy	Gadsden Technical Institute	9
134291	Escambia	Florida	2021-05-26	Pensacola	George Stone Technical College	2
134343	Bay	Florida	2021-05-26	Panama City	Gulf Coast State College	60
490559	Orange	Florida	2021-05-26	Orlando	Gwinnett Institute	0
490054	Palm Beach	Florida	2021-05-26	West Palm Beach	HCI College	4
49005401	Broward	Florida	2021-05-26	Fort Lauderdale	HCI College at Fort Lauderdale	4
134495	Hillsborough	Florida	2021-05-26	Tampa	Hillsborough Community College	441
457387	Collier	Florida	2021-05-26	Immokalee	Immokalee Technical College	15
134608	St. Lucie	Florida	2021-05-26	Fort Pierce	Indian River State College	379
134945	Duval	Florida	2021-05-26	Jacksonville	Jacksonville University	305
414823	Miami-Dade	Florida	2021-05-26	North Miami	Johnson & Wales University-North Miami	2
13508116	Palm Beach	Florida	2021-05-26	West Palm Beach	Keiser University Flagship	25
13508113	Lee	Florida	2021-05-26	Fort Myers	Keiser University at Fort Myers	1
13508108	Duval	Florida	2021-05-26	Jacksonville	Keiser University at Jacksonville	2
13508104	Polk	Florida	2021-05-26	Lakeland	Keiser University at Lakeland	8
13508101	Brevard	Florida	2021-05-26	Melbourne	Keiser University at Melbourne	6
13508107	Duval	Florida	2021-05-26	Sarasota	Keiser University at Sarasota	5
13508102	Leon	Florida	2021-05-26	Tallahassee	Keiser University at Tallahassee	6
13508112	Palm Beach	Florida	2021-05-26	West Palm Beach	Keiser University at West Palm Beach	27
13508103	Volusia	Florida	2021-05-26	Daytona Beach	Keiser University-Daytona	5
13508111	St. Lucie	Florida	2021-05-26	Port St. Lucie	Keiser University-Port St Lucie	12
135179	Lake	Florida	2021-05-26	Eustis	Lake Technical College	36
135188	Lake	Florida	2021-05-26	Leesburg	Lake-Sumter State College	5
135294	Miami-Dade	Florida	2021-05-26	Miami	Lindsey Hopkins Technical College	3
135276	Leon	Florida	2021-05-26	Tallahassee	Lively Technical College	17
135337	Pinellas	Florida	2021-05-26	Saint Petersburg	Loraines Academy & Spa	1
133155	Collier	Florida	2021-05-26	Naples	Lorenzo Walker Technical College	14
132657	Palm Beach	Florida	2021-05-26	Boca Raton	Lynn University	112
419226	Marion	Florida	2021-05-26	Ocala	Marion Technical College	11
244279	Sarasota	Florida	2021-05-26	Sarasota	Meridian College	1
135717	Miami-Dade	Florida	2021-05-26	Miami	Miami Dade College	71
134811	Miami-Dade	Florida	2021-05-26	Miami	Miami International University of Art and Design	3
262129	Sarasota	Florida	2021-05-26	Sarasota	New College of Florida	36
136145	Madison	Florida	2021-05-26	Madison	North Florida College	35
136233	Okaloosa	Florida	2021-05-26	Niceville	Northwest Florida State College	71
409032	Miami-Dade	Florida	2021-05-26	Miami	Nouvelle Institute	0
136215	Broward	Florida	2021-05-26	Fort Lauderdale	Nova Southeastern University	175
433068	Okaloosa	Florida	2021-05-26	Fort Walton Beach	Okaloosa Technical College	29
135735	Orange	Florida	2021-05-26	Orlando	Orange Technical College Mid Florida Campus	7
136303	Orange	Florida	2021-05-26	Orlando	Orange Technical College Orlando Campus	14
138372	Orange	Florida	2021-05-26	Winter Garden	Orange Technical College Westside Campus	6
138488	Orange	Florida	2021-05-26	Winter Park	Orange Technical College Winter Park Campus	4
136330	Palm Beach	Florida	2021-05-26	West Palm Beach	Palm Beach Atlantic University	263
136358	Palm Beach	Florida	2021-05-26	Lake Worth	Palm Beach State College	149
136400	Pasco	Florida	2021-05-26	New Port Richey	Pasco-Hernando State College	88
136109	Duval	Florida	2021-05-26	Jacksonville	Paul Mitchell the School-Jacksonville	0
136473	Escambia	Florida	2021-05-26	Pensacola	Pensacola State College	458
137087	Pinellas	Florida	2021-05-26	St. Petersburg	Pinellas Technical College-St. Petersburg	40
136516	Polk	Florida	2021-05-26	Winter Haven	Polk State College	91
430582	Miami-Dade	Florida	2021-05-26	Miami	Praxis Institute	0
136659	Santa Rosa	Florida	2021-05-26	Milton	Radford M Locklin Technical College	3
13830902	Lee	Florida	2021-05-26	Fort Myers	Rasmussen College at Fort Myers	1
136765	Polk	Florida	2021-05-26	Winter Haven	Ridge Technical College	8
137713	Suwannee	Florida	2021-05-26	Live Oak	Riveroak Technical College	6
136950	Orange	Florida	2021-05-26	Winter Park	Rollins College	262
137032	Pasco	Florida	2021-05-26	Saint Leo	Saint Leo University	238
137096	Alachua	Florida	2021-05-26	Gainesville	Santa Fe College	72
137209	Seminole	Florida	2021-05-26	Sanford	Seminole State College of Florida	184
137245	Broward	Florida	2021-05-26	Hollywood	Sheridan Technical College	60
366003	Broward	Florida	2021-05-26	Deerfield Beach	South Florida Bible College and Theological Seminary	1
137315	Highlands	Florida	2021-05-26	Avon Park	South Florida State College	126
428170	Palm Beach	Florida	2021-05-26	West Palm Beach	Southeastern College at West Palm Beach	4
137564	Polk	Florida	2021-05-26	Lakeland	Southeastern University	101
137281	Putnam	Florida	2021-05-26	Palatka	St. Johns River State College	42
137078	Pinellas	Florida	2021-05-26	St. Petersburg	St. Petersburg College	227
137476	Miami-Dade	Florida	2021-05-26	Miami Gardens	St. Thomas University	111
135391	Manatee	Florida	2021-05-26	Bradenton	State College of Florida, Manatee-Sarasota	202
137546	Volusia	Florida	2021-05-26	DeLand	Stetson University	505
44903808	Broward	Florida	2021-05-26	Fort Lauderdale	Strayer University at Fort Lauderdale	0
137120	Sarasota	Florida	2021-05-26	Sarasota	Suncoast Technical College	26
487311	Duval	Florida	2021-05-26	Jacksonville	Sunstate Academy-Jones Technical Institute	0
137759	Leon	Florida	2021-05-26	Tallahassee	Tallahassee Community College	192
133960	Monroe	Florida	2021-05-26	Key West	The College of the Florida Keys	6
135522	Polk	Florida	2021-05-26	Lakeland	Traviss Technical College	1
137962	Pasco	Florida	2021-05-26	Trinity	Trinity College of Florida	13
369400	Orange	Florida	2021-05-26	Orlando	Universal Technical Institute Orlando	2
132903	Orange	Florida	2021-05-26	Orlando	University of Central Florida	4327
134130	Alachua	Florida	2021-05-26	Gainesville	University of Florida	9914
457402	Broward	Florida	2021-05-26	Lauderhill	University of Fort Lauderdale	3
135726	Miami-Dade	Florida	2021-05-26	Miami	University of Miami	3097
136172	Duval	Florida	2021-05-26	Jacksonville	University of North Florida	708
137351	Hillsborough	Florida	2021-05-26	Tampa	University of South Florida	1490
451671	Sarasota	Florida	2021-05-26	Sarasota	University of South Florida Sarasota-Manatee	26
448840	Pinellas	Florida	2021-05-26	St. Petersburg	University of South Florida St. Petersburg	76
137847	Hillsborough	Florida	2021-05-26	Tampa	University of Tampa	1068
138354	Escambia	Florida	2021-05-26	Pensacola	University of West Florida	410
138187	Orange	Florida	2021-05-26	Orlando	Valencia College	160
138275	Polk	Florida	2021-05-26	Lake Wales	Warner University	12
138293	Polk	Florida	2021-05-26	Babson Park	Webber International University	31
138479	Broward	Florida	2021-05-26	Davie	William T. McFatter Technical College	21
138497	Citrus	Florida	2021-05-26	Inverness	Withlacoochee Technical College	4
138558	Tift	Georgia	2021-05-26	Tifton	Abraham Baldwin Agricultural College	267
138600	DeKalb	Georgia	2021-05-26	Decatur	Agnes Scott College	17
138716	Dougherty	Georgia	2021-05-26	Albany	Albany State University	250
138901	Fulton	Georgia	2021-05-26	Atlanta	Atlanta Metropolitan State College	2
482149	Richmond	Georgia	2021-05-26	Augusta	Augusta University	806
139144	Floyd	Georgia	2021-05-26	Mount Berry	Berry College	350
139199	Hall	Georgia	2021-05-26	Gainesville	Brenau University	83
138947	DeKalb	Georgia	2021-05-26	Atlanta	Clark Atlanta University	0
139311	Clayton	Georgia	2021-05-26	Morrow	Clayton State University	163
139250	Glynn	Georgia	2021-05-26	Brunswick	College of Coastal Georgia	181
139366	Muscogee	Georgia	2021-05-26	Columbus	Columbus State University	358
139393	Walker	Georgia	2021-05-26	Lookout Mountain	Covenant College	37
139463	Whitfield	Georgia	2021-05-26	Dalton	Dalton State College	179
139621	Emanuel	Georgia	2021-05-26	Swainsboro	East Georgia State College	93
139630	Franklin	Georgia	2021-05-26	Franklin Springs	Emmanuel College	115
139658	DeKalb	Georgia	2021-05-26	Atlanta	Emory University	1261
139719	Peach	Georgia	2021-05-26	Fort Valley	Fort Valley State University	180
139861	Baldwin	Georgia	2021-05-26	Milledgeville	Georgia College & State University	892
447689	Gwinnett	Georgia	2021-05-26	Lawrenceville	Georgia Gwinnett College	399
139700	Floyd	Georgia	2021-05-26	Rome	Georgia Highlands College	214
139755	Fulton	Georgia	2021-05-26	Atlanta	Georgia Institute of Technology	2501
485111	Baldwin	Georgia	2021-05-26	Milledgeville	Georgia Military College	1
139931	Bulloch	Georgia	2021-05-26	Statesboro	Georgia Southern University	1597
139764	Sumter	Georgia	2021-05-26	Americus	Georgia Southwestern State University	128
139940	Fulton	Georgia	2021-05-26	Atlanta	Georgia State University	1200
139968	Lamar	Georgia	2021-05-26	Barnesville	Gordon State College	57
486840	Cobb	Georgia	2021-05-26	Kennesaw	Kennesaw State University	1650
140234	Troup	Georgia	2021-05-26	LaGrange	LaGrange College	87
140447	Bibb	Georgia	2021-05-26	Macon	Mercer University	651
482158	Bibb	Georgia	2021-05-26	Macon	Middle Georgia State University	479
140553	DeKalb	Georgia	2021-05-26	Atlanta	Morehouse College	181
140696	DeKalb	Georgia	2021-05-26	Atlanta	Oglethorpe University	62
140818	Habersham	Georgia	2021-05-26	Demorest	Piedmont College	0
140960	Chatham	Georgia	2021-05-26	Savannah	Savannah State University	215
140988	Floyd	Georgia	2021-05-26	Rome	Shorter University	0
482699	Coffee	Georgia	2021-05-26	Douglas	South Georgia State College	133
139959	Clarke	Georgia	2021-05-26	Athens	University of Georgia	6391
482680	Lumpkin	Georgia	2021-05-26	Dahlonega	University of North Georgia	1288
141334	Carroll	Georgia	2021-05-26	Carrollton	University of West Georgia	323
141264	Lowndes	Georgia	2021-05-26	Valdosta	Valdosta State University	357
141325	Bibb	Georgia	2021-05-26	Macon	Wesleyan College	50
141361	Towns	Georgia	2021-05-26	Young Harris	Young Harris College	37
240754	Mangilao Village	Guam	2021-05-26	Mangilao	University of Guam	12
230047	Honolulu	Hawaii	2021-05-26	Laie	Brigham Young University-Hawaii	55
141486	Honolulu	Hawaii	2021-05-26	Honolulu	Chaminade University of Honolulu	1
141644	Honolulu	Hawaii	2021-05-26	Honolulu	Hawaii Pacific University	1
141796	Honolulu	Hawaii	2021-05-26	Honolulu	Kapiolani Community College	5
141811	Honolulu	Hawaii	2021-05-26	Pearl City	Leeward Community College	4
141839	Maui	Hawaii	2021-05-26	Kahului	University of Hawaii Maui College	2
141565	Hawaii	Hawaii	2021-05-26	Hilo	University of Hawaii at Hilo	10
141574	Honolulu	Hawaii	2021-05-26	Honolulu	University of Hawaii at Manoa	73
141981	Honolulu	Hawaii	2021-05-26	Kapolei	University of Hawaii-West Oahu	2
142115	Ada	Idaho	2021-05-26	Boise	Boise State University	1642
142522	Madison	Idaho	2021-05-26	Rexburg	Brigham Young University-Idaho	2655
142294	Canyon	Idaho	2021-05-26	Caldwell	College of Idaho	107
142559	Twin Falls	Idaho	2021-05-26	Twin Falls	College of Southern Idaho	282
142276	Bannock	Idaho	2021-05-26	Pocatello	Idaho State University	1168
142328	Nez Perce	Idaho	2021-05-26	Lewiston	Lewis-Clark State College	180
142443	Kootenai	Idaho	2021-05-26	Coeur d'Alene	North Idaho College	279
142461	Canyon	Idaho	2021-05-26	Nampa	Northwest Nazarene University	232
142285	Latah	Idaho	2021-05-26	Moscow	University of Idaho	1025
143084	Rock Island	Illinois	2021-05-26	Rock Island	Augustana College	260
143118	Kane	Illinois	2021-05-26	Aurora	Aurora University	166
145619	DuPage	Illinois	2021-05-26	Lisle	Benedictine University	82
143288	Macoupin	Illinois	2021-05-26	Carlinville	Blackburn College	0
143358	Peoria	Illinois	2021-05-26	Peoria	Bradley University	565
144005	Cook	Illinois	2021-05-26	Chicago	Chicago State University	116
144281	Cook	Illinois	2021-05-26	Chicago	Columbia College Chicago	157
144351	Cook	Illinois	2021-05-26	River Forest	Concordia University Chicago	97
144740	Cook	Illinois	2021-05-26	Chicago	DePaul University	77
148496	Cook	Illinois	2021-05-26	River Forest	Dominican University	237
144892	Coles	Illinois	2021-05-26	Charleston	Eastern Illinois University	669
144962	DuPage	Illinois	2021-05-26	Elmhurst	Elmhurst University	269
144971	Woodford	Illinois	2021-05-26	Eureka	Eureka College	71
145336	Cook	Illinois	2021-05-26	University Park	Governors State University	82
145372	Bond	Illinois	2021-05-26	Greenville	Greenville University	205
145691	Morgan	Illinois	2021-05-26	Jacksonville	Illinois College	129
145725	Cook	Illinois	2021-05-26	Chicago	Illinois Institute of Technology	204
145813	McLean	Illinois	2021-05-26	Normal	Illinois State University	2433
145646	McLean	Illinois	2021-05-26	Bloomington	Illinois Wesleyan University	268
146366	Clinton	Illinois	2021-05-26	Centralia	Kaskaskia College	129
146427	Knox	Illinois	2021-05-26	Galesburg	Knox College	78
146481	Lake	Illinois	2021-05-26	Lake Forest	Lake Forest College	80
146506	Coles	Illinois	2021-05-26	Mattoon	Lake Land College	133
146612	Will	Illinois	2021-05-26	Romeoville	Lewis University	360
146719	Cook	Illinois	2021-05-26	Chicago	Loyola University Chicago	634
147013	St. Clair	Illinois	2021-05-26	Lebanon	McKendree University	264
143853	DuPage	Illinois	2021-05-26	Downers Grove	Midwestern University at Downers Grove	171
147244	Macon	Illinois	2021-05-26	Decatur	Millikin University	268
147341	Warren	Illinois	2021-05-26	Monmouth	Monmouth College	64
147369	Cook	Illinois	2021-05-26	Chicago	Moody Bible Institute	135
147660	DuPage	Illinois	2021-05-26	Naperville	North Central College	394
147679	Cook	Illinois	2021-05-26	Chicago	North Park University	230
147776	Cook	Illinois	2021-05-26	Chicago	Northeastern Illinois University	269
147703	Dekalb	Illinois	2021-05-26	Dekalb	Northern Illinois University	943
147767	Cook	Illinois	2021-05-26	Evanston	Northwestern University	1278
147828	Kankakee	Illinois	2021-05-26	Bourbonnais	Olivet Nazarene University	189
147916	Champaign	Illinois	2021-05-26	Champaign	Parkland College	323
148016	Jersey	Illinois	2021-05-26	Elsah	Principia College	9
148131	Adams	Illinois	2021-05-26	Quincy	Quincy University	277
148405	Winnebago	Illinois	2021-05-26	Rockford	Rockford University	85
148627	Cook	Illinois	2021-05-26	Chicago	Saint Xavier University	312
143048	Cook	Illinois	2021-05-26	Chicago	School of the Art Institute of Chicago	73
148937	Saline	Illinois	2021-05-26	Harrisburg	Southeastern Illinois College	69
149222	Jackson	Illinois	2021-05-26	Carbondale	Southern Illinois University Carbondale	379
149231	Madison	Illinois	2021-05-26	Edwardsville	Southern Illinois University Edwardsville	472
143215	St. Clair	Illinois	2021-05-26	Belleville	Southwestern Illinois College	0
144050	Cook	Illinois	2021-05-26	Chicago	University of Chicago	637
148654	Sangamon	Illinois	2021-05-26	Springfield	University of Illinois Springfield	273
145637	Champaign	Illinois	2021-05-26	Champaign	University of Illinois Urbana-Champaign	6766
145600	Cook	Illinois	2021-05-26	Chicago	University of Illinois at Chicago	1743
149772	McDonough	Illinois	2021-05-26	Macomb	Western Illinois University	360
149781	DuPage	Illinois	2021-05-26	Wheaton	Wheaton College	158
150066	Madison	Indiana	2021-05-26	Anderson	Anderson University	16
150136	Delaware	Indiana	2021-05-26	Muncie	Ball State University	1979
150163	Marion	Indiana	2021-05-26	Indianapolis	Butler University	679
150400	Putnam	Indiana	2021-05-26	Greencastle	DePauw University	164
150455	Wayne	Indiana	2021-05-26	Richmond	Earlham College	50
150604	Johnson	Indiana	2021-05-26	Franklin	Franklin College	201
150668	Elkhart	Indiana	2021-05-26	Goshen	Goshen College	159
150677	Kosciusko	Indiana	2021-05-26	Winona Lake	Grace College and Theological Seminary	203
150756	Jefferson	Indiana	2021-05-26	Hanover	Hanover College	49
151324	Vigo	Indiana	2021-05-26	Terre Haute	Indiana State University	597
151351	Monroe	Indiana	2021-05-26	Bloomington	Indiana University Bloomington	8607
151388	Wayne	Indiana	2021-05-26	Richmond	Indiana University East	220
151333	Howard	Indiana	2021-05-26	Kokomo	Indiana University Kokomo	316
151360	Lake	Indiana	2021-05-26	Gary	Indiana University Northwest	244
151342	St. Joseph	Indiana	2021-05-26	South Bend	Indiana University South Bend	327
151379	Floyd	Indiana	2021-05-26	New Albany	Indiana University Southeast	223
151111	Marion	Indiana	2021-05-26	Indianapolis	Indiana University-Purdue University Indianapolis	2872
150987	Marion	Indiana	2021-05-26	Indianapolis	Ivy Tech Community College System	1292
151777	Wabash	Indiana	2021-05-26	North Manchester	Manchester University	61
151786	Marion	Indiana	2021-05-26	Indianapolis	Marian University	65
152099	Gibson	Indiana	2021-05-26	Oakland City	Oakland City University	92
243780	Tippecanoe	Indiana	2021-05-26	West Lafayette	Purdue University	6230
24378001	Madison	Indiana	2021-05-26	Anderson	Purdue University - Purdue Polytechnic Anderson	0
24378006	Bartholomew	Indiana	2021-05-26	Columbus	Purdue University - Purdue Polytechnic Columbus	0
24378002	Marion	Indiana	2021-05-26	Indianapolis	Purdue University - Purdue Polytechnic Indianapolis	0
24378007	Howard	Indiana	2021-05-26	Kokomo	Purdue University - Purdue Polytechnic Kokomo	0
24378009	Tippecanoe	Indiana	2021-05-26	Lafayette	Purdue University - Purdue Polytechnic Lafayette	0
24378004	Floyd	Indiana	2021-05-26	New Albany	Purdue University - Purdue Polytechnic New Albany	0
24378008	Wayne	Indiana	2021-05-26	Richmond	Purdue University - Purdue Polytechnic Richmond	0
24378003	St. Joseph	Indiana	2021-05-26	South Bend	Purdue University - Purdue Polytechnic South Bend	0
24378010	Knox	Indiana	2021-05-26	Vincennes	Purdue University - Purdue Polytechnic Vincennes	0
151102	Allen	Indiana	2021-05-26	Fort Wayne	Purdue University Fort Wayne	486
490805	Lake	Indiana	2021-05-26	Hammond	Purdue University Northwest	164
152318	Vigo	Indiana	2021-05-26	Terre Haute	Rose-Hulman Institute of Technology	209
152390	St. Joseph	Indiana	2021-05-26	Notre Dame	Saint Mary's College	248
152530	Grant	Indiana	2021-05-26	Upland	Taylor University	548
152567	Steuben	Indiana	2021-05-26	Angola	Trine University	368
150534	Vanderburgh	Indiana	2021-05-26	Evansville	University of Evansville	252
151263	Marion	Indiana	2021-05-26	Indianapolis	University of Indianapolis	480
152080	St. Joseph	Indiana	2021-05-26	Notre Dame	University of Notre Dame	3389
151306	Vanderburgh	Indiana	2021-05-26	Evansville	University of Southern Indiana	783
152600	Porter	Indiana	2021-05-26	Valparaiso	Valparaiso University	290
152637	Knox	Indiana	2021-05-26	Vincennes	Vincennes University	26
152673	Montgomery	Indiana	2021-05-26	Crawfordsville	Wabash College	48
153001	Buena Vista	Iowa	2021-05-26	Storm Lake	Buena Vista University	43
153108	Marion	Iowa	2021-05-26	Pella	Central College	178
153126	Dubuque	Iowa	2021-05-26	Dubuque	Clarke University	193
153144	Linn	Iowa	2021-05-26	Cedar Rapids	Coe College	56
153162	Linn	Iowa	2021-05-26	Mount Vernon	Cornell College	157
153250	Sioux	Iowa	2021-05-26	Sioux Center	Dordt University	28
153269	Polk	Iowa	2021-05-26	Des Moines	Drake University	90
153311	Scott	Iowa	2021-05-26	Davenport	Eastern Iowa Community College District	274
153296	Hardin	Iowa	2021-05-26	Iowa Falls	Ellsworth Community College	104
153366	Decatur	Iowa	2021-05-26	Lamoni	Graceland University	201
153375	Polk	Iowa	2021-05-26	Des Moines	Grand View University	285
153384	Poweshiek	Iowa	2021-05-26	Grinnell	Grinnell College	70
153445	Black Hawk	Iowa	2021-05-26	Waterloo	Hawkeye Community College	383
153603	Story	Iowa	2021-05-26	Ames	Iowa State University	3160
153621	Henry	Iowa	2021-05-26	Mount Pleasant	Iowa Wesleyan University	177
153825	Dubuque	Iowa	2021-05-26	Dubuque	Loras College	0
153834	Winneshiek	Iowa	2021-05-26	Decorah	Luther College	97
153922	Marshall	Iowa	2021-05-26	Marshalltown	Marshalltown Community College	40
154004	Woodbury	Iowa	2021-05-26	Sioux City	Morningside College	233
154101	Sioux	Iowa	2021-05-26	Orange City	Northwestern College	78
154235	Scott	Iowa	2021-05-26	Davenport	Saint Ambrose University	556
154350	Warren	Iowa	2021-05-26	Indianola	Simpson College	162
153278	Dubuque	Iowa	2021-05-26	Dubuque	University of Dubuque	50
153658	Johnson	Iowa	2021-05-26	Iowa City	University of Iowa	3691
154095	Black Hawk	Iowa	2021-05-26	Cedar Falls	University of Northern Iowa	648
154493	Fayette	Iowa	2021-05-26	Fayette	Upper Iowa University	138
154527	Bremer	Iowa	2021-05-26	Waverly	Wartburg College	69
154590	Mahaska	Iowa	2021-05-26	Oskaloosa	William Penn University	30
154642	Allen	Kansas	2021-05-26	Iola	Allen County Community College	115
154688	Douglas	Kansas	2021-05-26	Baldwin City	Baker University	113
154712	Atchison	Kansas	2021-05-26	Atchison	Benedictine College	199
154721	McPherson	Kansas	2021-05-26	Lindsborg	Bethany College (Kan.)	5
154749	Harvey	Kansas	2021-05-26	North Newton	Bethel College	186
154800	Butler	Kansas	2021-05-26	El Dorado	Butler Community College	365
154855	McPherson	Kansas	2021-05-26	McPherson	Central Christian College	32
154998	Ford	Kansas	2021-05-26	Dodge City	Dodge City Community College	13
155025	Lyon	Kansas	2021-05-26	Emporia	Emporia State University	297
155052	Lyon	Kansas	2021-05-26	Emporia	Flint Hills Technical College	72
155061	Ellis	Kansas	2021-05-26	Hays	Fort Hays State University	360
155140	Douglas	Kansas	2021-05-26	Lawrence	Haskell Indian Nations University	0
155177	Harvey	Kansas	2021-05-26	Hesston	Hesston College	25
155195	Reno	Kansas	2021-05-26	Hutchinson	Hutchinson Community College	68
155210	Johnson	Kansas	2021-05-26	Overland Park	Johnson County Community College	232
155399	Riley	Kansas	2021-05-26	Manhattan	Kansas State University	1710
155414	Saline	Kansas	2021-05-26	Salina	Kansas Wesleyan University	75
155450	Labette	Kansas	2021-05-26	Parsons	Labette Community College	5
155335	Sedgwick	Kansas	2021-05-26	Whichita	Newman University	118
155681	Crawford	Kansas	2021-05-26	Pittsburg	Pittsburg State University	346
155900	Cowley	Kansas	2021-05-26	Winfield	Southwestern College	176
155937	Rice	Kansas	2021-05-26	Sterling	Sterling College	52
155317	Douglas	Kansas	2021-05-26	Lawrence	University of Kansas	1821
155812	Leavenworth	Kansas	2021-05-26	Leavenworth	University of Saint Mary	47
156082	Shawnee	Kansas	2021-05-26	Topeka	Washburn University	327
156125	Sedgwick	Kansas	2021-05-26	Wichita	Wichita State University	271
156189	Knott	Kentucky	2021-05-26	Pippa Passes	Alice Lloyd College	141
156222	Jessamine	Kentucky	2021-05-26	Wilmore	Asbury Theological Seminary	43
156213	Jessamine	Kentucky	2021-05-26	Wilmore	Asbury University	96
156231	Boyd	Kentucky	2021-05-26	Ashland	Ashland Community and Technical College	28
247065	Boone	Kentucky	2021-05-26	Florence	Beckfield College	6
156286	Jefferson	Kentucky	2021-05-26	Louisville	Bellarmine University	415
156295	Madison	Kentucky	2021-05-26	Berea	Berea College	38
157553	Floyd	Kentucky	2021-05-26	Prestonsburg	Big Sandy Community and Technical College	32
156392	Fayette	Kentucky	2021-05-26	Lexington	Bluegrass Community and Technical College	229
156356	Daviess	Kentucky	2021-05-26	Owensboro	Brescia University	43
156365	Taylor	Kentucky	2021-05-26	Campbellsville	Campbellsville University	305
156408	Boyle	Kentucky	2021-05-26	Danville	Centre College	114
156417	Bell	Kentucky	2021-05-26	Pineville	Clear Creek Baptist Bible College	3
156620	Madison	Kentucky	2021-05-26	Richmond	Eastern Kentucky University	734
156648	Hardin	Kentucky	2021-05-26	Elizabethtown	Elizabethtown Community and Technical College	58
156727	Leslie	Kentucky	2021-05-26	Hyden	Frontier Nursing University	2
491181	Perry	Kentucky	2021-05-26	Hazard	Galen College of Nursing-ARH	33
156471	Jefferson	Kentucky	2021-05-26	Louisville	Galen College of Nursing-Louisville	25
157438	Boone	Kentucky	2021-05-26	Florence	Gateway Community and Technical College	45
156745	Scott	Kentucky	2021-05-26	Georgetown	Georgetown College	323
156790	Perry	Kentucky	2021-05-26	Hazard	Hazard Community and Technical College	18
156851	Henderson	Kentucky	2021-05-26	Henderson	Henderson Community College	40
156860	Christian	Kentucky	2021-05-26	Hopkinsville	Hopkinsville Community College	32
156921	Jefferson	Kentucky	2021-05-26	Louisville	Jefferson Community and Technical College	143
157100	Carter	Kentucky	2021-05-26	Grayson	Kentucky Christian University	6
157058	Franklin	Kentucky	2021-05-26	Frankfort	Kentucky State University	173
157076	Daviess	Kentucky	2021-05-26	Owensboro	Kentucky Wesleyan College	142
450632	Fayette	Kentucky	2021-05-26	Lexington	Lexington Healing Arts Academy	1
157207	Fayette	Kentucky	2021-05-26	Lexington	Lexington Theological Seminary	1
157216	Adair	Kentucky	2021-05-26	Columbia	Lindsey Wilson College	228
157304	Hopkins	Kentucky	2021-05-26	Madisonville	Madisonville Community College	43
157331	Mason	Kentucky	2021-05-26	Maysville	Maysville Community and Technical College	27
484066	Jefferson	Kentucky	2021-05-26	Louisville	MedQuest College	8
157377	Woodford	Kentucky	2021-05-26	Midway	Midway University	75
157386	Rowan	Kentucky	2021-05-26	Morehead	Morehead State University	386
157401	Calloway	Kentucky	2021-05-26	Murray	Murray State University	599
157447	Campbell	Kentucky	2021-05-26	Highland Heights	Northern Kentucky University	311
247940	Daviess	Kentucky	2021-05-26	Owensboro	Owensboro Community and Technical College	38
156426	Fayette	Kentucky	2021-05-26	Lexington	Paul Mitchell the School-Lexington	3
461759	Jefferson	Kentucky	2021-05-26	Louisville	Simmons College of Kentucky	2
157711	Pulaski	Kentucky	2021-05-26	Somerset	Somerset Community College	78
168281	Bristol	Massachusetts	2021-05-26	Norton	Wheaton College	99
156338	Warren	Kentucky	2021-05-26	Bowling Green	Southcentral Kentucky Community and Technical College	97
157739	Harlan	Kentucky	2021-05-26	Cumberland	Southeast Kentucky Community and Technical College	27
157757	Jefferson	Kentucky	2021-05-26	Louisville	Spalding University	100
157793	Jefferson	Kentucky	2021-05-26	Louisville	Sullivan University	21
157748	Jefferson	Kentucky	2021-05-26	Louisville	The Southern Baptist Theological Seminary	6
157809	Kenton	Kentucky	2021-05-26	Crestview Hills	Thomas More University	211
157818	Fayette	Kentucky	2021-05-26	Lexington	Transylvania University	154
157863	Knox	Kentucky	2021-05-26	Barbourville	Union College	78
157085	Fayette	Kentucky	2021-05-26	Lexington	University of Kentucky	4095
157289	Jefferson	Kentucky	2021-05-26	Louisville	University of Louisville	2157
157535	Pike	Kentucky	2021-05-26	Pikeville	University of Pikeville	266
156541	Whitley	Kentucky	2021-05-26	Williamsburg	University of the Cumberlands	305
157483	McCracken	Kentucky	2021-05-26	Paducah	West Kentucky Community and Technical College	74
157951	Warren	Kentucky	2021-05-26	Bowling Green	Western Kentucky University	1298
437103	East Baton Rouge	Louisiana	2021-05-26	Baton Rouge	Baton Rouge Community College	9
158431	Bossier	Louisiana	2021-05-26	Bossier City	Bossier Parish Community College	92
158477	Caddo	Louisiana	2021-05-26	Shreveport	Centenary College of Louisiana	144
158088	Rapides	Louisiana	2021-05-26	Alexandria	Central Louisiana Technical Community College	88
158662	Orleans	Louisiana	2021-05-26	New Orleans	Delgado Community College	70
158802	Orleans	Louisiana	2021-05-26	New Orleans	Dillard University	48
160481	Terrebonne	Louisiana	2021-05-26	Schriever	Fletcher Technical Community College	10
160074	East Baton Rouge	Louisiana	2021-05-26	Baton Rouge	Franciscan Missionaries of Our Lady University	108
159009	Lincoln	Louisiana	2021-05-26	Grambling	Grambling State University	158
159568	Rapides	Louisiana	2021-05-26	Pineville	Louisiana College	134
483212	Ouachita	Louisiana	2021-05-26	Monroe	Louisiana Delta Community College	117
159391	East Baton Rouge	Louisiana	2021-05-26	Baton Rouge	Louisiana State University	2349
159382	Rapides	Louisiana	2021-05-26	Alexandria	Louisiana State University Alexandria	126
159407	Acadia	Louisiana	2021-05-26	Eunice	Louisiana State University Eunice	149
159373	Orleans	Louisiana	2021-05-26	New Orleans	Louisiana State University Health Sciences Center, New Orleans	467
435000	Caddo	Louisiana	2021-05-26	Shreveport	Louisiana State University Health Sciences Center, Shreveport	70
159416	Caddo	Louisiana	2021-05-26	Shreveport	Louisiana State University Shreveport	170
159647	Lincoln	Louisiana	2021-05-26	Ruston	Louisiana Tech University	839
159656	Orleans	Louisiana	2021-05-26	New Orleans	Loyola University New Orleans	295
159717	Calcasieu	Louisiana	2021-05-26	Lake Charles	McNeese State University	47
159948	Orleans	Louisiana	2021-05-26	New Orleans	New Orleans Baptist Theological Seminary	32
159966	Lafourche	Louisiana	2021-05-26	Thibodaux	Nicholls State University	334
160667	St. Tammany	Louisiana	2021-05-26	Lacombe	Northshore Technical Community College	33
160010	Webster	Louisiana	2021-05-26	Minden	Northwest Louisiana Technical College	37
160038	Natchitoches	Louisiana	2021-05-26	Natchitoches	Northwestern State University of Louisiana	552
158884	St. Bernard	Louisiana	2021-05-26	Chalmette	Nunez Community College	27
436304	Ascension	Louisiana	2021-05-26	Gonzales	River Parishes Community College	9
160579	Calcasieu	Louisiana	2021-05-26	Lake Charles	SOWELA Technical Community College	40
160409	St. Tammany	Louisiana	2021-05-26	Benedict	Saint Joseph Seminary College	2
434061	Lafayette	Louisiana	2021-05-26	Lafayette	South Louisiana Community College	103
160612	Tangipahoa	Louisiana	2021-05-26	Hammond	Southeastern Louisiana University	604
440916	East Baton Rouge	Louisiana	2021-05-26	Baton Rouge	Southern University Law Center	35
160621	East Baton Rouge	Louisiana	2021-05-26	Baton Rouge	Southern University and A&M College	331
160630	Orleans	Louisiana	2021-05-26	New Orleans	Southern University at New Orleans	21
160649	Caddo	Louisiana	2021-05-26	Shreveport	Southern University at Shreveport	34
160755	Orleans	Louisiana	2021-05-26	New Orleans	Tulane University of Louisiana	2194
160065	Orleans	Louisiana	2021-05-26	New Orleans	University of Holy Cross	8
159993	Ouachita	Louisiana	2021-05-26	Monroe	University of Louisiana Monroe	507
160658	Lafayette	Louisiana	2021-05-26	Lafayette	University of Louisiana at Lafayette	848
159939	Orleans	Louisiana	2021-05-26	New Orleans	University of New Orleans	100
160904	Orleans	Louisiana	2021-05-26	New Orleans	Xavier University of Louisiana	119
160977	Androscoggin	Maine	2021-05-26	Lewiston	Bates College	160
161004	Cumberland	Maine	2021-05-26	Brunswick	Bowdoin College	36
161086	Kennebec	Maine	2021-05-26	Waterville	Colby College	163
487524	Penobscot	Maine	2021-05-26	Bangor	Husson University	161
161299	Hancock	Maine	2021-05-26	Castine	Maine Maritime Academy	54
161518	Cumberland	Maine	2021-05-26	Standish	Saint Joseph's College of Maine	41
161563	Kennebec	Maine	2021-05-26	Waterville	Thomas College	48
161253	Penobscot	Maine	2021-05-26	Orono	University of Maine	615
161226	Franklin	Maine	2021-05-26	Farmington	University of Maine Farmington	48
161217	Kennebec	Maine	2021-05-26	Augusta	University of Maine at Augusta	14
161235	Aroostook	Maine	2021-05-26	Fort Kent	University of Maine at Fort Kent	6
161244	Washington	Maine	2021-05-26	Machias	University of Maine at Machias	2
161341	Aroostook	Maine	2021-05-26	Presque Isle	University of Maine at Presque Isle	6
161457	York	Maine	2021-05-26	Biddeford	University of New England	281
161554	Cumberland	Maine	2021-05-26	Portland	University of Southern Maine	54
376695	n/a	Marshall Islands	2021-05-26	Majuro	College of the Marshall Islands	0
162007	Prince George's	Maryland	2021-05-26	Bowie	Bowie State University	116
162283	Baltimore city	Maryland	2021-05-26	Baltimore	Coppin State University	8
173461	St. Louis	Minnesota	2021-05-26	Duluth	Lake Superior College	155
162584	Allegany	Maryland	2021-05-26	Frostburg	Frostburg State University	380
162654	Baltimore City	Maryland	2021-05-26	Baltimore	Goucher College	4
162760	Frederick	Maryland	2021-05-26	Frederick	Hood College	60
162928	Baltimore City	Maryland	2021-05-26	Baltimore	Johns Hopkins University	1509
163046	Baltimore	Maryland	2021-05-26	Baltimore	Loyola University Maryland	345
164270	Carroll	Maryland	2021-05-26	Westminster	McDaniel College	135
163453	Baltimore city	Maryland	2021-05-26	Baltimore	Morgan State University	60
163462	Frederick	Maryland	2021-05-26	Emmitsburg	Mount St. Mary's University	24
163578	Baltimore City	Maryland	2021-05-26	Baltimore	Notre Dame of Maryland University	32
163851	Wicomico	Maryland	2021-05-26	Salisbury	Salisbury University	824
163912	St. Mary's	Maryland	2021-05-26	St. Mary's City	St. Mary's College of Maryland	63
164173	Baltimore	Maryland	2021-05-26	Stevenson	Stevenson University	392
164076	Baltimore	Maryland	2021-05-26	Towson	Towson University	858
164155	Anne Arundel	Maryland	2021-05-26	Annapolis	United States Naval Academy	8
161873	Baltimore	Maryland	2021-05-26	Baltimore	University of Baltimore	4
163338	Somerset	Maryland	2021-05-26	Princess Anne	University of Maryland Eastern Shore	141
163259	Baltimore	Maryland	2021-05-26	Baltimore	University of Maryland, Baltimore	1
163268	Baltimore	Maryland	2021-05-26	Catonsville	University of Maryland, Baltimore County	155
163286	Prince George's	Maryland	2021-05-26	College Park	University of Maryland, College Park	2234
164216	Kent	Maryland	2021-05-26	Chestertown	Washington College	36
164447	Hampden	Massachusetts	2021-05-26	Springfield	American International College	45
164465	Hampshire	Massachusetts	2021-05-26	Amherst	Amherst College	48
164492	Worcester	Massachusetts	2021-05-26	Paxton	Anna Maria College	102
164562	Worcester	Massachusetts	2021-05-26	Worcester	Assumption College	116
164580	Norfolk	Massachusetts	2021-05-26	Wellesley	Babson College	424
164632	Hampden	Massachusetts	2021-05-26	Longmeadow	Bay Path University	34
164720	Worcester	Massachusetts	2021-05-26	Worcester	Becker College	0
164739	Middlesex	Massachusetts	2021-05-26	Waltham	Bentley University	475
164924	Middlesex	Massachusetts	2021-05-26	Chestnut Hill	Boston College	1211
164988	Suffolk	Massachusetts	2021-05-26	Boston	Boston University	1828
165015	Middlesex	Massachusetts	2021-05-26	Waltham	Brandeis University	126
165024	Plymouth	Massachusetts	2021-05-26	Bridgewater	Bridgewater State University	372
165334	Worcester	Massachusetts	2021-05-26	Worcester	Clark University	160
167394	Hampden	Massachusetts	2021-05-26	Chicopee	College of Our Lady of the Elms	7
166124	Worcester	Massachusetts	2021-05-26	Worcester	College of the Holy Cross	123
165529	Norfolk	Massachusetts	2021-05-26	Milton	Curry College	216
165574	Norfolk	Massachusetts	2021-05-26	Franklin	Dean College	64
165644	Norfolk	Massachusetts	2021-05-26	Quincy	Eastern Nazarene College	95
165662	Suffolk	Massachusetts	2021-05-26	Boston	Emerson College	236
165671	Suffolk	Massachusetts	2021-05-26	Boston	Emmanuel College	87
165699	Essex	Massachusetts	2021-05-26	Beverly	Endicott College	237
165820	Worcester	Massachusetts	2021-05-26	Fitchburg	Fitchburg State University	213
165866	Middlesex	Massachusetts	2021-05-26	Framingham	Framingham State University	85
441982	Norfolk	Massachusetts	2021-05-26	Needham	Franklin W Olin College of Engineering	9
165936	Essex	Massachusetts	2021-05-26	Wenham	Gordon College	34
166018	Hampshire	Massachusetts	2021-05-26	Amherst	Hampshire College	16
166027	Middlesex	Massachusetts	2021-05-26	Cambridge	Harvard University	810
166045	Middlesex	Massachusetts	2021-05-26	Newton Centre	Hebrew College	1
166391	Middlesex	Massachusetts	2021-05-26	Newton	Lasell University	91
166452	Middlesex	Massachusetts	2021-05-26	Cambridge	Lesley University	0
166674	Suffolk	Massachusetts	2021-05-26	Boston	Massachusetts College of Art and Design	86
167288	Berkshire	Massachusetts	2021-05-26	North Adams	Massachusetts College of Liberal Arts	45
166656	Suffolk	Massachusetts	2021-05-26	Boston	Massachusetts College of Pharmacy and Health Sciences	478
166683	Middlesex	Massachusetts	2021-05-26	Cambridge	Massachusetts Institute of Technology	1046
166692	Barnstable	Massachusetts	2021-05-26	Buzzards Bay	Massachusetts Maritime Academy	60
166850	Essex	Massachusetts	2021-05-26	North Andover	Merrimack College	430
166939	Hampshire	Massachusetts	2021-05-26	South Hadley	Mount Holyoke College	47
167260	Worcester	Massachusetts	2021-05-26	Dudley	Nichols College	150
167358	Suffolk	Massachusetts	2021-05-26	Boston	Northeastern University	1928
167455	Suffolk	Massachusetts	2021-05-26	Chestnut Hill	Pine Manor College	0
167598	Middlesex	Massachusetts	2021-05-26	Weston	Regis College	68
167729	Essex	Massachusetts	2021-05-26	Salem	Salem State University	122
167783	Suffolk	Massachusetts	2021-05-26	Boston	Simmons University	21
167835	Hampshire	Massachusetts	2021-05-26	Northampton	Smith College	43
167899	Hampden	Massachusetts	2021-05-26	Springfield	Springfield College	328
167996	Bristol	Massachusetts	2021-05-26	Easton	Stonehill College	260
168005	Suffolk	Massachusetts	2021-05-26	Boston	Suffolk University	313
168148	Middlesex	Massachusetts	2021-05-26	Medford	Tufts University	788
166629	Hampshire	Massachusetts	2021-05-26	Amherst	University of Massachusetts Amherst	2567
166638	Suffolk	Massachusetts	2021-05-26	Boston	University of Massachusetts Boston	98
167987	Bristol	Massachusetts	2021-05-26	Dartmouth	University of Massachusetts Dartmouth	303
166513	Middlesex	Massachusetts	2021-05-26	Lowell	University of Massachusetts Lowell	170
166708	Worcester	Massachusetts	2021-05-26	Worcester	University of Massachusetts Medical School	153
168218	Norfolk	Massachusetts	2021-05-26	Wellesley	Wellesley College	48
168227	Suffolk	Massachusetts	2021-05-26	Boston	Wentworth Institute of Technology	269
168254	Hampden	Massachusetts	2021-05-26	Springfield	Western New England University	405
168263	Hampden	Massachusetts	2021-05-26	Westfield	Westfield State University	236
168342	Berkshire	Massachusetts	2021-05-26	Williamstown	Williams College	58
168421	Worcester	Massachusetts	2021-05-26	Worcester	Worcester Polytechnic Institute	260
168430	Worcester	Massachusetts	2021-05-26	Worcester	Worcester State University	203
168528	Lenawee	Michigan	2021-05-26	Adrian	Adrian College	484
168546	Calhoun	Michigan	2021-05-26	Albion	Albion College	189
168591	Gratiot	Michigan	2021-05-26	Alma	Alma College	279
168607	Alpena	Michigan	2021-05-26	Alpena	Alpena Community College	25
168740	Berrien	Michigan	2021-05-26	Berrien Springs	Andrews University	200
168786	Kent	Michigan	2021-05-26	Grand Rapids	Aquinas College	151
168883	Delta	Michigan	2021-05-26	Escanaba	Bay College	14
380359	Chippewa	Michigan	2021-05-26	Brimley	Bay Mills Community College	1
169080	Kent	Michigan	2021-05-26	Grand Rapids	Calvin University	649
169248	Isabella	Michigan	2021-05-26	Mount Pleasant	Central Michigan University	1156
169327	Livingston	Michigan	2021-05-26	Howell	Cleary University	7
169363	Washtenaw	Michigan	2021-05-26	Ann Arbor	Concordia University Ann Arbor	61
170037	Kent	Michigan	2021-05-26	Grand Rapids	Cornerstone University	18
169479	Kent	Michigan	2021-05-26	Grand Rapids	Davenport University	72
169798	Washtenaw	Michigan	2021-05-26	Ypsilanti	Eastern Michigan University	901
169910	Mecosta	Michigan	2021-05-26	Big Rapids	Ferris State University	767
172440	Houghton	Michigan	2021-05-26	Hancock	Finlandia University	77
169974	St. Joseph	Michigan	2021-05-26	Centreville	Glen Oaks Community College	42
170055	Kent	Michigan	2021-05-26	Grand Rapids	Grand Rapids Community College	212
170082	Ottawa	Michigan	2021-05-26	Allendale	Grand Valley State University	3285
170091	Eaton	Michigan	2021-05-26	Lansing	Great Lakes Christian College	19
170240	Wayne	Michigan	2021-05-26	Dearborn	Henry Ford College	0
170286	Hillsdale	Michigan	2021-05-26	Hillsdale	Hillsdale College	340
170301	Ottawa	Michigan	2021-05-26	Holland	Hope College	542
170444	Jackson	Michigan	2021-05-26	Jackson	Jackson College	36
170532	Kalamazoo	Michigan	2021-05-26	Kalamazoo	Kalamazoo College	114
169983	Genesee	Michigan	2021-05-26	Flint	Kettering University	103
171881	Kent	Michigan	2021-05-26	Grand Rapids	Kuyper College	6
170620	Berrien	Michigan	2021-05-26	Benton Harbor	Lake Michigan College	45
170639	Chippewa	Michigan	2021-05-26	Sault Ste. Marie	Lake Superior State University	165
170675	Oakland	Michigan	2021-05-26	Southfield	Lawrence Technological University	157
170806	Wayne	Michigan	2021-05-26	Livonia	Madonna University	317
171100	Ingham	Michigan	2021-05-26	East Lansing	Michigan State University	4312
171128	Houghton	Michigan	2021-05-26	Houghton	Michigan Technological University	496
171155	Clare	Michigan	2021-05-26	Harrison	Mid Michigan College	76
169275	Genesee	Michigan	2021-05-26	Flint	Mott Community College	13
171456	Marquette	Michigan	2021-05-26	Marquette	Northern Michigan University	441
171483	Grand Traverse	Michigan	2021-05-26	Traverse City	Northwestern Michigan College	39
171492	Midland	Michigan	2021-05-26	Midland	Northwood University	171
171571	Oakland	Michigan	2021-05-26	Rochester	Oakland University	628
171599	Eaton	Michigan	2021-05-26	Olivet	Olivet College	155
170967	Oakland	Michigan	2021-05-26	Rochester Hills	Rochester University	92
172051	Bay	Michigan	2021-05-26	University Center	Saginaw Valley State University	589
172200	Wayne	Michigan	2021-05-26	Livonia	Schoolcraft College	186
172264	Lenawee	Michigan	2021-05-26	Adrian	Siena Heights University	162
172334	Jackson	Michigan	2021-05-26	Spring Arbor	Spring Arbor University	217
169716	Wayne	Michigan	2021-05-26	Detroit	University of Detroit Mercy	304
170976	Washtenaw	Michigan	2021-05-26	Ann Arbor	University of Michigan	6116
171137	Wayne	Michigan	2021-05-26	Dearborn	University of Michigan-Dearborn	54
171146	Genesee	Michigan	2021-05-26	Flint	University of Michigan-Flint	68
172617	Washtenaw	Michigan	2021-05-26	Ann Arbor	Washtenaw Community College	2
172644	Wayne	Michigan	2021-05-26	Detroit	Wayne State University	643
172699	Kalamazoo	Michigan	2021-05-26	Kalamazoo	Western Michigan University	1583
172918	Douglas	Minnesota	2021-05-26	Alexandria	Alexandria Technical & Community College	131
172954	Anoka	Minnesota	2021-05-26	Anoka	Anoka Technical College	79
172963	Anoka	Minnesota	2021-05-26	Coon Rapids	Anoka-Ramsey Community College	257
173045	Hennepin	Minnesota	2021-05-26	Minneapolis	Augsburg University	253
173124	Beltrami	Minnesota	2021-05-26	Bemidji	Bemidji State University	375
173142	Blue Earth	Minnesota	2021-05-26	Mankato	Bethany Lutheran College	105
173160	Ramsey	Minnesota	2021-05-26	Saint Paul	Bethel University	568
173258	Rice	Minnesota	2021-05-26	Northfield	Carleton College	90
173203	Crow Wing	Minnesota	2021-05-26	Brainerd	Central Lakes College-Brainerd	186
17320301	Wadena	Minnesota	2021-05-26	Staples	Central Lakes College-Staples	24
175315	Ramsey	Minnesota	2021-05-26	White Bear Lake	Century College	277
174747	Stearns	Minnesota	2021-05-26	St. Joseph	College of Saint Benedict and Saint John's University	866
173300	Clay	Minnesota	2021-05-26	Moorhead	Concordia College at Moorhead	341
173328	Ramsey	Minnesota	2021-05-26	St. Paul	Concordia University, St. Paul	263
174862	Hennepin	Minnesota	2021-05-26	Saint Bonifacius	Crown College	12
173416	Dakota	Minnesota	2021-05-26	Rosemount	Dakota County Technical College	98
380368	Carlton	Minnesota	2021-05-26	Cloquet	Fond du Lac Tribal and Community College	17
173647	Nicollet	Minnesota	2021-05-26	Saint Peter	Gustavus Adolphus College	300
173665	Ramsey	Minnesota	2021-05-26	St. Paul	Hamline University	206
173708	Hennepin	Minnesota	2021-05-26	Brooklyn Park	Hennepin Technical College	87
173735	St. Louis	Minnesota	2021-05-26	Hibbing	Hibbing Community College	54
173799	Dakota	Minnesota	2021-05-26	Inver Grove Heights	Inver Hills Community College	105
173805	Itasca	Minnesota	2021-05-26	Grand Rapids	Itasca Community College	31
173902	Ramsey	Minnesota	2021-05-26	St. Paul	Macalester College	80
173452	Brown	Minnesota	2021-05-26	New Ulm	Martin Luther College	133
173993	St. Louis	Minnesota	2021-05-26	Virginia	Mesabi Range College	75
17399301	St. Louis	Minnesota	2021-05-26	Eveleth	Mesabi Range College	0
174020	Ramsey	Minnesota	2021-05-26	Saint Paul	Metropolitan State University	309
174136	Hennepin	Minnesota	2021-05-26	Minneapolis	Minneapolis Community and Technical College	235
175263	Winona	Minnesota	2021-05-26	Winona	Minnesota State College Southeast	93
173559	Otter Tail	Minnesota	2021-05-26	Fergus Falls	Minnesota State Community and Technical College	191
174358	Clay	Minnesota	2021-05-26	Moorhead	Minnesota State University Moorhead	349
173920	Blue Earth	Minnesota	2021-05-26	Mankato	Minnesota State University, Mankato	649
173638	Yellow Medicine	Minnesota	2021-05-26	Granite Falls	Minnesota West Community and Technical College	93
174428	Hennepin	Minnesota	2021-05-26	Bloomington	Normandale Community College	39
174437	Hennepin	Minnesota	2021-05-26	Minneapolis	North Central University	0
174376	Hennepin	Minnesota	2021-05-26	Brooklyn Park	North Hennepin Community College	122
174473	Pennington	Minnesota	2021-05-26	Thief River Falls	Northland Community and Technical College	173
173115	Beltrami	Minnesota	2021-05-26	Bemidji	Northwest Technical College	38
174570	Pine	Minnesota	2021-05-26	Pine City	Pine Technical & Community College	33
174604	Koochiching	Minnesota	2021-05-26	International Falls	Rainy River Community College	6
175236	Kandiyohi	Minnesota	2021-05-26	Willmar	Ridgewater College	145
173063	Mower	Minnesota	2021-05-26	Austin	Riverland Community College	59
174738	Olmsted	Minnesota	2021-05-26	Rochester	Rochester Community and Technical College	198
174817	Winona	Minnesota	2021-05-26	Winona	Saint Mary's University of Minnesota	147
173911	Nicollet	Minnesota	2021-05-26	North Mankato	South Central College	113
175078	Lyon	Minnesota	2021-05-26	Marshall	Southwest Minnesota State University	246
175005	Ramsey	Minnesota	2021-05-26	St. Paul	St. Catherine University	237
174783	Stearns	Minnesota	2021-05-26	St. Cloud	St. Cloud State University	677
174756	Stearns	Minnesota	2021-05-26	St. Cloud	St. Cloud Technical and Community College	132
174844	Rice	Minnesota	2021-05-26	Northfield	St. Olaf College	282
175041	Ramsey	Minnesota	2021-05-26	St. Paul	St. Paul College	164
174899	St. Louis	Minnesota	2021-05-26	Duluth	The College of Saint Scholastica	212
174075	Polk	Minnesota	2021-05-26	Crookston	University of Minnesota Crookston	2
174233	St. Louis	Minnesota	2021-05-26	Duluth	University of Minnesota Duluth	727
174251	Stevens	Minnesota	2021-05-26	Morris	University of Minnesota Morris	115
456959	Olmsted	Minnesota	2021-05-26	Rochester	University of Minnesota Rochester	5
174066	Hennepin	Minnesota	2021-05-26	Minneapolis	University of Minnesota Twin Cities	1920
174491	Ramsey	Minnesota	2021-05-26	St. Paul	University of Northwestern, St. Paul	146
174914	Ramsey	Minnesota	2021-05-26	St. Paul	University of St. Thomas	1065
175157	St. Louis	Minnesota	2021-05-26	Ely	Vermilion Community College	20
175272	Winona	Minnesota	2021-05-26	Winona	Winona State University	727
175342	Jefferson	Mississippi	2021-05-26	Lorman	Alcorn State University	203
175421	Hinds	Mississippi	2021-05-26	Jackson	Belhaven University	146
175616	Bolivar	Mississippi	2021-05-26	Cleveland	Delta State University	263
175856	Hinds	Mississippi	2021-05-26	Jackson	Jackson State University	236
175980	Hinds	Mississippi	2021-05-26	Jackson	Millsaps College	100
176053	Hinds	Mississippi	2021-05-26	Clinton	Mississippi College	253
176008	Sunflower	Mississippi	2021-05-26	Moorhead	Mississippi Delta Community College	98
176080	Oktibbeha	Mississippi	2021-05-26	Mississippi State	Mississippi State University	1195
176035	Lowndes	Mississippi	2021-05-26	Columbus	Mississippi University for Women	157
176044	Leflore	Mississippi	2021-05-26	Itta Bena	Mississippi Valley State University	216
176169	Prentiss	Mississippi	2021-05-26	Booneville	Northeast Mississippi Community College	157
176318	Marshall	Mississippi	2021-05-26	Holly Springs	Rust College	39
176017	Lafayette	Mississippi	2021-05-26	Oxford	University of Mississippi	1272
17601701	Hinds	Mississippi	2021-05-26	Jackson	University of Mississippi Medical Center	1114
176372	Forrest	Mississippi	2021-05-26	Hattiesburg	University of Southern Mississippi	683
176947	Howard	Missouri	2021-05-26	Fayette	Central Methodist University	388
178697	Taney	Missouri	2021-05-26	Point Lookout	College of the Ozarks	2
177135	Newton	Missouri	2021-05-26	Neosho	Crowder College	289
177214	Greene	Missouri	2021-05-26	Springfield	Drury University	322
177339	Greene	Missouri	2021-05-26	Springfield	Evangel University	286
177418	St. Louis City	Missouri	2021-05-26	Saint Louis	Fontbonne University	62
15336601	Jackson	Missouri	2021-05-26	Independence	Graceland University at Independence	17
177551	St. Louis City	Missouri	2021-05-26	St. Louis	Harris-Stowe State University	55
177746	Kansas City	Missouri	2021-05-26	Kansas City	Kansas City Art Institute	39
177940	Cole	Missouri	2021-05-26	Jefferson City	Lincoln University of Missouri	28
177968	St. Charles	Missouri	2021-05-26	St. Charles	Lindenwood University	377
178059	St. Louis	Missouri	2021-05-26	St. Louis	Maryville University Saint Louis	217
178244	St. Louis	Missouri	2021-05-26	St. Louis	Missouri Baptist University	200
178341	Joplin	Missouri	2021-05-26	Joplin	Missouri Southern State University	335
179566	Greene	Missouri	2021-05-26	Springfield	Missouri State University	1937
178411	Phelps	Missouri	2021-05-26	Rolla	Missouri University of Science and Technology	478
178387	Buchanan	Missouri	2021-05-26	St. Joseph	Missouri Western State University	407
178624	Nodaway	Missouri	2021-05-26	Maryville	Northwest Missouri State University	881
177472	Greene	Missouri	2021-05-26	Springfield	Ozarks Technical Community College	898
179043	Kansas City	Missouri	2021-05-26	Kansas City	Rockhurst University	40
179159	St. Louis City	Missouri	2021-05-26	St. Louis	Saint Louis University	771
179557	Cape Girardeau	Missouri	2021-05-26	Cape Girardeau	Southeast Missouri State University	699
179326	Polk	Missouri	2021-05-26	Bolivar	Southwest Baptist University	281
179265	St. Louis City	Missouri	2021-05-26	St. Louis	St. Louis College of Pharmacy	110
179308	St. Louis County	Missouri	2021-05-26	St. Louis	St. Louis Community College	119
179539	Pettis	Missouri	2021-05-26	Sedalia	State Fair Community College	324
179548	Boone	Missouri	2021-05-26	Columbia	Stephens College	29
178615	Adair	Missouri	2021-05-26	Kirksville	Truman State University	521
176965	Johnson	Missouri	2021-05-26	Warrensburg	University of Central Missouri	891
178396	Boone	Missouri	2021-05-26	Columbia	University of Missouri	3170
178402	Kansas City	Missouri	2021-05-26	Kansas City	University of Missouri-Kansas City	418
178420	St. Louis County	Missouri	2021-05-26	Bellerive Acres	University of Missouri-St. Louis	484
179867	St. Louis County	Missouri	2021-05-26	St. Louis	Washington University in St. Louis	748
179894	St. Louis City	Missouri	2021-05-26	Saint Louis	Webster University	84
179946	Callaway	Missouri	2021-05-26	Fulton	Westminster College	105
179955	Clay	Missouri	2021-05-26	Liberty	William Jewell College	206
179964	Callaway	Missouri	2021-05-26	Fulton	William Woods University	72
180106	Lewis and Clark	Montana	2021-05-26	Helena	Carroll College	211
180151	Dawson	Montana	2021-05-26	Glendive	Dawson Community College	47
180197	Flathead	Montana	2021-05-26	Kalispell	Flathead Valley Community College	38
180249	Cascade	Montana	2021-05-26	Great Falls	Great Falls College Montana State University	9
180276	Lewis and Clark	Montana	2021-05-26	Helena	Helena College	12
180328	Big Horn	Montana	2021-05-26	Crow Agency	Little Big Horn College	10
180373	Custer	Montana	2021-05-26	Miles City	Miles Community College	21
262165	Gallatin	Montana	2021-05-26	Bozeman	Montana Bible College	1
180461	Gallatin	Montana	2021-05-26	Bozeman	Montana State University	1952
180179	Yellowstone	Montana	2021-05-26	Billings	Montana State University Billings	156
180522	Hill	Montana	2021-05-26	Havre	Montana State University Northern	91
180416	Silver Bow	Montana	2021-05-26	Butte	Montana Technological University	296
489812	Beaverhead	Montana	2021-05-26	Dillon	Pima Medical Institute-Dillon	4
180595	Yellowstone	Montana	2021-05-26	Billings	Rocky Mountain College	90
180647	Lake	Montana	2021-05-26	Pablo	Salish Kootenai College	0
366340	Hill	Montana	2021-05-26	Box Elder	Stone Child College	0
180489	Missoula	Montana	2021-05-26	Missoula	University of Montana	685
180692	Beaverhead	Montana	2021-05-26	Dillon	University of Montana Western	168
180948	Dawes	Nebraska	2021-05-26	Chadron	Chadron State College	240
180984	Seward	Nebraska	2021-05-26	Seward	Concordia University, Nebraska	191
181002	Douglas	Nebraska	2021-05-26	Omaha	Creighton University	1118
181020	Saline	Nebraska	2021-05-26	Crete	Doane University	195
181127	Adams	Nebraska	2021-05-26	Hastings	Hastings College	132
181330	Dodge	Nebraska	2021-05-26	Fremont	Midland University	240
181446	Lancaster	Nebraska	2021-05-26	Lincoln	Nebraska Wesleyan University	509
181534	Nemaha	Nebraska	2021-05-26	Peru	Peru State College	200
181640	Lancaster	Nebraska	2021-05-26	Lincoln	Southeast Community College	552
181428	Douglas	Nebraska	2021-05-26	Omaha	University of Nebraska Medical Center	380
181215	Buffalo	Nebraska	2021-05-26	Kearney	University of Nebraska at Kearney	520
181394	Douglas	Nebraska	2021-05-26	Omaha	University of Nebraska at Omaha	783
181464	Lancaster	Nebraska	2021-05-26	Lincoln	University of Nebraska-Lincoln	3118
181783	Wayne	Nebraska	2021-05-26	Wayne	Wayne State College	366
182005	Clark	Nevada	2021-05-26	Las Vegas	College of Southern Nevada	440
182306	Elko	Nevada	2021-05-26	Elko	Great Basin College	43
441900	Clark	Nevada	2021-05-26	Henderson	Nevada State College	48
182500	Washoe	Nevada	2021-05-26	Reno	Truckee Meadows Community College	58
182281	Clark	Nevada	2021-05-26	Las Vegas	University of Nevada, Las Vegas	719
182290	Washoe	Nevada	2021-05-26	Reno	University of Nevada, Reno	1544
182564	Carson City	Nevada	2021-05-26	Carson City	Western Nevada College	53
245865	Cheshire	New Hampshire	2021-05-26	Keene	Antioch University-New England	0
182634	Merrimack	New Hampshire	2021-05-26	New London	Colby-Sawyer College	105
182670	Grafton	New Hampshire	2021-05-26	Hanover	Dartmouth College	405
182795	Cheshire	New Hampshire	2021-05-26	Rindge	Franklin Pierce University	22
183257	Merrimack	New Hampshire	2021-05-26	Concord	Granite State College	0
183150	Rockingham	New Hampshire	2021-05-26	Portsmouth	Great Bay Community College	19
183062	Cheshire	New Hampshire	2021-05-26	Keene	Keene State College	358
183123	Belknap	New Hampshire	2021-05-26	Laconia	Lakes Region Community College	25
182917	Merrimack	New Hampshire	2021-05-26	Warner	Magdalen College	42
183099	Merrimack	New Hampshire	2021-05-26	Concord	NHTI-Concord's Community College	28
183141	Hillsborough	New Hampshire	2021-05-26	Nashua	Nashua Community College	26
182980	Merrimack	New Hampshire	2021-05-26	Henniker	New England College	46
183080	Grafton	New Hampshire	2021-05-26	Plymouth	Plymouth State University	875
183114	Sullivan	New Hampshire	2021-05-26	Claremont	River Valley Community College	11
183211	Hillsborough	New Hampshire	2021-05-26	Nashua	Rivier University	14
183239	Hillsborough	New Hampshire	2021-05-26	Manchester	Saint Anselm College	229
183026	Hillsborough	New Hampshire	2021-05-26	Manchester	Southern New Hampshire University	28
183248	Hillsborough	New Hampshire	2021-05-26	Nashua	St. Joseph School of Nursing	0
183275	Hillsborough	New Hampshire	2021-05-26	Merrimack	Thomas More College of Liberal Arts	2
183044	Strafford	New Hampshire	2021-05-26	Durham	University of New Hampshire	2281
440004	Grafton	New Hampshire	2021-05-26	Lebanon	Upper Valley Educators Institute	1
183105	Coos	New Hampshire	2021-05-26	Berlin	White Mountains Community College	17
206604	Montgomery	Ohio	2021-05-26	Dayton	Wright State University	246
183789	Passaic	New Jersey	2021-05-26	Woodland Park	Berkeley College New Jersey campuses	37
183822	Essex	New Jersey	2021-05-26	Bloomfield	Bloomfield College	83
183910	Essex	New Jersey	2021-05-26	Caldwell	Caldwell University	47
183974	Warren	New Jersey	2021-05-26	Hackettstown	Centenary University	66
184348	Morris	New Jersey	2021-05-26	Madison	Drew University	122
184603	Bergen	New Jersey	2021-05-26	Teaneck	Fairleigh Dickinson University	116
184694	Morris	New Jersey	2021-05-26	Madison	Fairleigh Dickinson University Florham	81
184612	Bergen	New Jersey	2021-05-26	Lodi	Felician University	82
184773	Ocean	New Jersey	2021-05-26	Lakewood	Georgian Court University	179
185262	Union	New Jersey	2021-05-26	Union	Kean University	209
185572	Monmouth	New Jersey	2021-05-26	West Long Branch	Monmouth University	698
185590	Essex	New Jersey	2021-05-26	Montclair	Montclair State University	559
185129	Hudson	New Jersey	2021-05-26	Jersey City	New Jersey City University	244
185828	Essex	New Jersey	2021-05-26	Newark	New Jersey Institute of Technology	219
186131	Mercer	New Jersey	2021-05-26	Princeton	Princeton University	300
186201	Bergen	New Jersey	2021-05-26	Mahwah	Ramapo College of New Jersey	165
186283	Mercer	New Jersey	2021-05-26	Lawrenceville	Rider University	217
184782	Gloucester	New Jersey	2021-05-26	Glassboro	Rowan University	1376
186380	Middlesex	New Jersey	2021-05-26	New Brunswick	Rutgers University	1938
186371	Camden	New Jersey	2021-05-26	Camden	Rutgers University-Camden	193
186399	Essex	New Jersey	2021-05-26	Newark	Rutgers University-Newark	181
186618	Morris	New Jersey	2021-05-26	Morristown	Saint Elizabeth University	47
186432	Hudson	New Jersey	2021-05-26	Jersey City	Saint Peter's University	65
186584	Essex	New Jersey	2021-05-26	South Orange	Seton Hall University	451
186867	Hudson	New Jersey	2021-05-26	Hoboken	Stevens Institute of Technology	453
186876	Atlantic	New Jersey	2021-05-26	Galloway	Stockton University	691
187134	Mercer	New Jersey	2021-05-26	Ewing	The College of New Jersey	267
187046	Mercer	New Jersey	2021-05-26	Trenton	Thomas Edison State University	0
187444	Passaic	New Jersey	2021-05-26	Wayne	William Paterson University	244
187648	Roosevelt	New Mexico	2021-05-26	Portales	Eastern New Mexico University	56
187745	Santa Fe	New Mexico	2021-05-26	Santa Fe	Institute of American Indian Arts	3
187596	McKinley	New Mexico	2021-05-26	Crownpoint	Navajo Technical University	33
187897	San Miguel	New Mexico	2021-05-26	Las Vegas	New Mexico Highlands University	73
187967	Socorro	New Mexico	2021-05-26	Socorro	New Mexico Institute of Mining and Technology	40
187912	Chaves	New Mexico	2021-05-26	Roswell	New Mexico Military Institute	175
188030	Doña Ana	New Mexico	2021-05-26	Las Cruces	New Mexico State University	617
188058	Rio Arriba	New Mexico	2021-05-26	Española	Northern New Mexico College	0
188100	San Juan	New Mexico	2021-05-26	Farmington	San Juan College	98
188137	Santa Fe	New Mexico	2021-05-26	Santa Fe	Santa Fe Community College	32
187985	Bernalillo	New Mexico	2021-05-26	Albuquerque	University of New Mexico	506
188304	Grant	New Mexico	2021-05-26	Silver City	Western New Mexico University	111
404994	New York City	New York	2021-05-26	New York City	ASA College	10
188429	Nassau	New York	2021-05-26	Garden City	Adelphi University	231
188438	Warren	New York	2021-05-26	Queensbury	Adirondack Community College	33
188526	Albany	New York	2021-05-26	Albany	Albany College of Pharmacy and Health Sciences	57
188580	Albany	New York	2021-05-26	Albany	Albany Medical College	56
385415	New York City	New York	2021-05-26	New York City	Albert Einstein College of Medicine	111
188641	Allegany	New York	2021-05-26	Alfred	Alfred University	176
189015	New York City	New York	2021-05-26	New York City	Bank Street College of Education	6
189088	Dutchess	New York	2021-05-26	Annadale-on-Hudson	Bard College	63
189097	New York City	New York	2021-05-26	New York City	Barnard College	153
189228	New York City	New York	2021-05-26	New York City	Berkeley College New York campuses	14
189413	New York City	New York	2021-05-26	New York City	Boricua College	12
18956501	Onondaga	New York	2021-05-26	Syracuse	Bryant & Stratton College	31
188517	Albany	New York	2021-05-26	Albany	Bryant & Stratton College-Albany	64
18958301	Erie	New York	2021-05-26	Getzville	Bryant & Stratton College-Amherst	12
189583	Erie	New York	2021-05-26	Buffalo	Bryant & Stratton College-Buffalo	22
189592	Monroe	New York	2021-05-26	Rochester	Bryant & Stratton College-Greece	8
18959201	Monroe	New York	2021-05-26	Rochester	Bryant & Stratton College-Henrietta	6
18958302	Erie	New York	2021-05-26	Orchard Park	Bryant & Stratton College-Southtowns	29
189565	Onondaga	New York	2021-05-26	Liverpool	Bryant & Stratton College-Syracuse North	11
190512	New York City	New York	2021-05-26	New York City	CUNY Baruch College	39
190521	New York City	New York	2021-05-26	New York City	CUNY Borough of Manhattan Community College	44
190530	New York City	New York	2021-05-26	New York City	CUNY Bronx Community College	20
190549	New York City	New York	2021-05-26	New York City	CUNY Brooklyn College	52
190567	New York City	New York	2021-05-26	New York City	CUNY City College of New York	57
190558	New York City	New York	2021-05-26	New York City	CUNY College of Staten Island	64
475565	New York City	New York	2021-05-26	New York City	CUNY Guttman Community College	3
190585	New York City	New York	2021-05-26	New York City	CUNY Hostos Community College	44
190594	New York City	New York	2021-05-26	New York City	CUNY Hunter College	102
190600	New York City	New York	2021-05-26	New York City	CUNY John Jay College of Criminal Justice	16
190619	New York City	New York	2021-05-26	New York City	CUNY Kingsborough Community College	24
190628	New York City	New York	2021-05-26	New York City	CUNY LaGuardia Community College	77
190637	New York City	New York	2021-05-26	New York City	CUNY Lehman College	35
190646	New York City	New York	2021-05-26	New York City	CUNY Medgar Evers College	8
190655	New York City	New York	2021-05-26	New York City	CUNY New York City College of Technology	37
190664	New York City	New York	2021-05-26	New York City	CUNY Queens College	62
190673	New York City	New York	2021-05-26	New York City	CUNY Queensborough Community College	19
190682	New York City	New York	2021-05-26	New York City	CUNY School of Law	2
190691	New York City	New York	2021-05-26	New York City	CUNY York College	62
189705	Erie	New York	2021-05-26	Buffalo	Canisius College	364
189839	Cayuga	New York	2021-05-26	Auburn	Cayuga County Community College	57
189848	Madison	New York	2021-05-26	Cazenovia	Cazenovia College	39
190044	St. Lawrence	New York	2021-05-26	Potsdam	Clarkson University	350
19004401	Schenectady	New York	2021-05-26	Schenectady	Clarkson University Capital Region Campus	1
190053	Clinton	New York	2021-05-26	Plattsburgh	Clinton Community College	3
190099	Madison	New York	2021-05-26	Hamilton	Colgate University	153
193399	New York City	New York	2021-05-26	New York City	College of Mount Saint Vincent	127
190150	New York City	New York	2021-05-26	New York City	Columbia University	1486
190169	Columbia	New York	2021-05-26	Hudson	Columbia-Greene Community College	17
190248	Westchester	New York	2021-05-26	Bronxville	Concordia College New York	86
190415	Tompkins	New York	2021-05-26	Ithaca	Cornell University	1044
190503	Dutchess	New York	2021-05-26	Hyde Park	Culinary Institute of America	107
190716	Erie	New York	2021-05-26	Buffalo	D'Youville College	61
190725	Erie	New York	2021-05-26	Amherst	Daemen College	123
194569	Broome	New York	2021-05-26	Johnson City	Davis College	0
482413	New York City	New York	2021-05-26	New York City	DeVry College of New York	0
190761	Rockland	New York	2021-05-26	Orangeburg	Dominican College	107
190840	Dutchess	New York	2021-05-26	Poughkeepsie	Dutchess Community College	53
488305	Livingston	New York	2021-05-26	Lima	Elim Bible Institute and College	38
190974	Broome	New York	2021-05-26	Vestal	Elmira Business Institute	0
190983	Chemung	New York	2021-05-26	Elmira	Elmira College	180
490346	New York City	New York	2021-05-26	New York City	Elyon College	0
191083	Erie	New York	2021-05-26	Buffalo	Erie Community College	115
196680	Albany	New York	2021-05-26	Albany	Excelsior College	0
196042	Nassau	New York	2021-05-26	Farmingdale	Farmingdale State College	282
191126	New York City	New York	2021-05-26	New York City	Fashion Institute of Technology	130
191199	Ontario	New York	2021-05-26	Canandaigua	Finger Lakes Community College	109
475422	Ontario	New York	2021-05-26	Geneva	Finger Lakes Health College of Nursing & Health Sciences	9
191205	Suffolk	New York	2021-05-26	Dix Hills	Five Towns College	51
191241	New York City	New York	2021-05-26	New York City	Fordham University	1060
191302	Fulton	New York	2021-05-26	Johnstown	Fulton-Montgomery Community College	34
191339	Genesee	New York	2021-05-26	Batavia	Genesee Community College	53
494551	New York City	New York	2021-05-26	New York City	Glasgow Caledonian New York College	1
191515	Oneida	New York	2021-05-26	Clinton	Hamilton College	63
191533	Otsego	New York	2021-05-26	Oneonta	Hartwick College	261
203067	New York City	New York	2021-05-26	New York City	Hebrew Union College-Jewish Institute of Religion	0
191597	New York City	New York	2021-05-26	New York City	Helene Fuld College of Nursing	81
191612	Herkimer	New York	2021-05-26	Herkimer	Herkimer County Community College	30
191621	Erie	New York	2021-05-26	Hamburg	Hilbert College	66
191630	Ontario	New York	2021-05-26	Geneva	Hobart William Smith Colleges	291
191649	Nassau	New York	2021-05-26	Hempstead	Hofstra University	437
191676	Allegany	New York	2021-05-26	Houghton	Houghton College	40
191719	Rensselaer	New York	2021-05-26	Troy	Hudson Valley Community College	106
193405	New York City	New York	2021-05-26	New York City	Icahn School of Medicine at Mount Sinai	27
191931	Westchester	New York	2021-05-26	New Rochelle	Iona College	362
191968	Tompkins	New York	2021-05-26	Ithaca	Ithaca College	193
192004	Chautauqua	New York	2021-05-26	Jamestown	Jamestown Business College	1
191986	Chautauqua	New York	2021-05-26	Jamestown	Jamestown Community College	55
192022	Jefferson	New York	2021-05-26	Watertown	Jefferson Community College	41
192192	Yates	New York	2021-05-26	Keuka Park	Keuka College	160
192323	Onondaga	New York	2021-05-26	Syracuse	Le Moyne College	144
192509	New York City	New York	2021-05-26	New York City	Long Island Business Institute	1
192448	Nassau	New York	2021-05-26	Brookville	Long Island University	320
192703	New York City	New York	2021-05-26	New York City	Manhattan College	416
192749	Westchester	New York	2021-05-26	Purchase	Manhattanville College	91
192785	Albany	New York	2021-05-26	Albany	Maria College of Albany	50
192819	Dutchess	New York	2021-05-26	Poughkeepsie	Marist College	864
192864	New York City	New York	2021-05-26	New York City	Marymount Manhattan College	46
192925	Erie	New York	2021-05-26	Buffalo	Medaille College	97
193016	Westchester	New York	2021-05-26	Dobbs Ferry	Mercy College	168
190114	New York City	New York	2021-05-26	New York City	Metropolitan College of New York	15
193201	Albany	New York	2021-05-26	Albany	Mildred Elley School-Albany Campus	11
461014	New York City	New York	2021-05-26	New York City	Mildred Elley-New York Campus	11
193283	Oneida	New York	2021-05-26	Utica	Mohawk Valley Community College	36
193292	Nassau	New York	2021-05-26	Rockville Centre	Molloy College	188
193308	New York City	New York	2021-05-26	New York City	Monroe College	108
193326	Monroe	New York	2021-05-26	Rochester	Monroe Community College	377
193353	Orange	New York	2021-05-26	Newburgh	Mount Saint Mary College	146
193478	Nassau	New York	2021-05-26	Garden City	Nassau Community College	163
193584	Monroe	New York	2021-05-26	Rochester	Nazareth College	237
440262	New York City	New York	2021-05-26	New York City	New York Automotive and Diesel Institute	1
193751	Seneca	New York	2021-05-26	Seneca Falls	New York Chiropractic College	33
418126	Nassau	New York	2021-05-26	Syosset	New York College of Health Professions	29
194073	New York City	New York	2021-05-26	New York City	New York College of Podiatric Medicine	7
439783	Nassau	New York	2021-05-26	Mineola	New York College of Traditional Chinese Medicine	24
194091	Nassau	New York	2021-05-26	Old Westbury	New York Institute of Technology	127
193821	New York City	New York	2021-05-26	New York City	New York Law School	11
193830	Westchester	New York	2021-05-26	Valhalla	New York Medical College	52
194116	New York City	New York	2021-05-26	New York City	New York School of Interior Design	12
193900	New York City	New York	2021-05-26	New York City	New York University	2389
193946	Niagara	New York	2021-05-26	Sanborn	Niagara County Community College	225
193973	Niagara	New York	2021-05-26	Niagara	Niagara University	290
439817	Monroe	New York	2021-05-26	Rochester	Northeastern Seminary	3
194161	New York City	New York	2021-05-26	New York City	Nyack College	43
194222	Onondaga	New York	2021-05-26	Syracuse	Onondaga Community College	143
194240	Orange	New York	2021-05-26	Middletown	Orange County Community College	53
194310	New York City	New York	2021-05-26	New York City	Pace University	285
414595	New York City	New York	2021-05-26	New York City	Pacific College of Oriental Medicine	15
194392	Franklin	New York	2021-05-26	Paul Smiths	Paul Smiths College	8
194499	New York City	New York	2021-05-26	New York City	Plaza College	5
194578	New York City	New York	2021-05-26	New York City	Pratt Institute	39
194824	Rensselaer	New York	2021-05-26	Troy	Rensselaer Polytechnic Institute	209
194958	Monroe	New York	2021-05-26	Rochester	Roberts Wesleyan College	57
195003	Monroe	New York	2021-05-26	Rochester	Rochester Institute of Technology	457
195049	New York City	New York	2021-05-26	New York City	Rockefeller University	93
195058	Rockland	New York	2021-05-26	Suffern	Rockland Community College	81
195128	Rensselaer	New York	2021-05-26	Troy	Russell Sage College	43
196060	Albany	New York	2021-05-26	Albany	SUNY Albany	843
196006	Allegany	New York	2021-05-26	Alfred	SUNY Alfred State College of Technology	278
196079	Broome	New York	2021-05-26	Vestal	SUNY Binghamton	1567
196121	Monroe	New York	2021-05-26	Brockport	SUNY Brockport	483
189547	Broome	New York	2021-05-26	Binghamton	SUNY Broome Community College	90
196130	Erie	New York	2021-05-26	Buffalo	SUNY Buffalo State	349
196015	St. Lawrence	New York	2021-05-26	Canton	SUNY Canton	114
196033	Schoharie	New York	2021-05-26	Cobleskill	SUNY Cobleskill	156
196200	St. Lawrence	New York	2021-05-26	Potsdam	SUNY College at Potsdam	201
196103	Onondaga	New York	2021-05-26	Syracuse	SUNY College of Environmental Science and Forestry	76
196228	New York City	New York	2021-05-26	New York City	SUNY College of Optometry	63
190442	Steuben	New York	2021-05-26	Corning	SUNY Corning Community College	58
196149	Cortland	New York	2021-05-26	Cortland	SUNY Cortland	1260
196024	Delaware	New York	2021-05-26	Delhi	SUNY Delhi	126
196255	New York City	New York	2021-05-26	New York City	SUNY Downstate Health Sciences University	223
196264	Saratoga	New York	2021-05-26	Saratoga Springs	SUNY Empire State College	28
196167	Livingston	New York	2021-05-26	Geneseo	SUNY Geneseo	619
196291	New York City	New York	2021-05-26	New York City	SUNY Maritime College	224
196051	Madison	New York	2021-05-26	Morrisville	SUNY Morrisville	124
196176	Ulster	New York	2021-05-26	New Paltz	SUNY New Paltz	440
196237	Nassau	New York	2021-05-26	Old Westbury	SUNY Old Westbury	90
196185	Otsego	New York	2021-05-26	Oneonta	SUNY Oneonta	998
196194	Oswego	New York	2021-05-26	Oswego	SUNY Oswego	629
196246	Clinton	New York	2021-05-26	Plattsburgh	SUNY Plattsburgh	491
196112	Oneida	New York	2021-05-26	Utica	SUNY Polytechnic Institute	50
196219	Westchester	New York	2021-05-26	Purchase	SUNY Purchase College	120
196088	Erie	New York	2021-05-26	Buffalo	SUNY University at Buffalo	1043
197294	Westchester	New York	2021-05-26	Valhalla	SUNY Westchester Community College	280
196158	Chautauqua	New York	2021-05-26	Fredonia	SUNY at Fredonia	375
19570201	Oneida	New York	2021-05-26	Utica	Saint Elizabeth College of Nursing	16
195304	Westchester	New York	2021-05-26	Bronxville	Sarah Lawrence College	53
195322	Schenectady	New York	2021-05-26	Schenectady	Schenectady County Community College	36
195474	Albany	New York	2021-05-26	Loudonville	Siena College	523
195526	Saratoga	New York	2021-05-26	Saratoga Springs	Skidmore College	95
481094	New York City	New York	2021-05-26	New York City	Sotheby's Institute of Art	0
195164	Cattaraugus	New York	2021-05-26	St. Bonaventure	St. Bonaventure University	264
195173	New York City	New York	2021-05-26	New York City	St. Francis College	69
195720	Monroe	New York	2021-05-26	Rocheser	St. John Fisher College	221
195809	New York City	New York	2021-05-26	New York City	St. John's University	631
195562	Suffolk	New York	2021-05-26	Patchogue	St. Joseph's College Long Island	77
195544	New York City	New York	2021-05-26	New York City	St. Joseph's College New York	30
195191	Onondaga	New York	2021-05-26	Syracuse	St. Joseph's College of Nursing	19
195216	St. Lawrence	New York	2021-05-26	Canton	St. Lawrence University	123
195243	Rockland	New York	2021-05-26	Sparkill	St. Thomas Aquinas College	163
196097	Suffolk	New York	2021-05-26	Stony Brook	Stony Brook University	1126
366395	Suffolk	New York	2021-05-26	Selden	Suffolk County Community College	334
195988	Sullivan	New York	2021-05-26	Loch Sheldrake	Sullivan County Community College	12
196389	New York City	New York	2021-05-26	New York City	Swedish Institute a College of Health Sciences	8
196413	Onondaga	New York	2021-05-26	Syracuse	Syracuse University	1928
195234	Albany	New York	2021-05-26	Albany	The College of Saint Rose	184
197285	Westchester	New York	2021-05-26	White Plains	The College of Westchester	11
190576	New York City	New York	2021-05-26	New York City	The Graduate Center, CUNY	62
454184	New York City	New York	2021-05-26	New York City	The King's College	21
193654	New York City	New York	2021-05-26	New York City	The New School	142
196565	Tompkins	New York	2021-05-26	Dryden	Tompkins Cortland Community College	68
196592	New York City	New York	2021-05-26	New York City	Touro College	62
196653	Erie	New York	2021-05-26	Buffalo	Trocaire College	87
196699	Ulster	New York	2021-05-26	Stone Ridge	Ulster County Community College	18
196866	Schenectady	New York	2021-05-26	Schenectady	Union College	303
197027	Nassau	New York	2021-05-26	Kings Point	United States Merchant Marine Academy	5
197036	Orange	New York	2021-05-26	West Point	United States Military Academy West Point	328
195030	Monroe	New York	2021-05-26	Rochester	University of Rochester	408
196307	Onondaga	New York	2021-05-26	Syracuse	Upstate Medical University	566
197045	Oneida	New York	2021-05-26	Utica	Utica College	235
197133	Dutchess	New York	2021-05-26	Poughkeepsie	Vassar College	195
188340	New York City	New York	2021-05-26	New York City	Vaughn College of Aeronautics and Technology	197
197142	Erie	New York	2021-05-26	Buffalo	Villa Maria College	50
197197	New York City	New York	2021-05-26	New York City	Wagner College	139
197221	Nassau	New York	2021-05-26	Glen Cove	Webb Institute	3
190424	New York City	New York	2021-05-26	New York City	Weill Cornell Medical College	64
197230	Cayuga	New York	2021-05-26	Aurora	Wells College	19
197531	Warren	New York	2021-05-26	Pottersville	Word of Life Bible Institute	13
197708	New York City	New York	2021-05-26	New York City	Yeshiva University	112
197869	Watauga	North Carolina	2021-05-26	Boone	Appalachian State University	1954
197911	Wilson	North Carolina	2021-05-26	Wilson	Barton College	198
197984	Gaston	North Carolina	2021-05-26	Belmont	Belmont Abbey College	66
198066	Transylvania	North Carolina	2021-05-26	Brevard	Brevard College	126
198136	Harnett	North Carolina	2021-05-26	Bules Creek	Campbell University	397
433174	Mecklenburg	North Carolina	2021-05-26	Charlotte	Carolinas College of Health Sciences	25
198215	Rowan	North Carolina	2021-05-26	Salisbury	Catawba College	184
198303	Hertford	North Carolina	2021-05-26	Murfreesboro	Chowan University	46
198385	Mecklenburg	North Carolina	2021-05-26	Davidson	Davidson College	217
198419	Durham	North Carolina	2021-05-26	Durham	Duke University	1202
198455	Durham	North Carolina	2021-05-26	Durham	Durham Technical Community College	31
198464	Pitt	North Carolina	2021-05-26	Greenville	East Carolina University	2397
198507	Pasquotank	North Carolina	2021-05-26	Elizabeth City	Elizabeth City State University	138
198516	Alamance	North Carolina	2021-05-26	Elon	Elon University	1470
198543	Cumberland	North Carolina	2021-05-26	Fayetteville	Fayetteville State University	399
198561	Cleveland	North Carolina	2021-05-26	Boiling Springs	Gardner-Webb University	370
198598	Guilford	North Carolina	2021-05-26	Greensboro	Greensboro College	96
198613	Guilford	North Carolina	2021-05-26	Greensboro	Guilford College	159
198695	Guilford	North Carolina	2021-05-26	High Point	High Point University	153
445708	Mecklenburg	North Carolina	2021-05-26	Charlotte	Johnson & Wales University-Charlotte	38
198756	Mecklenburg	North Carolina	2021-05-26	Charlotte	Johnson C Smith University	11
198808	Avery	North Carolina	2021-05-26	Banner Elk	Lees-McRae College	84
198835	Catawba	North Carolina	2021-05-26	Hickory	Lenoir-Rhyne University	82
198862	Rowan	North Carolina	2021-05-26	Salisbury	Livingstone College	1
198899	Madison	North Carolina	2021-05-26	Mars Hill	Mars Hill University	123
198950	Wake	North Carolina	2021-05-26	Raleigh	Meredith College	92
198969	Cumberland	North Carolina	2021-05-26	Fayetteville	Methodist University	37
199032	Buncombe	North Carolina	2021-05-26	Montreat	Montreat College	88
199102	Guilford	North Carolina	2021-05-26	Greensboro	North Carolina A&T State University	1317
199157	Durham	North Carolina	2021-05-26	Durham	North Carolina Central University	347
199193	Wake	North Carolina	2021-05-26	Raleigh	North Carolina State University	3552
199209	Nash	North Carolina	2021-05-26	Rocky Mount	North Carolina Wesleyan College	172
199306	Stanly	North Carolina	2021-05-26	Misenheimer	Pfeiffer University	95
199412	Mecklenburg	North Carolina	2021-05-26	Charlotte	Queens University of Charlotte	164
199582	Wake	North Carolina	2021-05-26	Raleigh	Saint Augustine's University	43
199607	Forsyth	North Carolina	2021-05-26	Winston-Salem	Salem College	0
199643	Wake	North Carolina	2021-05-26	Raleigh	Shaw University	49
199069	Wayne	North Carolina	2021-05-26	Mount Olive	University of Mount Olive	162
199111	Buncombe	North Carolina	2021-05-26	Asheville	University of North Carolina Asheville	101
199184	Forsyth	North Carolina	2021-05-26	Winston Salem	University of North Carolina School of the Arts	109
199218	New Hanover	North Carolina	2021-05-26	Wilmington	University of North Carolina Wilmington	1430
199120	Orange	North Carolina	2021-05-26	Chapel Hill	University of North Carolina at Chapel Hill	2478
199139	Mecklenburg	North Carolina	2021-05-26	Charlotte	University of North Carolina at Charlotte	1726
199148	Guilford	North Carolina	2021-05-26	Greensboro	University of North Carolina at Greensboro	629
199281	Robeson	North Carolina	2021-05-26	Pembroke	University of North Carolina at Pembroke	564
199847	Forsyth	North Carolina	2021-05-26	Winston-Salem	Wake Forest University	1645
199856	Wake	North Carolina	2021-05-26	Raleigh	Wake Technical Community College	150
199865	Buncombe	North Carolina	2021-05-26	Swannanoa	Warren Wilson College	10
200004	Jackson	North Carolina	2021-05-26	Cullowhee	Western Carolina University	756
199272	Wake	North Carolina	2021-05-26	Raleigh	William Peace University	100
199962	Union	North Carolina	2021-05-26	Wingate	Wingate University	339
199999	Forsyth	North Carolina	2021-05-26	Winston-Salem	Winston-Salem State University	299
200022	Burleigh	North Dakota	2021-05-26	Bismarck	Bismarck State College	291
200314	Bottineau	North Dakota	2021-05-26	Bottineau	Dakota College at Bottineau	100
200059	Stark	North Dakota	2021-05-26	Dickinson	Dickinson State University	182
200192	Ramsey	North Dakota	2021-05-26	Devils Lake	Lake Region State College	93
200226	Traill	North Dakota	2021-05-26	Mayville	Mayville State University	144
200253	Ward	North Dakota	2021-05-26	Minot	Minot State University	623
200305	Richland	North Dakota	2021-05-26	Wahpeton	North Dakota State College of Science	284
200332	Cass	North Dakota	2021-05-26	Fargo	North Dakota State University	1019
200086	Mountrail	North Dakota	2021-05-26	New Town	Nueta Hidatsa Sahnish College	2
200466	Sioux	North Dakota	2021-05-26	Fort Yates	Sitting Bull College	12
200217	Burleigh	North Dakota	2021-05-26	Bismarck	University of Mary	0
200280	Grand Forks	North Dakota	2021-05-26	Grand Forks	University of North Dakota	2219
200572	Barnes	North Dakota	2021-05-26	Valley City	Valley City State University	168
200341	Williams	North Dakota	2021-05-26	Williston	Williston State College	143
240790	n/a	Northern Mariana Islands	2021-05-26	Saipan	Northern Marianas College	0
200697	Montgomery	Ohio	2021-05-26	Dayton	Air Force Institute of Technology-Graduate School of Engineering & Management	0
201104	Ashland	Ohio	2021-05-26	Ashland	Ashland University	354
201195	Cuyahoga	Ohio	2021-05-26	Berea	Baldwin Wallace University	362
201371	Allen	Ohio	2021-05-26	Bluffton	Bluffton University	4
201441	Wood	Ohio	2021-05-26	Bowling Green	Bowling Green State University	1477
201432	Erie	Ohio	2021-05-26	Huron	Bowling Green State University Firelands	17
201548	Franklin	Ohio	2021-05-26	Columbus	Capital University	82
201645	Cuyahoga	Ohio	2021-05-26	Cleveland	Case Western Reserve University	484
201654	Greene	Ohio	2021-05-26	Cedarville	Cedarville University	29
201690	Greene	Ohio	2021-05-26	Wilberforce	Central State University	79
201973	Clark	Ohio	2021-05-26	Springfield	Clark State Community College	43
202134	Cuyahoga	Ohio	2021-05-26	Cleveland	Cleveland State University	240
202170	Franklin	Ohio	2021-05-26	Columbus	Columbus College of Art and Design	9
202356	Cuyahoga	Ohio	2021-05-26	Cleveland	Cuyahoga Community College District	144
202514	Defiance	Ohio	2021-05-26	Defiance	Defiance College	69
202523	Licking	Ohio	2021-05-26	Granville	Denison University	121
205957	Jefferson	Ohio	2021-05-26	Steubenville	Franciscan University of Steubenville	411
203085	Seneca	Ohio	2021-05-26	Tiffin	Heidelberg University	183
203128	Portage	Ohio	2021-05-26	Hiram	Hiram College	57
203368	Cuyahoga	Ohio	2021-05-26	University Heights	John Carroll University	386
203517	Portage	Ohio	2021-05-26	Kent	Kent State University	1213
203526	Geauga	Ohio	2021-05-26	Burton	Kent State University Geauga Campus	4
203447	Ashtabula	Ohio	2021-05-26	Ashtabula	Kent State University at Ashtabula	15
203456	Columbiana	Ohio	2021-05-26	East Liverpool	Kent State University at East Liverpool	3
203492	Columbiana	Ohio	2021-05-26	Salem	Kent State University at Salem	11
203465	Stark	Ohio	2021-05-26	North Canton	Kent State University at Stark	12
203474	Trumbull	Ohio	2021-05-26	Warren	Kent State University at Trumbull	9
203483	Tuscarawas	Ohio	2021-05-26	New Philadelphia	Kent State University at Tuscarawas	3
203535	Knox	Ohio	2021-05-26	Gambier	Kenyon College	97
203580	Lake	Ohio	2021-05-26	Painesville	Lake Erie College	243
203748	Lorain	Ohio	2021-05-26	Elyria	Lorain County Community College	96
203757	Lucas	Ohio	2021-05-26	Sylvania	Lourdes University	163
203775	Stark	Ohio	2021-05-26	Canton	Malone University	136
203845	Washington	Ohio	2021-05-26	Marietta	Marietta College	237
204024	Butler	Ohio	2021-05-26	Oxford	Miami University (Ohio)	3429
204200	Hamilton	Ohio	2021-05-26	Cincinnati	Mount Saint Joseph University	206
204264	Muskingum	Ohio	2021-05-26	New Concord	Muskingum University	171
204422	Richland	Ohio	2021-05-26	Mansfield	North Central State College	64
204477	Portage	Ohio	2021-05-26	Rootstown	Northeast Ohio Medical University	105
204468	Cuyahoga	Ohio	2021-05-26	Cleveland	Notre Dame College	78
204501	Lorain	Ohio	2021-05-26	Oberlin	Oberlin College	45
204617	Franklin	Ohio	2021-05-26	Columbus	Ohio Dominican University	176
204635	Hardin	Ohio	2021-05-26	Ada	Ohio Northern University	220
204796	Franklin	Ohio	2021-05-26	Columbus	Ohio State University	8008
204857	Athens	Ohio	2021-05-26	Athens	Ohio University	2071
204820	Ross	Ohio	2021-05-26	Chillicothe	Ohio University-Chillicothe	33
204802	Belmont	Ohio	2021-05-26	St. Clairesville	Ohio University-Eastern	7
204848	Fairfield	Ohio	2021-05-26	Lancaster	Ohio University-Lancaster	16
204839	Lawrence	Ohio	2021-05-26	Irontown	Ohio University-Southern	29
204866	Muskingum	Ohio	2021-05-26	Zanesville	Ohio University-Zanesville	28
204909	Delaware	Ohio	2021-05-26	Delaware	Ohio Wesleyan University	157
204936	Franklin	Ohio	2021-05-26	Westerville	Otterbein University	286
205443	Scioto	Ohio	2021-05-26	Portsmouth	Shawnee State University	314
205470	Montgomery	Ohio	2021-05-26	Dayton	Sinclair Community College	75
206011	Sandusky	Ohio	2021-05-26	Fremont	Terra State Community College	62
206589	Wayne	Ohio	2021-05-26	Wooster	The College of Wooster	80
202763	Hancock	Ohio	2021-05-26	Findlay	The University of Findlay	508
206048	Seneca	Ohio	2021-05-26	Tiffin	Tiffin University	91
200800	Summit	Ohio	2021-05-26	Akron	University of Akron	693
201885	Hamilton	Ohio	2021-05-26	Cincinnati	University of Cincinnati	3288
202480	Montgomery	Ohio	2021-05-26	Dayton	University of Dayton	1870
204185	Stark	Ohio	2021-05-26	Alliance	University of Mount Union	370
206084	Lucas	Ohio	2021-05-26	Toledo	University of Toledo	1077
206349	Cuyahoga	Ohio	2021-05-26	Pepper Pike	Ursuline College	111
206437	Stark	Ohio	2021-05-26	North Canton	Walsh University	161
206507	Clinton	Ohio	2021-05-26	Wilmington	Wilmington College	103
206525	Clark	Ohio	2021-05-26	Springfield	Wittenberg University	287
206613	Mercer	Ohio	2021-05-26	Celina	Wright State University-Lake Campus	16
206622	Hamilton	Ohio	2021-05-26	Cincinnati	Xavier University	46
206695	Mahoning	Ohio	2021-05-26	Youngstown	Youngstown State University	557
206914	Comanche	Oklahoma	2021-05-26	Lawton	Cameron University	256
207041	Pontotoc	Oklahoma	2021-05-26	Ada	East Central University	10
207209	Logan	Oklahoma	2021-05-26	Langston	Langston University	88
207263	Cherokee	Oklahoma	2021-05-26	Tahlequah	Northeastern State University	144
207281	Kay	Oklahoma	2021-05-26	Tonkawa	Northern Oklahoma College	198
207306	Woods	Oklahoma	2021-05-26	Alva	Northwestern Oklahoma State University	154
207403	Pottawatomie	Oklahoma	2021-05-26	Shawnee	Oklahoma Baptist University	0
207324	Oklahoma	Oklahoma	2021-05-26	Edmond	Oklahoma Christian University	257
207458	Oklahoma	Oklahoma	2021-05-26	Oklahoma City	Oklahoma City University	36
207351	Texas	Oklahoma	2021-05-26	Goodwell	Oklahoma Panhandle State University	90
207388	Payne	Oklahoma	2021-05-26	Stillwater	Oklahoma State University	2760
207315	Tulsa	Oklahoma	2021-05-26	Tulsa	Oklahoma State University Center for Health Sciences	127
207564	Okmulgee	Oklahoma	2021-05-26	Okmulgee	Oklahoma State University Institute of Technology	108
207397	Oklahoma	Oklahoma	2021-05-26	Oklahoma City	Oklahoma State University-Oklahoma City	6
207582	Tulsa	Oklahoma	2021-05-26	Tulsa	Oral Roberts University	1
207661	Rogers	Oklahoma	2021-05-26	Claremore	Rogers State University	68
207670	Oklahoma	Oklahoma	2021-05-26	Midwest City	Rose State College	165
207847	Bryan	Oklahoma	2021-05-26	Durant	Southeastern Oklahoma State University	367
206862	Oklahoma	Oklahoma	2021-05-26	Bethany	Southern Nazarene University	0
207865	Custer	Oklahoma	2021-05-26	Weatherford	Southwestern Oklahoma State University	442
206941	Oklahoma	Oklahoma	2021-05-26	Edmond	University of Central Oklahoma	893
207500	Cleveland	Oklahoma	2021-05-26	Norman	University of Oklahoma	1088
207722	Grady	Oklahoma	2021-05-26	Chickasha	University of Science and Arts of Oklahoma	37
207971	Tulsa	Oklahoma	2021-05-26	Tulsa	University of Tulsa	358
208646	Union	Oregon	2021-05-26	La Grande	Eastern Oregon University	154
208822	Yamhill	Oregon	2021-05-26	Newberg	George Fox University	108
209038	Lane	Oregon	2021-05-26	Eugene	Lane Community College	35
209056	Multnomah	Oregon	2021-05-26	Portland	Lewis & Clark College	29
209065	Yamhill	Oregon	2021-05-26	McMinnville	Linfield University	75
437316	Multnomah	Oregon	2021-05-26	Portland	Linfield University-School of Nursing	6
209490	Multnomah	Oregon	2021-05-26	Portland	Oregon Health & Science University	483
209506	Klamath	Oregon	2021-05-26	Klamath Falls	Oregon Institute of Technology	112
209542	Benton	Oregon	2021-05-26	Corvallis	Oregon State University	1161
440828	Deschutes	Oregon	2021-05-26	Bend	Oregon State University-Cascades	36
209612	Washington	Oregon	2021-05-26	Forest Grove	Pacific University	63
209807	Multnomah	Oregon	2021-05-26	Portland	Portland State University	45
209922	Multnomah	Oregon	2021-05-26	Portland	Reed College	33
210146	Jackson	Oregon	2021-05-26	Ashland	Southern Oregon University	127
209551	Lane	Oregon	2021-05-26	Eugene	University of Oregon	1883
209825	Multnomah	Oregon	2021-05-26	Portland	University of Portland	53
210429	Polk	Oregon	2021-05-26	Mounmouth	Western Oregon University	75
210401	Marion	Oregon	2021-05-26	Salem	Willamette University	27
210571	Berks	Pennsylvania	2021-05-26	Reading	Albright College	142
210669	Crawford	Pennsylvania	2021-05-26	Meadville	Allegheny College	105
210775	Berks	Pennsylvania	2021-05-26	Reading	Alvernia University	22
211088	Montgomery	Pennsylvania	2021-05-26	Glenslide	Arcadia University	86
211158	Columbia	Pennsylvania	2021-05-26	Bloomsburg	Bloomsburg University of Pennsylvania	587
210492	Montgomery	Pennsylvania	2021-05-26	Bryn Athyn	Bryn Athyn College	18
211273	Montgomery	Pennsylvania	2021-05-26	Bryn Mawr	Bryn Mawr College	48
211291	Union	Pennsylvania	2021-05-26	Lewisburg	Bucknell University	647
211352	Delaware	Pennsylvania	2021-05-26	Radnor	Cabrini University	114
215114	Bucks	Pennsylvania	2021-05-26	Langhorne	Cairn University	0
211361	Washington	Pennsylvania	2021-05-26	California	California University of Pennsylvania	126
211440	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	Carnegie Mellon University	628
211468	Lehigh	Pennsylvania	2021-05-26	Allentown	Cedar Crest College	42
211556	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	Chatham University	177
211583	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Chestnut Hill College	43
211608	Delaware	Pennsylvania	2021-05-26	Cheyney	Cheyney University of Pennsylvania	17
211644	Clarion	Pennsylvania	2021-05-26	Clarion	Clarion University of Pennsylvania	184
211024	Lackawanna	Pennsylvania	2021-05-26	South Abington Township	Clarks Summit University	54
210605	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	Community College of Allegheny County	251
210739	Lehigh	Pennsylvania	2021-05-26	Center Valley	DeSales University	191
211981	Bucks	Pennsylvania	2021-05-26	Doylestown	Delaware Valley University	152
212009	Cumberland	Pennsylvania	2021-05-26	Carlisle	Dickinson College	59
212054	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Drexel University	755
212106	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	Duquesne University	611
212115	Monroe	Pennsylvania	2021-05-26	East Stroudsburg	East Stroudsburg University	105
212133	Delaware	Pennsylvania	2021-05-26	St. Davids	Eastern University	89
212160	Erie	Pennsylvania	2021-05-26	Edinboro	Edinboro University	165
212197	Lancaster	Pennsylvania	2021-05-26	Elizabethtown	Elizabethtown College	96
212577	Lancaster	Pennsylvania	2021-05-26	Lancaster	Franklin and Marshall College	223
212601	Erie	Pennsylvania	2021-05-26	Erie	Gannon University	330
212656	Beaver	Pennsylvania	2021-05-26	Beaver Falls	Geneva College	35
212674	Adams	Pennsylvania	2021-05-26	Gettysburg	Gettysburg College	206
212805	Mercer	Pennsylvania	2021-05-26	Grove City	Grove City College	286
212832	Montgomery	Pennsylvania	2021-05-26	Gwynedd Valley	Gwynedd Mercy University	49
212911	Delaware	Pennsylvania	2021-05-26	Haverford	Haverford College	28
212984	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Holy Family University	4
213011	Chester	Pennsylvania	2021-05-26	Immaculata	Immaculata University	24
213020	Indiana	Pennsylvania	2021-05-26	Indiana	Indiana University of Pennsylvania	609
213251	Huntingdon	Pennsylvania	2021-05-26	Huntingdon	Juniata College	109
213303	Lackawanna	Pennsylvania	2021-05-26	La Plume	Keystone College	18
213321	Luzerne	Pennsylvania	2021-05-26	Wilkes-Barre	King's College	249
213349	Berks	Pennsylvania	2021-05-26	Kutztown	Kutztown University	535
213358	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	La Roche University	38
213367	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	La Salle University	188
213385	Northampton	Pennsylvania	2021-05-26	Easton	Lafayette College	489
213400	Lancaster	Pennsylvania	2021-05-26	Lancaster	Lancaster Bible College	8
213507	Lebanon	Pennsylvania	2021-05-26	Annville	Lebanon Valley College	128
213543	Northampton	Pennsylvania	2021-05-26	Bethlehem	Lehigh University	1620
213598	Chester	Pennsylvania	2021-05-26	Lincoln University	Lincoln University	1
213613	Clinton	Pennsylvania	2021-05-26	Lock Haven	Lock Haven University	153
213668	Lycoming	Pennsylvania	2021-05-26	Williamsport	Lycoming College	171
213783	Tioga	Pennsylvania	2021-05-26	Mansfield	Mansfield University of Pennsylvania	90
213826	Lackawanna	Pennsylvania	2021-05-26	Scranton	Marywood University	208
213987	Erie	Pennsylvania	2021-05-26	Erie	Mercyhurst University	239
213996	Cumberland	Pennsylvania	2021-05-26	Mechanicsburg	Messiah University	188
214041	Lancaster	Pennsylvania	2021-05-26	Millersville	Millersville University of Pennsylvania	337
214069	Luzerne	Pennsylvania	2021-05-26	Dallas	Misericordia University	127
214157	Northampton	Pennsylvania	2021-05-26	Bethlehem	Moravian College	302
214166	Cambria	Pennsylvania	2021-05-26	Cresson	Mount Aloysius College	103
214175	Lehigh	Pennsylvania	2021-05-26	Allentown	Muhlenberg College	135
214272	Delaware	Pennsylvania	2021-05-26	Aston	Neumann University	122
214777	Centre	Pennsylvania	2021-05-26	State College	Penn State University	7691
214801	Montgomery	Pennsylvania	2021-05-26	Abington	Penn State University Abington	57
214689	Blair	Pennsylvania	2021-05-26	Altoona	Penn State University Altoona	339
214698	Beaver	Pennsylvania	2021-05-26	Monaca	Penn State University Beaver	7
214591	Erie	Pennsylvania	2021-05-26	Erie	Penn State University Behrend	191
214704	Berks	Pennsylvania	2021-05-26	Reading	Penn State University Berks	27
214731	Delaware	Pennsylvania	2021-05-26	Media	Penn State University Brandywine	17
214616	Dauphin	Pennsylvania	2021-05-26	Hershey	Penn State University College of Medicine	46
212018	Cumberland	Pennsylvania	2021-05-26	Carlisle	Penn State University Dickinson Law	3
214740	Clearfield	Pennsylvania	2021-05-26	Dubois	Penn State University DuBois	11
214759	Fayette	Pennsylvania	2021-05-26	Lemont Furnace	Penn State University Fayette	13
214607	Chester	Pennsylvania	2021-05-26	Malvern	Penn State University Great Valley	1
214786	Allegheny	Pennsylvania	2021-05-26	McKeesport	Penn State University Greater Allegheny	8
214713	Dauphin	Pennsylvania	2021-05-26	Middletown	Penn State University Harrisburg	153
214768	Luzerne	Pennsylvania	2021-05-26	Hazleton	Penn State University Hazleton	25
214670	Lehigh	Pennsylvania	2021-05-26	Center Valley	Penn State University Lehigh Valley	13
214795	Franklin	Pennsylvania	2021-05-26	Mont Alto	Penn State University Mont Alto	21
214625	Westmoreland	Pennsylvania	2021-05-26	New Kensington	Penn State University New Kensington	17
214810	Schuylkill	Pennsylvania	2021-05-26	Schuylkill Haven	Penn State University Schuylkill	27
214652	Lackawanna	Pennsylvania	2021-05-26	Dunmore	Penn State University Scranton	25
214634	Mercer	Pennsylvania	2021-05-26	Sharon	Penn State University Shenango	1
214643	Luzerne	Pennsylvania	2021-05-26	Lehman	Penn State University Wilkes-Barre	4
214829	York	Pennsylvania	2021-05-26	York	Penn State University York	6
366252	Lycoming	Pennsylvania	2021-05-26	Williamsport	Pennsylvania College of Technology	387
215442	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	Point Park University	169
215655	Allegheny	Pennsylvania	2021-05-26	Moon Township	Robert Morris University	470
215691	Montgomery	Pennsylvania	2021-05-26	Rosemont	Rosemont College	43
215743	Cambria	Pennsylvania	2021-05-26	Loretto	Saint Francis University	173
215770	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Saint Joseph's University	973
215798	Westmoreland	Pennsylvania	2021-05-26	Latrobe	Saint Vincent College	189
215947	Westmoreland	Pennsylvania	2021-05-26	Greensburg	Seton Hill University	298
216010	Franklin	Pennsylvania	2021-05-26	Shippensburg	Shippensburg University of Pennsylvania	452
216038	Butler	Pennsylvania	2021-05-26	Slippery Rock	Slippery Rock University of Pennsylvania	415
216278	Snyder	Pennsylvania	2021-05-26	Selinsgrove	Susquehanna University	243
216287	Delaware	Pennsylvania	2021-05-26	Swarthmore	Swarthmore College	100
216339	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Temple University	2118
216357	Mercer	Pennsylvania	2021-05-26	Greenville	Thiel College	115
216366	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	Thomas Jefferson University	300
215062	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	University of Pennsylvania	2746
215293	Allegheny	Pennsylvania	2021-05-26	Pittsburgh	University of Pittsburgh	1518
215284	Cambria	Pennsylvania	2021-05-26	Johnstown	University of Pittsburgh Johnstown	108
215266	McKean	Pennsylvania	2021-05-26	Bradford	University of Pittsburgh at Bradford	58
215275	Westmoreland	Pennsylvania	2021-05-26	Greensburg	University of Pittsburgh at Greensburg	27
215929	Lackawanna	Pennsylvania	2021-05-26	Scranton	University of Scranton	881
216542	Chester	Pennsylvania	2021-05-26	Phoenixville	University of Valley Forge	2
215132	Philadelphia	Pennsylvania	2021-05-26	Philadelphia	University of the Sciences	24
216524	Montgomery	Pennsylvania	2021-05-26	Collegeville	Ursinus College	187
216597	Delaware	Pennsylvania	2021-05-26	Villanova	Villanova University	1684
216667	Washington	Pennsylvania	2021-05-26	Washington	Washington & Jefferson College	117
216694	Greene	Pennsylvania	2021-05-26	Waynesburg	Waynesburg University	146
216764	Chester	Pennsylvania	2021-05-26	West Chester	West Chester University	280
216807	Lawrence	Pennsylvania	2021-05-26	New Wilmington	Westminster College	102
216852	Delaware	Pennsylvania	2021-05-26	Chester	Widener University	206
216931	Luzerne	Pennsylvania	2021-05-26	Wilkes-Barre	Wilkes University	227
217013	Franklin	Pennsylvania	2021-05-26	Chambersburg	Wilson College	57
217059	York	Pennsylvania	2021-05-26	York	York College of Pennsylvania	348
241720	San Juan	Puerto Rico	2021-05-26	San Juan	Colegio Universitario de San Juan	0
241766	San Juan	Puerto Rico	2021-05-26	San Juan	Conservatory of Music of Puerto Rico	0
241951	San Juan	Puerto Rico	2021-05-26	San Juan	Escuela de Artes Plasticas y Diseno de Puerto Rico	0
243106	Aguadilla	Puerto Rico	2021-05-26	Aguadilla	University of Puerto Rico at Aguadilla	0
243115	Arecibo	Puerto Rico	2021-05-26	Arecibo	University of Puerto Rico at Arecibo	0
243133	Bayam_n	Puerto Rico	2021-05-26	Bayamon	University of Puerto Rico at Bayamon	0
243142	Carolina	Puerto Rico	2021-05-26	Carolina	University of Puerto Rico at Carolina	0
243151	Cayey	Puerto Rico	2021-05-26	Cayey	University of Puerto Rico at Cayey	3
243179	Humacao	Puerto Rico	2021-05-26	Humacao	University of Puerto Rico at Humacao	42
243212	Ponce	Puerto Rico	2021-05-26	Ponce	University of Puerto Rico at Ponce	0
243221	San Juan	Puerto Rico	2021-05-26	Rio Piedras	University of Puerto Rico at Río Piedras	8
243188	Utuado	Puerto Rico	2021-05-26	Utuado	University of Puerto Rico at Utuado	0
243203	San Juan	Puerto Rico	2021-05-26	San Juan	University of Puerto Rico, Medical Sciences	65
217156	Providence	Rhode Island	2021-05-26	Providence	Brown University	509
217165	Providence	Rhode Island	2021-05-26	Smithfield	Bryant University	74
217235	Providence	Rhode Island	2021-05-26	Providence	Johnson & Wales University	161
217402	Providence	Rhode Island	2021-05-26	Providence	Providence College	1093
217420	Providence	Rhode Island	2021-05-26	Providence	Rhode Island College	255
217493	Providence	Rhode Island	2021-05-26	Providence	Rhode Island School of Design	72
217518	Bristol	Rhode Island	2021-05-26	Bristol	Roger Williams University	463
217536	Newport	Rhode Island	2021-05-26	Newport	Salve Regina University	416
217484	Washington	Rhode Island	2021-05-26	Kingston	University of Rhode Island	2146
217633	Anderson	South Carolina	2021-05-26	Anderson	Anderson University	300
217721	Richland	South Carolina	2021-05-26	Columbia	Benedict College	6
217749	Greenville	South Carolina	2021-05-26	Greenville	Bob Jones University	34
217688	Charleston	South Carolina	2021-05-26	North Charleston	Charleston Southern University	24
217873	Orangeburg	South Carolina	2021-05-26	Orangeburg	Claflin University	20
217882	Pickens	South Carolina	2021-05-26	Clemson	Clemson University	7597
218724	Horry	South Carolina	2021-05-26	Conway	Coastal Carolina University	611
217907	Darlington	South Carolina	2021-05-26	Hartsville	Coker University	119
217819	Charleston	South Carolina	2021-05-26	Charleston	College of Charleston	1228
217961	Spartanburg	South Carolina	2021-05-26	Spartanburg	Converse College	34
217998	Abbeville	South Carolina	2021-05-26	Due West	Erskine College	0
218061	Florence	South Carolina	2021-05-26	Florence	Francis Marion University	218
218070	Greenville	South Carolina	2021-05-26	Greenville	Furman University	352
218113	Greenville	South Carolina	2021-05-26	Greenville	Greenville Technical College	1251
218229	Greenwood	South Carolina	2021-05-26	Greenwood	Lander University	303
218238	Cherokee	South Carolina	2021-05-26	Gaffney	Limestone College	16
218335	Charleston	South Carolina	2021-05-26	Charleston	Medical University of South Carolina	451
218414	Newberry	South Carolina	2021-05-26	Newberry	Newberry College	23
218441	Greenville	South Carolina	2021-05-26	Tigerville	North Greenville University	428
218539	Laurens	South Carolina	2021-05-26	Clinton	Presbyterian College	267
218733	Orangeburg	South Carolina	2021-05-26	Orangeburg	South Carolina State University	49
217776	Pickens	South Carolina	2021-05-26	Central	Southern Wesleyan University	6
217864	Charleston	South Carolina	2021-05-26	Charleston	The Citadel	477
218885	Anderson	South Carolina	2021-05-26	Pendleton	Tri-County Technical College	569
218663	Richland	South Carolina	2021-05-26	Columbia	University of South Carolina	5228
218645	Aiken	South Carolina	2021-05-26	Aiken	University of South Carolina Aiken	132
218654	Beaufort	South Carolina	2021-05-26	Blufton	University of South Carolina Beaufort	151
218742	Spartanburg	South Carolina	2021-05-26	Spartanburg	University of South Carolina Upstate	354
218964	York	South Carolina	2021-05-26	Rock Hill	Winthrop University	169
218973	Spartanburg	South Carolina	2021-05-26	Spartanburg	Wofford College	482
219000	Minnehaha	South Dakota	2021-05-26	Sioux Falls	Augustana University	375
219046	Lawrence	South Dakota	2021-05-26	Spearfish	Black Hills State University	249
219082	Lake	South Dakota	2021-05-26	Madison	Dakota State University	120
219198	Yankton	South Dakota	2021-05-26	Yankton	Mount Marty College	96
219259	Brown	South Dakota	2021-05-26	Aberdeen	Northern State University	175
219277	Oglala Lakota	South Dakota	2021-05-26	Kyle	Oglala Lakota College	0
219374	Todd	South Dakota	2021-05-26	Mission	Sinte Gleska University	0
219347	Pennington	South Dakota	2021-05-26	Rapid City	South Dakota School of Mines and Technology	306
219356	Brookings	South Dakota	2021-05-26	Brookings	South Dakota State University	1005
219383	Minnehaha	South Dakota	2021-05-26	Sioux Falls	University of Sioux Falls	147
219471	Clay	South Dakota	2021-05-26	Vermillion	University of South Dakota	813
219602	Montgomery	Tennessee	2021-05-26	Clarksville	Austin Peay State University	642
219709	Davidson	Tennessee	2021-05-26	Nashville	Belmont University	837
219718	Carroll	Tennessee	2021-05-26	McKenzie	Bethel University	163
219806	Jefferson	Tennessee	2021-05-26	Jefferson City	Carson-Newman University	369
219824	Hamilton	Tennessee	2021-05-26	Chattanooga	Chattanooga State Community College	174
219833	Shelby	Tennessee	2021-05-26	Memphis	Christian Brothers University	146
219879	Bradley	Tennessee	2021-05-26	Cleveland	Cleveland State Community College	167
219888	Maury	Tennessee	2021-05-26	Columbia	Columbia State Community College	209
219949	Wilson	Tennessee	2021-05-26	Lebanon	Cumberland University	227
220057	Dyer	Tennessee	2021-05-26	Dyersburg	Dyersburg State Community College	86
220075	Washington	Tennessee	2021-05-26	Johnson City	East Tennessee State University	719
220400	Madison	Tennessee	2021-05-26	Jackson	Jackson State Community College	107
220516	Sullivan	Tennessee	2021-05-26	Bristol	King University	212
220598	Madison	Tennessee	2021-05-26	Jackson	Lane College	18
220604	Shelby	Tennessee	2021-05-26	Memphis	LeMoyne-Owen College	0
220613	Bradley	Tennessee	2021-05-26	Cleveland	Lee University	222
220631	Claiborne	Tennessee	2021-05-26	Harrogate	Lincoln Memorial University	263
219976	Davidson	Tennessee	2021-05-26	Nashville	Lipscomb University	217
220710	Blount	Tennessee	2021-05-26	Maryville	Maryville College	26
220978	Rutherford	Tennessee	2021-05-26	Murfreesboro	Middle Tennessee State University	1033
486901	Carter	Tennessee	2021-05-26	Milligan College	Milligan University	130
221096	Moore	Tennessee	2021-05-26	Tullahoma	Motlow State Community College	129
221184	Davidson	Tennessee	2021-05-26	Nashville	Nashville State Community College	170
221908	Sullivan	Tennessee	2021-05-26	Blountville	Northeast State Community College	208
221643	Knox	Tennessee	2021-05-26	Knoxville	Pellissippi State Community College	107
221351	Shelby	Tennessee	2021-05-26	Memphis	Rhodes College	113
221397	Roane	Tennessee	2021-05-26	Harriman	Roane State Community College	219
221661	Hamilton	Tennessee	2021-05-26	Collegedale	Southern Adventist University	261
221485	Shelby	Tennessee	2021-05-26	Memphis	Southwest Tennessee Community College	129
219596	McMinn	Tennessee	2021-05-26	Athens	Tennessee College of Applied Technology-Athens	26
219921	Tipton	Tennessee	2021-05-26	Covington	Tennessee College of Applied Technology-Covington	56
221591	Cumberland	Tennessee	2021-05-26	Crossville	Tennessee College of Applied Technology-Crossville	43
221430	Hardin	Tennessee	2021-05-26	Crump	Tennessee College of Applied Technology-Crump	45
219994	Dickson	Tennessee	2021-05-26	Dickson	Tennessee College of Applied Technology-Dickson	123
220127	Carter	Tennessee	2021-05-26	Elizabethton	Tennessee College of Applied Technology-Elizabethton	45
220251	Roane	Tennessee	2021-05-26	Harriman	Tennessee College of Applied Technology-Harriman	37
220279	Trousdale	Tennessee	2021-05-26	Hartsville	Tennessee College of Applied Technology-Hartsville	20
220321	Lewis	Tennessee	2021-05-26	Hohenwald	Tennessee College of Applied Technology-Hohenwald	12
220394	Campbell	Tennessee	2021-05-26	Jacksboro	Tennessee College of Applied Technology-Jacksboro	45
221616	Madison	Tennessee	2021-05-26	Jackson	Tennessee College of Applied Technology-Jackson	51
221625	Knox	Tennessee	2021-05-26	Knoxville	Tennessee College of Applied Technology-Knoxville	54
220640	Overton	Tennessee	2021-05-26	Livingston	Tennessee College of Applied Technology-Livingston	43
220756	Weakley	Tennessee	2021-05-26	McKenzie	Tennessee College of Applied Technology-McKenzie	18
221607	Warren	Tennessee	2021-05-26	McMinnville	Tennessee College of Applied Technology-McMinnville	31
220853	Shelby	Tennessee	2021-05-26	Memphis	Tennessee College of Applied Technology-Memphis	45
221050	Hamblen	Tennessee	2021-05-26	Morristown	Tennessee College of Applied Technology-Morristown	66
221102	Rutherford	Tennessee	2021-05-26	Murfreesboro	Tennessee College of Applied Technology-Murfreesboro	49
248925	Davidson	Tennessee	2021-05-26	Nashville	Tennessee College of Applied Technology-Nashville	79
221236	Dyer	Tennessee	2021-05-26	Newbern	Tennessee College of Applied Technology-Newbern	48
221582	Scott	Tennessee	2021-05-26	Huntsville	Tennessee College of Applied Technology-Oneida/Huntsville	30
221281	Henry	Tennessee	2021-05-26	Paris	Tennessee College of Applied Technology-Paris	28
221333	Giles	Tennessee	2021-05-26	Pulaski	Tennessee College of Applied Technology-Pulaski	51
221388	Lauderdale	Tennessee	2021-05-26	Ripley	Tennessee College of Applied Technology-Ripley	36
221494	Bedford	Tennessee	2021-05-26	Shelbyville	Tennessee College of Applied Technology-Shelbyville	61
221634	Hardeman	Tennessee	2021-05-26	Whiteville	Tennessee College of Applied Technology-Whiteville	38
221838	Davidson	Tennessee	2021-05-26	Nashville	Tennessee State University	63
221847	Putnam	Tennessee	2021-05-26	Cookeville	Tennessee Technological University	1197
221519	Franklin	Tennessee	2021-05-26	Sewanee	The University of the South	86
221892	Davidson	Tennessee	2021-05-26	Nashville	Trevecca Nazarene University	34
221953	Greene	Tennessee	2021-05-26	Greenville	Tusculum University	5
221971	Madison	Tennessee	2021-05-26	Jackson	Union University	62
220862	Shelby	Tennessee	2021-05-26	Memphis	University of Memphis	664
487010	Shelby	Tennessee	2021-05-26	Memphis	University of Tennessee Health Science Center	467
221740	Hamilton	Tennessee	2021-05-26	Chattanooga	University of Tennessee at Chattanooga	1543
221768	Weakley	Tennessee	2021-05-26	Martin	University of Tennessee at Martin	501
221759	Knox	Tennessee	2021-05-26	Knoxville	University of Tennessee, Knoxville	3177
221999	Davidson	Tennessee	2021-05-26	Nashville	Vanderbilt University	1609
222053	Sumner	Tennessee	2021-05-26	Gallatin	Volunteer State Community College	260
222062	Hamblen	Tennessee	2021-05-26	Morristown	Walters State Community College	214
222178	Taylor	Texas	2021-05-26	Abilene	Abilene Christian University	773
222831	Tom Green	Texas	2021-05-26	San Angelo	Angelo State University	393
222983	Grayson	Texas	2021-05-26	Sherman	Austin College	165
222992	Travis	Texas	2021-05-26	Austin	Austin Community College District	51
223232	McLennan	Texas	2021-05-26	Waco	Baylor University	4065
223427	Washington	Texas	2021-05-26	Brenham	Blinn College	568
223506	Brazoria	Texas	2021-05-26	Richwood	Brazosport College	1
247834	Collin	Texas	2021-05-26	McKinney	Collin College McKinney	638
224004	Travis	Texas	2021-05-26	Austin	Concordia University Texas	83
224226	Dallas	Texas	2021-05-26	Dallas	Dallas Baptist University	131
224527	Harrison	Texas	2021-05-26	Marshall	East Texas Baptist University	1
224961	Galveston	Texas	2021-05-26	Galveston	Galveston College	56
225070	Grayson	Texas	2021-05-26	Dension	Grayson College	39
225247	Taylor	Texas	2021-05-26	Abilene	Hardin-Simmons University	37
225371	Hill	Texas	2021-05-26	Hillsboro	Hill College	51
225399	Harris	Texas	2021-05-26	Houston	Houston Baptist University	2
225548	Brown	Texas	2021-05-26	Brownwood	Howard Payne University	0
226091	Jefferson	Texas	2021-05-26	Beaumont	Lamar University	390
226134	Webb	Texas	2021-05-26	Laredo	Laredo College	0
226231	Gregg	Texas	2021-05-26	Longview	LeTourneau University	138
226383	Lubbock	Texas	2021-05-26	Lubbock	Lubbock Christian University	283
226578	McLennan	Texas	2021-05-26	Waco	McLennan Community College	381
226587	Taylor	Texas	2021-05-26	Abilene	McMurry University	178
226806	Midland	Texas	2021-05-26	Midland	Midland College	88
226833	Wichita	Texas	2021-05-26	Wichita Falls	Midwestern State University	464
227304	Ector	Texas	2021-05-26	Odessa	Odessa College	217
227526	Waller	Texas	2021-05-26	Prairie View	Prairie View A&M University	754
227757	Harris	Texas	2021-05-26	Houston	Rice University	418
227845	Travis	Texas	2021-05-26	Austin	Saint Edward's University	47
227881	Walker	Texas	2021-05-26	Huntsville	Sam Houston State University	1366
228042	Kerr	Texas	2021-05-26	Kerriville	Schreiner University	9
228158	Hockley	Texas	2021-05-26	Levelland	South Plains College	506
409315	Hidalgo	Texas	2021-05-26	McAllen	South Texas College	283
228246	Dallas	Texas	2021-05-26	Dallas	Southern Methodist University	1550
228343	Williamson	Texas	2021-05-26	Georgetown	Southwestern University	55
228149	Bexar	Texas	2021-05-26	San Antonio	St. Mary's University	152
228431	Nacogdoches	Texas	2021-05-26	Nacogdoches	Stephen F. Austin State University	836
228501	Brewster	Texas	2021-05-26	Alpine	Sul Ross State University	360
228529	Erath	Texas	2021-05-26	Stephenville	Tarleton State University	758
228699	Bowie	Texas	2021-05-26	Texarkana	Texarkana College	113
226152	Webb	Texas	2021-05-26	Laredo	Texas A&M International University	165
228723	Brazos	Texas	2021-05-26	College Station	Texas A&M University	5576
483036	Bell	Texas	2021-05-26	Kileen	Texas A&M University-Central Texas	32
224554	Hunt	Texas	2021-05-26	Commerce	Texas A&M University-Commerce	530
224147	Nueces	Texas	2021-05-26	Corpus Christi	Texas A&M University-Corpus Christi	617
228705	Kleberg	Texas	2021-05-26	Kingsville	Texas A&M University-Kingsville	424
459949	Bexar	Texas	2021-05-26	San Antonio	Texas A&M University-San Antonio	123
224545	Bowie	Texas	2021-05-26	Texarkana	Texas A&M University-Texarkana	159
228875	Tarrant	Texas	2021-05-26	Fort Worth	Texas Christian University	2087
228884	Smith	Texas	2021-05-26	Tyler	Texas College	1
228981	Guadalupe	Texas	2021-05-26	Seguin	Texas Lutheran University	106
229063	Harris	Texas	2021-05-26	Houston	Texas Southern University	104
228459	Hays	Texas	2021-05-26	San Marcos	Texas State University	2715
229115	Lubbock	Texas	2021-05-26	Lubbock	Texas Tech University	3443
229337	Lubbock	Texas	2021-05-26	Lubbock	Texas Tech University Health Sciences Center	883
492689	El Paso	Texas	2021-05-26	El Paso	Texas Tech University Health Sciences Center El Paso	286
229160	Tarrant	Texas	2021-05-26	Fort Worth	Texas Wesleyan University	156
229179	Denton	Texas	2021-05-26	Denton	Texas Woman’s University	197
229267	Bexar	Texas	2021-05-26	San Antonia	Trinity University	287
229355	Smith	Texas	2021-05-26	Tyler	Tyler Junior College	198
224323	Dallas	Texas	2021-05-26	Irving	University of Dallas	178
225511	Harris	Texas	2021-05-26	Houston	University of Houston	1051
225414	Harris	Texas	2021-05-26	Houston	University of Houston-Clear Lake	116
225432	Harris	Texas	2021-05-26	Houston	University of Houston-Downtown	50
225502	Victoria	Texas	2021-05-26	Victoria	University of Houston-Victoria	108
226471	Bell	Texas	2021-05-26	Belton	University of Mary Hardin at Baylor	369
227216	Denton	Texas	2021-05-26	Denton	University of North Texas	1791
228909	Tarrant	Texas	2021-05-26	Fort Worth	University of North Texas Health Science Center	137
484905	Dallas	Texas	2021-05-26	Dallas	University of North Texas at Dallas	45
227863	Harris	Texas	2021-05-26	Houston	University of St. Thomas	123
229300	Harris	Texas	2021-05-26	Houston	University of Texas Health Science Center at Houston	458
228644	Bexar	Texas	2021-05-26	San Antonio	University of Texas Health Science Center at San Antonio	595
485537	Smith	Texas	2021-05-26	Tyler	University of Texas Health Science Center at Tyler	139
416801	Harris	Texas	2021-05-26	Houston	University of Texas MD Anderson Cancer Center	24
228653	Galveston	Texas	2021-05-26	Galveston	University of Texas Medical Branch at Galveston	1634
229018	Ector	Texas	2021-05-26	Odessa	University of Texas Permian Basin	335
227368	Hidalgo	Texas	2021-05-26	Edinburg	University of Texas Rio Grande Valley	364
228635	Dallas	Texas	2021-05-26	Dallas	University of Texas Southwestern Medical Center	1163
228769	Tarrant	Texas	2021-05-26	Arlington	University of Texas at Arlington	469
228778	Travis	Texas	2021-05-26	Austin	University of Texas at Austin	3989
228787	Dallas	Texas	2021-05-26	Dallas	University of Texas at Dallas	431
228796	El Paso	Texas	2021-05-26	El Paso	University of Texas at El Paso	1765
229027	Bexar	Texas	2021-05-26	San Antonio	University of Texas at San Antonio	180
228802	Smith	Texas	2021-05-26	Tyler	University of Texas at Tyler	270
225627	Bexar	Texas	2021-05-26	San Antonio	University of the Incarnate Word	153
229780	Hale	Texas	2021-05-26	Plainview	Wayland Baptist University	265
229814	Randall	Texas	2021-05-26	Canyon	West Texas A&M University	941
230038	Utah	Utah	2021-05-26	Provo	Brigham Young University	5369
230171	Washington	Utah	2021-05-26	St. George	Dixie State University	764
230746	Salt Lake	Utah	2021-05-26	Salt Lake City	Salt Lake Community College	868
230597	Sanpete	Utah	2021-05-26	Ephraim	Snow College	238
230603	Iron	Utah	2021-05-26	Cedar City	Southern Utah University	736
230764	Salt Lake	Utah	2021-05-26	Salt Lake City	University of Utah	3328
230728	Cache	Utah	2021-05-26	Logan	Utah State University	3272
230737	Utah	Utah	2021-05-26	Orem	Utah Valley University	1938
230782	Weber	Utah	2021-05-26	Ogden	Weber State University	643
230807	Salt Lake	Utah	2021-05-26	Salt Lake City	Westminster College	218
230816	Bennington	Vermont	2021-05-26	Bennington	Bennington College	15
230834	Rutland	Vermont	2021-05-26	Castleton	Castleton University	119
230852	Chittenden	Vermont	2021-05-26	Burlington	Champlain College	38
230861	Washington	Vermont	2021-05-26	Montpelier	Community College of Vermont	4
230889	Washington	Vermont	2021-05-26	Plainfield	Goddard College	0
247649	Windham	Vermont	2021-05-26	Putney	Landmark College	22
230959	Addison	Vermont	2021-05-26	Middlebury	Middlebury College	29
230913	Lamoille	Vermont	2021-05-26	Johnson	Northern Vermont University-Johnson	6
23091302	Caledonia	Vermont	2021-05-26	Lyndonville	Northern Vermont University-Lyndon	22
230995	Washington	Vermont	2021-05-26	Northfield	Norwich University	175
231059	Chittenden	Vermont	2021-05-26	Colchester	Saint Michael's College	133
231095	Orleans	Vermont	2021-05-26	Craftsbury Common	Sterling College	2
231174	Chittenden	Vermont	2021-05-26	Burlington	University of Vermont	822
455992	Washington	Vermont	2021-05-26	Montpelier	Vermont College of Fine Arts	0
231147	Windsor	Vermont	2021-05-26	South Royalton	Vermont Law School	2
231165	Orange	Vermont	2021-05-26	Randolph	Vermont Technical College	16
243665	St. Thomas	Virgin Islands	2021-05-26	Charlotte Amalie	University of the Virgin Islands	6
231420	Danville	Virginia	2021-05-26	Danville	Averett University	91
231554	Tazewell	Virginia	2021-05-26	Bluefield	Bluefield College	121
231581	Rockingham	Virginia	2021-05-26	Bridgewater	Bridgewater College	118
231712	Newport News	Virginia	2021-05-26	Newport News	Christopher Newport University	478
231882	Danville	Virginia	2021-05-26	Danville	Danville Community College	21
232043	Charlotte	Virginia	2021-05-26	Harrisonburg	Eastern Mennonite University	142
231970	Norfolk	Virginia	2021-05-26	Norfolk	Eastern Virginia Medical School	130
232025	Washington	Virginia	2021-05-26	Emory	Emory & Henry College	135
232089	Franklin	Virginia	2021-05-26	Ferrum	Ferrum College	92
232186	Fairfax	Virginia	2021-05-26	Fairfax	George Mason University	923
232256	Prince Edward	Virginia	2021-05-26	Hampden-Sydney	Hampden-Sydney College	219
232265	Hampton	Virginia	2021-05-26	Hampton	Hampton University	37
232308	Roanoke	Virginia	2021-05-26	Roanoke	Hollins University	18
232423	Rockingham	Virginia	2021-05-26	Harrisonburg	James Madison University	2543
232557	Campbell	Virginia	2021-05-26	Lynchburg	Liberty University	1830
232566	Prince Edward	Virginia	2021-05-26	Farmville	Longwood University	369
232672	Staunton	Virginia	2021-05-26	Staunton	Mary Baldwin University	143
232706	Arlington	Virginia	2021-05-26	Arlington	Marymount University	156
232937	Norfolk	Virginia	2021-05-26	Norfolk	Norfolk State University	161
232982	Norfolk	Virginia	2021-05-26	Norfolk	Old Dominion University	653
233277	Radford	Virginia	2021-05-26	Radford	Radford University	689
233301	Campbell	Virginia	2021-05-26	Lynchburg	Randolph College	42
233295	Hanover	Virginia	2021-05-26	Ashland	Randolph-Macon College	239
233426	Roanoke	Virginia	2021-05-26	Salem	Roanoke College	255
233541	Frederick	Virginia	2021-05-26	Winchester	Shenandoah University	283
233611	Buena Vista	Virginia	2021-05-26	Buena Vista	Southern Virginia University	11
233718	Amherst	Virginia	2021-05-26	Sweet Briar	Sweet Briar College	32
232609	Lynchburg	Virginia	2021-05-26	Lynchburg	University of Lynchburg	234
232681	Fredericksburg	Virginia	2021-05-26	Fredericksburg	University of Mary Washington	144
233374	Henrico	Virginia	2021-05-26	Richmond	University of Richmond	520
234076	Charlottesville	Virginia	2021-05-26	Charlottesville	University of Virginia	3491
233897	Wise	Virginia	2021-05-26	Wise	University of Virginia's College at Wise	89
234030	Richmond	Virginia	2021-05-26	Richmond	Virginia Commonwealth University	1150
233903	Washington	Virginia	2021-05-26	Abingdon	Virginia Highlands Community College	4
234085	Lexington	Virginia	2021-05-26	Lexington	Virginia Military Institute	528
234155	Petersburg	Virginia	2021-05-26	Petersburg	Virginia State University	90
233921	Montgomery	Virginia	2021-05-26	Blacksburg	Virginia Tech	3232
234164	Richmond	Virginia	2021-05-26	Richmond	Virginia Union University	30
234173	Virginia Beach	Virginia	2021-05-26	Virginia Beach	Virginia Wesleyan University	85
234207	Rockbridge	Virginia	2021-05-26	Lexington	Washington and Lee University	473
231624	Williamsburg City	Virginia	2021-05-26	Williamsburg	William & Mary	422
131159	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	American University	219
131283	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	Catholic University of America	345
131450	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	Gallaudet University	19
131469	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	George Washington University	742
131496	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	Georgetown University	866
131520	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	Howard University	237
131876	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	Trinity Washington University	0
131399	Washington, D.C.	Washington, D.C.	2021-05-26	Washington	University of the District of Columbia	11
234669	King	Washington	2021-05-26	Bellevue	Bellevue College	15
234696	Whatcom	Washington	2021-05-26	Bellingham	Bellingham Technical College	0
439190	Snohomish	Washington	2021-05-26	Bothell	Cascadia College	4
234827	Kittitas	Washington	2021-05-26	Ellensburg	Central Washington University	479
234845	Lewis	Washington	2021-05-26	Centralia	Centralia College	30
234933	Clark	Washington	2021-05-26	Vancouver	Clark College	1
234951	Pierce	Washington	2021-05-26	Lakewood	Clover Park Technical College	43
234979	Franklin	Washington	2021-05-26	Pasco	Columbia Basin College	36
235097	Spokane	Washington	2021-05-26	Cheney	Eastern Washington University	387
235103	Snohomish	Washington	2021-05-26	Lynnwood	Edmonds College	26
235149	Snohomish	Washington	2021-05-26	Everett	Everett Community College	17
235167	Thurston	Washington	2021-05-26	Olympia	Evergreen State College	15
235316	Spokane	Washington	2021-05-26	Spokane	Gonzaga University	734
235334	Grays Harbor	Washington	2021-05-26	Aberdeen	Grays Harbor College	5
235343	King	Washington	2021-05-26	Auburn	Green River College	13
235431	King	Washington	2021-05-26	Des Moines	Highline College	6
235699	King	Washington	2021-05-26	Kirkland	Lake Washington Institute of Technology	13
235750	Cowlitz	Washington	2021-05-26	Longview	Lower Columbia College	44
236072	King	Washington	2021-05-26	Seattle	North Seattle College	5
380377	Whatcom	Washington	2021-05-26	Bellingham	Northwest Indian College	0
236188	Kitsap	Washington	2021-05-26	Bremerton	Olympic College	13
236230	Pierce	Washington	2021-05-26	Tacoma	Pacific Lutheran University	44
236258	Clallam	Washington	2021-05-26	Port Angeles	Peninsula College	1
235237	Pierce	Washington	2021-05-26	Lakewood	Pierce College	27
236382	King	Washington	2021-05-26	Renton	Renton Technical College	14
236452	Thurston	Washington	2021-05-26	Lacey	Saint Martin's University	2
236513	King	Washington	2021-05-26	Seattle	Seattle Central College	12
236577	King	Washington	2021-05-26	Seattle	Seattle Pacific University	39
236595	King	Washington	2021-05-26	Seattle	Seattle University	83
236638	Skagit	Washington	2021-05-26	Mount Vernon	Skagit Valley College	1
236504	King	Washington	2021-05-26	Seattle	South Seattle College	11
236692	Spokane	Washington	2021-05-26	Spokane	Spokane Community College	109
236708	Spokane	Washington	2021-05-26	Spokane	Spokane Falls Community College	73
236753	Pierce	Washington	2021-05-26	Tacoma	Tacoma Community College	19
236328	Pierce	Washington	2021-05-26	Tacoma	University of Puget Sound	80
236948	King	Washington	2021-05-26	Seattle	University of Washington	1719
377555	King	Washington	2021-05-26	Bothell	University of Washington Bothell	23
377564	Pierce	Washington	2021-05-26	Tacoma	University of Washington Tacoma	68
236887	Walla Walla	Washington	2021-05-26	Walla Walla	Walla Walla Community College	23
236939	Whitman	Washington	2021-05-26	Pullman	Washington State University	2737
236975	Chelan	Washington	2021-05-26	Wenatchee	Wenatchee Valley College	2
237011	Whatcom	Washington	2021-05-26	Bellingham	Western Washington University	101
237039	Whatcom	Washington	2021-05-26	Bellingham	Whatcom Community College	18
237057	Walla Walla	Washington	2021-05-26	Walla Walla	Whitman College	53
237066	Spokane	Washington	2021-05-26	Spokane	Whitworth University	349
237109	Yakima	Washington	2021-05-26	Yakima	Yakima Valley College	37
237118	Barbour	West Virginia	2021-05-26	Philippi	Alderson Broaddus University	170
237181	Brooke	West Virginia	2021-05-26	Bethany	Bethany College (W.Va.)	25
237215	Mercer	West Virginia	2021-05-26	Bluefield	Bluefield State College	72
237330	Mercer	West Virginia	2021-05-26	Athens	Concord University	185
237358	Randolph	West Virginia	2021-05-26	Elkins	Davis & Elkins College	116
237367	Marion	West Virginia	2021-05-26	Fairmont	Fairmont State University	381
237385	Gilmer	West Virginia	2021-05-26	Glenville	Glenville State College	93
237525	Cabell	West Virginia	2021-05-26	Huntington	Marshall University	622
237640	Wood	West Virginia	2021-05-26	Vienna	Ohio Valley University	0
237701	Mineral	West Virginia	2021-05-26	Keyser	Potomac State College of West Virginia University	76
237783	Harrison	West Virginia	2021-05-26	Salem	Salem University	6
237792	Jefferson	West Virginia	2021-05-26	Shepherdstown	Shepherd University	188
237312	Kanawha	West Virginia	2021-05-26	Charleston	University of Charleston	238
237932	Ohio	West Virginia	2021-05-26	West Liberty	West Liberty University	166
237880	Greenbrier	West Virginia	2021-05-26	Lewisburg	West Virginia School of Osteopathic Medicine	10
237899	Kanawha	West Virginia	2021-05-26	Institute	West Virginia State University	93
238032	Monongalia	West Virginia	2021-05-26	Morgantown	West Virginia University	2299
237950	Fayette	West Virginia	2021-05-26	Montgomery	West Virginia University Institute of Technology	67
237686	Wood	West Virginia	2021-05-26	Parkersburg	West Virginia University at Parkersburg	20
237969	Upshur	West Virginia	2021-05-26	Buckhannon	West Virginia Wesleyan College	74
238078	Ohio	West Virginia	2021-05-26	Wheeling	Wheeling University	12
238193	Milwaukee	Wisconsin	2021-05-26	Milwaukee	Alverno College	154
238333	Rock	Wisconsin	2021-05-26	Beloit	Beloit College	42
238458	Waukesha	Wisconsin	2021-05-26	Waukesha	Carroll University	405
238476	Kenosha	Wisconsin	2021-05-26	Kenosha	Carthage College	357
238616	Ozaukee	Wisconsin	2021-05-26	Mequon	Concordia University Wisconsin	59
238661	Dane	Wisconsin	2021-05-26	Madison	Edgewood College	171
238980	Sheboygan	Wisconsin	2021-05-26	Plymouth	Lakeland University	124
239017	Outagamie	Wisconsin	2021-05-26	Appleton	Lawrence University	118
238263	Dane	Wisconsin	2021-05-26	Madison	Madison Area Technical College	28
239071	Jefferson	Wisconsin	2021-05-26	Watertown	Maranatha Baptist University	19
239080	Fond Du Lac	Wisconsin	2021-05-26	Fond Du Lac	Marian University	337
239105	Milwaukee	Wisconsin	2021-05-26	Milwaukee	Marquette University	1324
239318	Milwaukee	Wisconsin	2021-05-26	Milwaukee	Milwaukee School of Engineering	227
239390	Milwaukee	Wisconsin	2021-05-26	Milwaukee	Mount Mary University	90
239512	Ashland	Wisconsin	2021-05-26	Ashland	Northland College	42
239628	Fond Du Lac	Wisconsin	2021-05-26	Ripon	Ripon College	59
239716	Brown	Wisconsin	2021-05-26	De Pere	Saint Norbert College	295
240268	Eau Claire	Wisconsin	2021-05-26	Eau Claire	University of Wisconsin-Eau Claire	994
240277	Brown	Wisconsin	2021-05-26	Green Bay	University of Wisconsin-Green Bay	536
240329	La Crosse	Wisconsin	2021-05-26	La Crosse	University of Wisconsin-La Crosse	562
240444	Dane	Wisconsin	2021-05-26	Madison	University of Wisconsin-Madison	7708
240453	Milwaukee	Wisconsin	2021-05-26	Milwaukee	University of Wisconsin-Milwaukee	1632
240365	Winnebago	Wisconsin	2021-05-26	Oshkosh	University of Wisconsin-Oshkosh	1457
240374	Kenosha	Wisconsin	2021-05-26	Somers	University of Wisconsin-Parkside	342
240462	Grant	Wisconsin	2021-05-26	Platteville	University of Wisconsin-Platteville	691
240471	Pierce	Wisconsin	2021-05-26	River Falls	University of Wisconsin-River Falls	520
240480	Portage	Wisconsin	2021-05-26	Stevens Point	University of Wisconsin-Stevens Point	706
240417	Dunn	Wisconsin	2021-05-26	Menomonie	University of Wisconsin-Stout	200
240426	Douglas	Wisconsin	2021-05-26	Superior	University of Wisconsin-Superior	38
240189	Walworth	Wisconsin	2021-05-26	Whitewater	University of Wisconsin-Whitewater	847
240107	La Crosse	Wisconsin	2021-05-26	La Crosse	Viterbo University	364
240338	Milwaukee	Wisconsin	2021-05-26	Milwaukee	Wisconsin Lutheran College	143
240505	Natrona	Wyoming	2021-05-26	Casper	Casper College	376
240596	Goshen	Wyoming	2021-05-26	Torrington	Eastern Wyoming College	17
240727	Albany	Wyoming	2021-05-26	Laramie	University of Wyoming	2087
240693	Sweetwater	Wyoming	2021-05-26	Rock Springs	Western Wyoming Community College	68
100654	Madison	Alabama	2021-05-26	Huntsville	Alabama A&M University	41
\.


--
-- Data for Name: countyfipsandname; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countyfipsandname (fips, county) FROM stdin;
1003	Baldwin County
1005	Barbour County
1007	Bibb County
1009	Blount County
1011	Bullock County
1013	Butler County
1015	Calhoun County
1017	Chambers County
1019	Cherokee County
1021	Chilton County
1023	Choctaw County
1025	Clarke County
1027	Clay County
1029	Cleburne County
1031	Coffee County
1033	Colbert County
1035	Conecuh County
1037	Coosa County
1039	Covington County
1041	Crenshaw County
1043	Cullman County
1045	Dale County
1047	Dallas County
1049	DeKalb County
1051	Elmore County
1053	Escambia County
1055	Etowah County
1057	Fayette County
1059	Franklin County
1061	Geneva County
1063	Greene County
1065	Hale County
1067	Henry County
1069	Houston County
1071	Jackson County
1073	Jefferson County
1075	Lamar County
1077	Lauderdale County
1079	Lawrence County
1081	Lee County
1083	Limestone County
1085	Lowndes County
1087	Macon County
1089	Madison County
1091	Marengo County
1093	Marion County
1095	Marshall County
1097	Mobile County
1099	Monroe County
1101	Montgomery County
1103	Morgan County
1105	Perry County
1107	Pickens County
1109	Pike County
1111	Randolph County
1113	Russell County
1115	St. Clair County
1117	Shelby County
1119	Sumter County
1121	Talladega County
1123	Tallapoosa County
1125	Tuscaloosa County
1127	Walker County
1129	Washington County
1131	Wilcox County
1133	Winston County
2013	Aleutians East Borough
2016	Aleutians West Census Area
2020	Anchorage Municipality
2050	Bethel Census Area
2060	Bristol Bay Borough
2068	Denali Borough
2070	Dillingham Census Area
2090	Fairbanks North Star Borough
2100	Haines Borough
2105	Hoonah-Angoon Census Area
2110	Juneau City and Borough
2122	Kenai Peninsula Borough
2130	Ketchikan Gateway Borough
2150	Kodiak Island Borough
2164	Lake and Peninsula Borough
2170	Matanuska-Susitna Borough
2180	Nome Census Area
2185	North Slope Borough
2188	Northwest Arctic Borough
2195	Petersburg Borough
2198	Prince of Wales-Hyder Census Area
2220	Sitka City and Borough
2230	Skagway Municipality
2240	Southeast Fairbanks Census Area
2261	Valdez-Cordova Census Area
2270	Wade Hampton Census Area
2275	Wrangell City and Borough
2282	Yakutat City and Borough
2290	Yukon-Koyukuk Census Area
4001	Apache County
4003	Cochise County
4005	Coconino County
4007	Gila County
4009	Graham County
4011	Greenlee County
4012	La Paz County
4013	Maricopa County
4015	Mohave County
4017	Navajo County
4019	Pima County
4021	Pinal County
4023	Santa Cruz County
4025	Yavapai County
4027	Yuma County
5001	Arkansas County
5003	Ashley County
5005	Baxter County
5007	Benton County
5009	Boone County
5011	Bradley County
5013	Calhoun County
5015	Carroll County
5017	Chicot County
5019	Clark County
5021	Clay County
5023	Cleburne County
5025	Cleveland County
5027	Columbia County
5029	Conway County
5031	Craighead County
5033	Crawford County
5035	Crittenden County
5037	Cross County
5039	Dallas County
5041	Desha County
5043	Drew County
5045	Faulkner County
5047	Franklin County
5049	Fulton County
5051	Garland County
5053	Grant County
5055	Greene County
5057	Hempstead County
5059	Hot Spring County
5061	Howard County
5063	Independence County
5065	Izard County
5067	Jackson County
5069	Jefferson County
5071	Johnson County
5073	Lafayette County
5075	Lawrence County
5077	Lee County
5079	Lincoln County
5081	Little River County
5083	Logan County
5085	Lonoke County
5087	Madison County
5089	Marion County
5091	Miller County
5093	Mississippi County
5095	Monroe County
5097	Montgomery County
5099	Nevada County
5101	Newton County
5103	Ouachita County
5105	Perry County
5107	Phillips County
5109	Pike County
5111	Poinsett County
5113	Polk County
5115	Pope County
5117	Prairie County
5119	Pulaski County
5121	Randolph County
5123	St. Francis County
5125	Saline County
5127	Scott County
5129	Searcy County
5131	Sebastian County
5133	Sevier County
5135	Sharp County
5137	Stone County
5139	Union County
5141	Van Buren County
5143	Washington County
5145	White County
5147	Woodruff County
5149	Yell County
6001	Alameda County
6003	Alpine County
6005	Amador County
6007	Butte County
6009	Calaveras County
6011	Colusa County
6013	Contra Costa County
6015	Del Norte County
6017	El Dorado County
6019	Fresno County
6021	Glenn County
6023	Humboldt County
6025	Imperial County
6027	Inyo County
6029	Kern County
6031	Kings County
6033	Lake County
6035	Lassen County
6037	Los Angeles County
6039	Madera County
6041	Marin County
6043	Mariposa County
6045	Mendocino County
6047	Merced County
6049	Modoc County
6051	Mono County
6053	Monterey County
6055	Napa County
6057	Nevada County
6059	Orange County
6061	Placer County
6063	Plumas County
6065	Riverside County
6067	Sacramento County
6069	San Benito County
6071	San Bernardino County
6073	San Diego County
6075	San Francisco County
6077	San Joaquin County
6079	San Luis Obispo County
6081	San Mateo County
6083	Santa Barbara County
6085	Santa Clara County
6087	Santa Cruz County
6089	Shasta County
6091	Sierra County
6093	Siskiyou County
6095	Solano County
6097	Sonoma County
6099	Stanislaus County
6101	Sutter County
6103	Tehama County
6105	Trinity County
6107	Tulare County
6109	Tuolumne County
6111	Ventura County
6113	Yolo County
6115	Yuba County
8001	Adams County
8003	Alamosa County
8005	Arapahoe County
8007	Archuleta County
8009	Baca County
8011	Bent County
8013	Boulder County
8014	Broomfield County
8015	Chaffee County
8017	Cheyenne County
8019	Clear Creek County
8021	Conejos County
8023	Costilla County
8025	Crowley County
8027	Custer County
8029	Delta County
8031	Denver County
8033	Dolores County
8035	Douglas County
8037	Eagle County
8039	Elbert County
8041	El Paso County
8043	Fremont County
8045	Garfield County
8047	Gilpin County
8049	Grand County
8051	Gunnison County
8053	Hinsdale County
8055	Huerfano County
8057	Jackson County
8059	Jefferson County
8061	Kiowa County
8063	Kit Carson County
8065	Lake County
8067	La Plata County
8069	Larimer County
8071	Las Animas County
8073	Lincoln County
8075	Logan County
8077	Mesa County
8079	Mineral County
8081	Moffat County
8083	Montezuma County
8085	Montrose County
8087	Morgan County
8089	Otero County
8091	Ouray County
8093	Park County
8095	Phillips County
8097	Pitkin County
8099	Prowers County
8101	Pueblo County
8103	Rio Blanco County
8105	Rio Grande County
8107	Routt County
8109	Saguache County
8111	San Juan County
8113	San Miguel County
8115	Sedgwick County
8117	Summit County
8119	Teller County
8121	Washington County
8123	Weld County
8125	Yuma County
9001	Fairfield County
9003	Hartford County
9005	Litchfield County
9007	Middlesex County
9009	New Haven County
9011	New London County
9013	Tolland County
9015	Windham County
10001	Kent County
10003	New Castle County
10005	Sussex County
11001	District of Columbia
12001	Alachua County
12003	Baker County
12005	Bay County
12007	Bradford County
12009	Brevard County
12011	Broward County
12013	Calhoun County
12015	Charlotte County
12017	Citrus County
12019	Clay County
12021	Collier County
12023	Columbia County
12027	DeSoto County
12029	Dixie County
12031	Duval County
12033	Escambia County
12035	Flagler County
12037	Franklin County
12039	Gadsden County
12041	Gilchrist County
12043	Glades County
12045	Gulf County
12047	Hamilton County
12049	Hardee County
12051	Hendry County
12053	Hernando County
12055	Highlands County
12057	Hillsborough County
12059	Holmes County
12061	Indian River County
12063	Jackson County
12065	Jefferson County
12067	Lafayette County
12069	Lake County
12071	Lee County
12073	Leon County
12075	Levy County
12077	Liberty County
12079	Madison County
12081	Manatee County
12083	Marion County
12085	Martin County
12086	Miami-Dade County
12087	Monroe County
12089	Nassau County
12091	Okaloosa County
12093	Okeechobee County
12095	Orange County
12097	Osceola County
12099	Palm Beach County
12101	Pasco County
12103	Pinellas County
12105	Polk County
12107	Putnam County
12109	St. Johns County
12111	St. Lucie County
12113	Santa Rosa County
12115	Sarasota County
12117	Seminole County
12119	Sumter County
12121	Suwannee County
12123	Taylor County
12125	Union County
12127	Volusia County
12129	Wakulla County
12131	Walton County
12133	Washington County
13001	Appling County
13003	Atkinson County
13005	Bacon County
13007	Baker County
13009	Baldwin County
13011	Banks County
13013	Barrow County
13015	Bartow County
13017	Ben Hill County
13019	Berrien County
13021	Bibb County
13023	Bleckley County
13025	Brantley County
13027	Brooks County
13029	Bryan County
13031	Bulloch County
13033	Burke County
13035	Butts County
13037	Calhoun County
13039	Camden County
13043	Candler County
13045	Carroll County
13047	Catoosa County
13049	Charlton County
13051	Chatham County
13053	Chattahoochee County
13055	Chattooga County
13057	Cherokee County
13059	Clarke County
13061	Clay County
13063	Clayton County
13065	Clinch County
13067	Cobb County
13069	Coffee County
13071	Colquitt County
13073	Columbia County
13075	Cook County
13077	Coweta County
13079	Crawford County
13081	Crisp County
13083	Dade County
13085	Dawson County
13087	Decatur County
13089	DeKalb County
13091	Dodge County
13093	Dooly County
13095	Dougherty County
13097	Douglas County
13099	Early County
13101	Echols County
13103	Effingham County
13105	Elbert County
13107	Emanuel County
13109	Evans County
13111	Fannin County
13113	Fayette County
13115	Floyd County
13117	Forsyth County
13119	Franklin County
13121	Fulton County
13123	Gilmer County
13125	Glascock County
13127	Glynn County
13129	Gordon County
13131	Grady County
13133	Greene County
13135	Gwinnett County
13137	Habersham County
13139	Hall County
13141	Hancock County
13143	Haralson County
13145	Harris County
13147	Hart County
13149	Heard County
13151	Henry County
13153	Houston County
13155	Irwin County
13157	Jackson County
13159	Jasper County
13161	Jeff Davis County
13163	Jefferson County
13165	Jenkins County
13167	Johnson County
13169	Jones County
13171	Lamar County
13173	Lanier County
13175	Laurens County
13177	Lee County
13179	Liberty County
13181	Lincoln County
13183	Long County
13185	Lowndes County
13187	Lumpkin County
13189	McDuffie County
13191	McIntosh County
13193	Macon County
13195	Madison County
13197	Marion County
13199	Meriwether County
13201	Miller County
13205	Mitchell County
13207	Monroe County
13209	Montgomery County
13211	Morgan County
13213	Murray County
13215	Muscogee County
13217	Newton County
13219	Oconee County
13221	Oglethorpe County
13223	Paulding County
13225	Peach County
13227	Pickens County
13229	Pierce County
13231	Pike County
13233	Polk County
13235	Pulaski County
13237	Putnam County
13239	Quitman County
13241	Rabun County
13243	Randolph County
13245	Richmond County
13247	Rockdale County
13249	Schley County
13251	Screven County
13253	Seminole County
13255	Spalding County
13257	Stephens County
13259	Stewart County
13261	Sumter County
13263	Talbot County
13265	Taliaferro County
13267	Tattnall County
13269	Taylor County
13271	Telfair County
13273	Terrell County
13275	Thomas County
13277	Tift County
13279	Toombs County
13281	Towns County
13283	Treutlen County
13285	Troup County
13287	Turner County
13289	Twiggs County
13291	Union County
13293	Upson County
13295	Walker County
13297	Walton County
13299	Ware County
13301	Warren County
13303	Washington County
13305	Wayne County
13307	Webster County
13309	Wheeler County
13311	White County
13313	Whitfield County
13315	Wilcox County
13317	Wilkes County
13319	Wilkinson County
13321	Worth County
15001	Hawaii County
15003	Honolulu County
15005	Kalawao County
15007	Kauai County
15009	Maui County
16001	Ada County
16003	Adams County
16005	Bannock County
16007	Bear Lake County
16009	Benewah County
16011	Bingham County
16013	Blaine County
16015	Boise County
16017	Bonner County
16019	Bonneville County
16021	Boundary County
16023	Butte County
16025	Camas County
16027	Canyon County
16029	Caribou County
16031	Cassia County
16033	Clark County
16035	Clearwater County
16037	Custer County
16039	Elmore County
16041	Franklin County
16043	Fremont County
16045	Gem County
16047	Gooding County
16049	Idaho County
16051	Jefferson County
16053	Jerome County
16055	Kootenai County
16057	Latah County
16059	Lemhi County
16061	Lewis County
16063	Lincoln County
16065	Madison County
16067	Minidoka County
16069	Nez Perce County
16071	Oneida County
16073	Owyhee County
16075	Payette County
16077	Power County
16079	Shoshone County
16081	Teton County
16083	Twin Falls County
16085	Valley County
16087	Washington County
17001	Adams County
17003	Alexander County
17005	Bond County
17007	Boone County
17009	Brown County
17011	Bureau County
17013	Calhoun County
17015	Carroll County
17017	Cass County
17019	Champaign County
17021	Christian County
17023	Clark County
17025	Clay County
17027	Clinton County
17029	Coles County
17031	Cook County
17033	Crawford County
17035	Cumberland County
17037	DeKalb County
17039	De Witt County
17041	Douglas County
17043	DuPage County
17045	Edgar County
17047	Edwards County
17049	Effingham County
17051	Fayette County
17053	Ford County
17055	Franklin County
17057	Fulton County
17059	Gallatin County
17061	Greene County
17063	Grundy County
17065	Hamilton County
17067	Hancock County
17069	Hardin County
17071	Henderson County
17073	Henry County
17075	Iroquois County
17077	Jackson County
17079	Jasper County
17081	Jefferson County
17083	Jersey County
17085	Jo Daviess County
17087	Johnson County
17089	Kane County
17091	Kankakee County
17093	Kendall County
17095	Knox County
17097	Lake County
17099	LaSalle County
17101	Lawrence County
17103	Lee County
17105	Livingston County
17107	Logan County
17109	McDonough County
17111	McHenry County
17113	McLean County
17115	Macon County
17117	Macoupin County
17119	Madison County
17121	Marion County
17123	Marshall County
17125	Mason County
17127	Massac County
17129	Menard County
17131	Mercer County
17133	Monroe County
17135	Montgomery County
17137	Morgan County
17139	Moultrie County
17141	Ogle County
17143	Peoria County
17145	Perry County
17147	Piatt County
17149	Pike County
17151	Pope County
17153	Pulaski County
17155	Putnam County
17157	Randolph County
17159	Richland County
17161	Rock Island County
17163	St. Clair County
17165	Saline County
17167	Sangamon County
17169	Schuyler County
17171	Scott County
17173	Shelby County
17175	Stark County
17177	Stephenson County
17179	Tazewell County
17181	Union County
17183	Vermilion County
17185	Wabash County
17187	Warren County
17189	Washington County
17191	Wayne County
17193	White County
17195	Whiteside County
17197	Will County
17199	Williamson County
17201	Winnebago County
17203	Woodford County
18001	Adams County
18003	Allen County
18005	Bartholomew County
18007	Benton County
18009	Blackford County
18011	Boone County
18013	Brown County
18015	Carroll County
18017	Cass County
18019	Clark County
18021	Clay County
18023	Clinton County
18025	Crawford County
18027	Daviess County
18029	Dearborn County
18031	Decatur County
18033	DeKalb County
18035	Delaware County
18037	Dubois County
18039	Elkhart County
18041	Fayette County
18043	Floyd County
18045	Fountain County
18047	Franklin County
18049	Fulton County
18051	Gibson County
18053	Grant County
18055	Greene County
18057	Hamilton County
18059	Hancock County
18061	Harrison County
18063	Hendricks County
18065	Henry County
18067	Howard County
18069	Huntington County
18071	Jackson County
18073	Jasper County
18075	Jay County
18077	Jefferson County
18079	Jennings County
18081	Johnson County
18083	Knox County
18085	Kosciusko County
18087	LaGrange County
18089	Lake County
18091	LaPorte County
18093	Lawrence County
18095	Madison County
18097	Marion County
18099	Marshall County
18101	Martin County
18103	Miami County
18105	Monroe County
18107	Montgomery County
18109	Morgan County
18111	Newton County
18113	Noble County
18115	Ohio County
18117	Orange County
18119	Owen County
18121	Parke County
18123	Perry County
18125	Pike County
18127	Porter County
18129	Posey County
18131	Pulaski County
18133	Putnam County
18135	Randolph County
18137	Ripley County
18139	Rush County
18141	St. Joseph County
18143	Scott County
18145	Shelby County
18147	Spencer County
18149	Starke County
18151	Steuben County
18153	Sullivan County
18155	Switzerland County
18157	Tippecanoe County
18159	Tipton County
18161	Union County
18163	Vanderburgh County
18165	Vermillion County
18167	Vigo County
18169	Wabash County
18171	Warren County
18173	Warrick County
18175	Washington County
18177	Wayne County
18179	Wells County
18181	White County
18183	Whitley County
19001	Adair County
19003	Adams County
19005	Allamakee County
19007	Appanoose County
19009	Audubon County
19011	Benton County
19013	Black Hawk County
19015	Boone County
19017	Bremer County
19019	Buchanan County
19021	Buena Vista County
19023	Butler County
19025	Calhoun County
19027	Carroll County
19029	Cass County
19031	Cedar County
19033	Cerro Gordo County
19035	Cherokee County
19037	Chickasaw County
19039	Clarke County
19041	Clay County
19043	Clayton County
19045	Clinton County
19047	Crawford County
19049	Dallas County
19051	Davis County
19053	Decatur County
19055	Delaware County
19057	Des Moines County
19059	Dickinson County
19061	Dubuque County
19063	Emmet County
19065	Fayette County
19067	Floyd County
19069	Franklin County
19071	Fremont County
19073	Greene County
19075	Grundy County
19077	Guthrie County
19079	Hamilton County
19081	Hancock County
19083	Hardin County
19085	Harrison County
19087	Henry County
19089	Howard County
19091	Humboldt County
19093	Ida County
19095	Iowa County
19097	Jackson County
19099	Jasper County
19101	Jefferson County
19103	Johnson County
19105	Jones County
19107	Keokuk County
19109	Kossuth County
19111	Lee County
19113	Linn County
19115	Louisa County
19117	Lucas County
19119	Lyon County
19121	Madison County
19123	Mahaska County
19125	Marion County
19127	Marshall County
19129	Mills County
19131	Mitchell County
19133	Monona County
19135	Monroe County
19137	Montgomery County
19139	Muscatine County
19141	O'Brien County
19143	Osceola County
19145	Page County
19147	Palo Alto County
19149	Plymouth County
19151	Pocahontas County
19153	Polk County
19155	Pottawattamie County
19157	Poweshiek County
19159	Ringgold County
19161	Sac County
19163	Scott County
19165	Shelby County
19167	Sioux County
19169	Story County
19171	Tama County
19173	Taylor County
19175	Union County
19177	Van Buren County
19179	Wapello County
19181	Warren County
19183	Washington County
19185	Wayne County
19187	Webster County
19189	Winnebago County
19191	Winneshiek County
19193	Woodbury County
19195	Worth County
19197	Wright County
20001	Allen County
20003	Anderson County
20005	Atchison County
20007	Barber County
20009	Barton County
20011	Bourbon County
20013	Brown County
20015	Butler County
20017	Chase County
20019	Chautauqua County
20021	Cherokee County
20023	Cheyenne County
20025	Clark County
20027	Clay County
20029	Cloud County
20031	Coffey County
20033	Comanche County
20035	Cowley County
20037	Crawford County
20039	Decatur County
20041	Dickinson County
20043	Doniphan County
20045	Douglas County
20047	Edwards County
20049	Elk County
20051	Ellis County
20053	Ellsworth County
20055	Finney County
20057	Ford County
20059	Franklin County
20061	Geary County
20063	Gove County
20065	Graham County
20067	Grant County
20069	Gray County
20071	Greeley County
20073	Greenwood County
20075	Hamilton County
20077	Harper County
20079	Harvey County
20081	Haskell County
20083	Hodgeman County
20085	Jackson County
20087	Jefferson County
20089	Jewell County
20091	Johnson County
20093	Kearny County
20095	Kingman County
20097	Kiowa County
20099	Labette County
20101	Lane County
20103	Leavenworth County
20105	Lincoln County
20107	Linn County
20109	Logan County
20111	Lyon County
20113	McPherson County
20115	Marion County
20117	Marshall County
20119	Meade County
20121	Miami County
20123	Mitchell County
20125	Montgomery County
20127	Morris County
20129	Morton County
20131	Nemaha County
20133	Neosho County
20135	Ness County
20137	Norton County
20139	Osage County
20141	Osborne County
20143	Ottawa County
20145	Pawnee County
20147	Phillips County
20149	Pottawatomie County
20151	Pratt County
20153	Rawlins County
20155	Reno County
20157	Republic County
20159	Rice County
20161	Riley County
20163	Rooks County
20165	Rush County
20167	Russell County
20169	Saline County
20171	Scott County
20173	Sedgwick County
20175	Seward County
20177	Shawnee County
20179	Sheridan County
20181	Sherman County
20183	Smith County
20185	Stafford County
20187	Stanton County
20189	Stevens County
20191	Sumner County
20193	Thomas County
20195	Trego County
20197	Wabaunsee County
20199	Wallace County
20201	Washington County
20203	Wichita County
20205	Wilson County
20207	Woodson County
20209	Wyandotte County
21001	Adair County
21003	Allen County
21005	Anderson County
21007	Ballard County
21009	Barren County
21011	Bath County
21013	Bell County
21015	Boone County
21017	Bourbon County
21019	Boyd County
21021	Boyle County
21023	Bracken County
21025	Breathitt County
21027	Breckinridge County
21029	Bullitt County
21031	Butler County
21033	Caldwell County
21035	Calloway County
21037	Campbell County
21039	Carlisle County
21041	Carroll County
21043	Carter County
21045	Casey County
21047	Christian County
21049	Clark County
21051	Clay County
21053	Clinton County
21055	Crittenden County
21057	Cumberland County
21059	Daviess County
21061	Edmonson County
21063	Elliott County
21065	Estill County
21067	Fayette County
21069	Fleming County
21071	Floyd County
21073	Franklin County
21075	Fulton County
21077	Gallatin County
21079	Garrard County
21081	Grant County
21083	Graves County
21085	Grayson County
21087	Green County
21089	Greenup County
21091	Hancock County
21093	Hardin County
21095	Harlan County
21097	Harrison County
21099	Hart County
21101	Henderson County
21103	Henry County
21105	Hickman County
21107	Hopkins County
21109	Jackson County
21111	Jefferson County
21113	Jessamine County
21115	Johnson County
21117	Kenton County
21119	Knott County
21121	Knox County
21123	Larue County
21125	Laurel County
21127	Lawrence County
21129	Lee County
21131	Leslie County
21133	Letcher County
21135	Lewis County
21137	Lincoln County
21139	Livingston County
21141	Logan County
21143	Lyon County
21145	McCracken County
21147	McCreary County
21149	McLean County
21151	Madison County
21153	Magoffin County
21155	Marion County
21157	Marshall County
21159	Martin County
21161	Mason County
21163	Meade County
21165	Menifee County
21167	Mercer County
21169	Metcalfe County
21171	Monroe County
21173	Montgomery County
21175	Morgan County
21177	Muhlenberg County
21179	Nelson County
21181	Nicholas County
21183	Ohio County
21185	Oldham County
21187	Owen County
21189	Owsley County
21191	Pendleton County
21193	Perry County
21195	Pike County
21197	Powell County
21199	Pulaski County
21201	Robertson County
21203	Rockcastle County
21205	Rowan County
21207	Russell County
21209	Scott County
21211	Shelby County
21213	Simpson County
21215	Spencer County
21217	Taylor County
21219	Todd County
21221	Trigg County
21223	Trimble County
21225	Union County
21227	Warren County
21229	Washington County
21231	Wayne County
21233	Webster County
21235	Whitley County
21237	Wolfe County
21239	Woodford County
22001	Acadia Parish
22003	Allen Parish
22005	Ascension Parish
22007	Assumption Parish
22009	Avoyelles Parish
22011	Beauregard Parish
22013	Bienville Parish
22015	Bossier Parish
22017	Caddo Parish
22019	Calcasieu Parish
22021	Caldwell Parish
22023	Cameron Parish
22025	Catahoula Parish
22027	Claiborne Parish
22029	Concordia Parish
22031	De Soto Parish
22033	East Baton Rouge Parish
22035	East Carroll Parish
22037	East Feliciana Parish
22039	Evangeline Parish
22041	Franklin Parish
22043	Grant Parish
22045	Iberia Parish
22047	Iberville Parish
22049	Jackson Parish
22051	Jefferson Parish
22053	Jefferson Davis Parish
22055	Lafayette Parish
22057	Lafourche Parish
22059	La Salle Parish
22061	Lincoln Parish
22063	Livingston Parish
22065	Madison Parish
22067	Morehouse Parish
22069	Natchitoches Parish
22071	Orleans Parish
22073	Ouachita Parish
22075	Plaquemines Parish
22077	Pointe Coupee Parish
22079	Rapides Parish
22081	Red River Parish
22083	Richland Parish
22085	Sabine Parish
22087	St. Bernard Parish
22089	St. Charles Parish
22091	St. Helena Parish
22093	St. James Parish
22095	St. John the Baptist Parish
22097	St. Landry Parish
22099	St. Martin Parish
22101	St. Mary Parish
22103	St. Tammany Parish
22105	Tangipahoa Parish
22107	Tensas Parish
22109	Terrebonne Parish
22111	Union Parish
22113	Vermilion Parish
22115	Vernon Parish
22117	Washington Parish
22119	Webster Parish
22121	West Baton Rouge Parish
22123	West Carroll Parish
22125	West Feliciana Parish
22127	Winn Parish
23001	Androscoggin County
23003	Aroostook County
23005	Cumberland County
23007	Franklin County
23009	Hancock County
23011	Kennebec County
23013	Knox County
23015	Lincoln County
23017	Oxford County
23019	Penobscot County
23021	Piscataquis County
23023	Sagadahoc County
23025	Somerset County
23027	Waldo County
23029	Washington County
23031	York County
24001	Allegany County
24003	Anne Arundel County
24005	Baltimore County
24009	Calvert County
24011	Caroline County
24013	Carroll County
24015	Cecil County
24017	Charles County
24019	Dorchester County
24021	Frederick County
24023	Garrett County
24025	Harford County
24027	Howard County
24029	Kent County
24031	Montgomery County
24033	Prince George's County
24035	Queen Anne's County
24037	St. Mary's County
24039	Somerset County
24041	Talbot County
24043	Washington County
24045	Wicomico County
24047	Worcester County
24510	Baltimore city
25001	Barnstable County
25003	Berkshire County
25005	Bristol County
25007	Dukes County
25009	Essex County
25011	Franklin County
25013	Hampden County
25015	Hampshire County
25017	Middlesex County
25019	Nantucket County
25021	Norfolk County
25023	Plymouth County
25025	Suffolk County
25027	Worcester County
26001	Alcona County
26003	Alger County
26005	Allegan County
26007	Alpena County
26009	Antrim County
26011	Arenac County
26013	Baraga County
26015	Barry County
26017	Bay County
26019	Benzie County
26021	Berrien County
26023	Branch County
26025	Calhoun County
26027	Cass County
26029	Charlevoix County
26031	Cheboygan County
26033	Chippewa County
26035	Clare County
26037	Clinton County
26039	Crawford County
26041	Delta County
26043	Dickinson County
26045	Eaton County
26047	Emmet County
26049	Genesee County
26051	Gladwin County
26053	Gogebic County
26055	Grand Traverse County
26057	Gratiot County
26059	Hillsdale County
26061	Houghton County
26063	Huron County
26065	Ingham County
26067	Ionia County
26069	Iosco County
26071	Iron County
26073	Isabella County
26075	Jackson County
26077	Kalamazoo County
26079	Kalkaska County
26081	Kent County
26083	Keweenaw County
26085	Lake County
26087	Lapeer County
26089	Leelanau County
26091	Lenawee County
26093	Livingston County
26095	Luce County
26097	Mackinac County
26099	Macomb County
26101	Manistee County
26103	Marquette County
26105	Mason County
26107	Mecosta County
26109	Menominee County
26111	Midland County
26113	Missaukee County
26115	Monroe County
26117	Montcalm County
26119	Montmorency County
26121	Muskegon County
26123	Newaygo County
26125	Oakland County
26127	Oceana County
26129	Ogemaw County
26131	Ontonagon County
26133	Osceola County
26135	Oscoda County
26137	Otsego County
26139	Ottawa County
26141	Presque Isle County
26143	Roscommon County
26145	Saginaw County
26147	St. Clair County
26149	St. Joseph County
26151	Sanilac County
26153	Schoolcraft County
26155	Shiawassee County
26157	Tuscola County
26159	Van Buren County
26161	Washtenaw County
26163	Wayne County
26165	Wexford County
27001	Aitkin County
27003	Anoka County
27005	Becker County
27007	Beltrami County
27009	Benton County
27011	Big Stone County
27013	Blue Earth County
27015	Brown County
27017	Carlton County
27019	Carver County
27021	Cass County
27023	Chippewa County
27025	Chisago County
27027	Clay County
27029	Clearwater County
27031	Cook County
27033	Cottonwood County
27035	Crow Wing County
27037	Dakota County
27039	Dodge County
27041	Douglas County
27043	Faribault County
27045	Fillmore County
27047	Freeborn County
27049	Goodhue County
27051	Grant County
27053	Hennepin County
27055	Houston County
27057	Hubbard County
27059	Isanti County
27061	Itasca County
27063	Jackson County
27065	Kanabec County
27067	Kandiyohi County
27069	Kittson County
27071	Koochiching County
27073	Lac qui Parle County
27075	Lake County
27077	Lake of the Woods County
27079	Le Sueur County
27081	Lincoln County
27083	Lyon County
27085	McLeod County
27087	Mahnomen County
27089	Marshall County
27091	Martin County
27093	Meeker County
27095	Mille Lacs County
27097	Morrison County
27099	Mower County
27101	Murray County
27103	Nicollet County
27105	Nobles County
27107	Norman County
27109	Olmsted County
27111	Otter Tail County
27113	Pennington County
27115	Pine County
27117	Pipestone County
27119	Polk County
27121	Pope County
27123	Ramsey County
27125	Red Lake County
27127	Redwood County
27129	Renville County
27131	Rice County
27133	Rock County
27135	Roseau County
27137	St. Louis County
27139	Scott County
27141	Sherburne County
27143	Sibley County
27145	Stearns County
27147	Steele County
27149	Stevens County
27151	Swift County
27153	Todd County
27155	Traverse County
27157	Wabasha County
27159	Wadena County
27161	Waseca County
27163	Washington County
27165	Watonwan County
27167	Wilkin County
27169	Winona County
27171	Wright County
27173	Yellow Medicine County
28001	Adams County
28003	Alcorn County
28005	Amite County
28007	Attala County
28009	Benton County
28011	Bolivar County
28013	Calhoun County
28015	Carroll County
28017	Chickasaw County
28019	Choctaw County
28021	Claiborne County
28023	Clarke County
28025	Clay County
28027	Coahoma County
28029	Copiah County
28031	Covington County
28033	DeSoto County
28035	Forrest County
28037	Franklin County
28039	George County
28041	Greene County
28043	Grenada County
28045	Hancock County
28047	Harrison County
28049	Hinds County
28051	Holmes County
28053	Humphreys County
28055	Issaquena County
28057	Itawamba County
28059	Jackson County
28061	Jasper County
28063	Jefferson County
28065	Jefferson Davis County
28067	Jones County
28069	Kemper County
28071	Lafayette County
28073	Lamar County
28075	Lauderdale County
28077	Lawrence County
28079	Leake County
28081	Lee County
28083	Leflore County
28085	Lincoln County
28087	Lowndes County
28089	Madison County
28091	Marion County
28093	Marshall County
28095	Monroe County
28097	Montgomery County
28099	Neshoba County
28101	Newton County
28103	Noxubee County
28105	Oktibbeha County
28107	Panola County
28109	Pearl River County
28111	Perry County
28113	Pike County
28115	Pontotoc County
28117	Prentiss County
28119	Quitman County
28121	Rankin County
28123	Scott County
28125	Sharkey County
28127	Simpson County
28129	Smith County
28131	Stone County
28133	Sunflower County
28135	Tallahatchie County
28137	Tate County
28139	Tippah County
28141	Tishomingo County
28143	Tunica County
28145	Union County
28147	Walthall County
28149	Warren County
28151	Washington County
28153	Wayne County
28155	Webster County
28157	Wilkinson County
28159	Winston County
28161	Yalobusha County
28163	Yazoo County
29001	Adair County
29003	Andrew County
29005	Atchison County
29007	Audrain County
29009	Barry County
29011	Barton County
29013	Bates County
29015	Benton County
29017	Bollinger County
29019	Boone County
29021	Buchanan County
29023	Butler County
29025	Caldwell County
29027	Callaway County
29029	Camden County
29031	Cape Girardeau County
29033	Carroll County
29035	Carter County
29037	Cass County
29039	Cedar County
29041	Chariton County
29043	Christian County
29045	Clark County
29047	Clay County
29049	Clinton County
29051	Cole County
29053	Cooper County
29055	Crawford County
29057	Dade County
29059	Dallas County
29061	Daviess County
29063	DeKalb County
29065	Dent County
29067	Douglas County
29069	Dunklin County
29071	Franklin County
29073	Gasconade County
29075	Gentry County
29077	Greene County
29079	Grundy County
29081	Harrison County
29083	Henry County
29085	Hickory County
29087	Holt County
29089	Howard County
29091	Howell County
29093	Iron County
29095	Jackson County
29097	Jasper County
29099	Jefferson County
29101	Johnson County
29103	Knox County
29105	Laclede County
29107	Lafayette County
29109	Lawrence County
29111	Lewis County
29113	Lincoln County
29115	Linn County
29117	Livingston County
29119	McDonald County
29121	Macon County
29123	Madison County
29125	Maries County
29127	Marion County
29129	Mercer County
29131	Miller County
29133	Mississippi County
29135	Moniteau County
29137	Monroe County
29139	Montgomery County
29141	Morgan County
29143	New Madrid County
29145	Newton County
29147	Nodaway County
29149	Oregon County
29151	Osage County
29153	Ozark County
29155	Pemiscot County
29157	Perry County
29159	Pettis County
29161	Phelps County
29163	Pike County
29165	Platte County
29167	Polk County
29169	Pulaski County
29171	Putnam County
29173	Ralls County
29175	Randolph County
29177	Ray County
29179	Reynolds County
29181	Ripley County
29183	St. Charles County
29185	St. Clair County
29186	Ste. Genevieve County
29187	St. Francois County
29189	St. Louis County
29195	Saline County
29197	Schuyler County
29199	Scotland County
29201	Scott County
29203	Shannon County
29205	Shelby County
29207	Stoddard County
29209	Stone County
29211	Sullivan County
29213	Taney County
29215	Texas County
29217	Vernon County
29219	Warren County
29221	Washington County
29223	Wayne County
29225	Webster County
29227	Worth County
29229	Wright County
29510	St. Louis city
30001	Beaverhead County
30003	Big Horn County
30005	Blaine County
30007	Broadwater County
30009	Carbon County
30011	Carter County
30013	Cascade County
30015	Chouteau County
30017	Custer County
30019	Daniels County
30021	Dawson County
30023	Deer Lodge County
30025	Fallon County
30027	Fergus County
30029	Flathead County
30031	Gallatin County
30033	Garfield County
30035	Glacier County
30037	Golden Valley County
30039	Granite County
30041	Hill County
30043	Jefferson County
30045	Judith Basin County
30047	Lake County
30049	Lewis and Clark County
30051	Liberty County
30053	Lincoln County
30055	McCone County
30057	Madison County
30059	Meagher County
30061	Mineral County
30063	Missoula County
30065	Musselshell County
30067	Park County
30069	Petroleum County
30071	Phillips County
30073	Pondera County
30075	Powder River County
30077	Powell County
30079	Prairie County
30081	Ravalli County
30083	Richland County
30085	Roosevelt County
30087	Rosebud County
30089	Sanders County
30091	Sheridan County
30093	Silver Bow County
30095	Stillwater County
30097	Sweet Grass County
30099	Teton County
30101	Toole County
30103	Treasure County
30105	Valley County
30107	Wheatland County
30109	Wibaux County
30111	Yellowstone County
31001	Adams County
31003	Antelope County
31005	Arthur County
31007	Banner County
31009	Blaine County
31011	Boone County
31013	Box Butte County
31015	Boyd County
31017	Brown County
31019	Buffalo County
31021	Burt County
31023	Butler County
31025	Cass County
31027	Cedar County
31029	Chase County
31031	Cherry County
31033	Cheyenne County
31035	Clay County
31037	Colfax County
31039	Cuming County
31041	Custer County
31043	Dakota County
31045	Dawes County
31047	Dawson County
31049	Deuel County
31051	Dixon County
31053	Dodge County
31055	Douglas County
31057	Dundy County
31059	Fillmore County
31061	Franklin County
31063	Frontier County
31065	Furnas County
31067	Gage County
31069	Garden County
31071	Garfield County
31073	Gosper County
31075	Grant County
31077	Greeley County
31079	Hall County
31081	Hamilton County
31083	Harlan County
31085	Hayes County
31087	Hitchcock County
31089	Holt County
31091	Hooker County
31093	Howard County
31095	Jefferson County
31097	Johnson County
31099	Kearney County
31101	Keith County
31103	Keya Paha County
31105	Kimball County
31107	Knox County
31109	Lancaster County
31111	Lincoln County
31113	Logan County
31115	Loup County
31117	McPherson County
31119	Madison County
31121	Merrick County
31123	Morrill County
31125	Nance County
31127	Nemaha County
31129	Nuckolls County
31131	Otoe County
31133	Pawnee County
31135	Perkins County
31137	Phelps County
31139	Pierce County
31141	Platte County
31143	Polk County
31145	Red Willow County
31147	Richardson County
31149	Rock County
31151	Saline County
31153	Sarpy County
31155	Saunders County
31157	Scotts Bluff County
31159	Seward County
31161	Sheridan County
31163	Sherman County
31165	Sioux County
31167	Stanton County
31169	Thayer County
31171	Thomas County
31173	Thurston County
31175	Valley County
31177	Washington County
31179	Wayne County
31181	Webster County
31183	Wheeler County
31185	York County
32001	Churchill County
32003	Clark County
32005	Douglas County
32007	Elko County
32009	Esmeralda County
32011	Eureka County
32013	Humboldt County
32015	Lander County
32017	Lincoln County
32019	Lyon County
32021	Mineral County
32023	Nye County
32027	Pershing County
32029	Storey County
32031	Washoe County
32033	White Pine County
32510	Carson City
33001	Belknap County
33003	Carroll County
33005	Cheshire County
33007	Coos County
33009	Grafton County
33011	Hillsborough County
33013	Merrimack County
33015	Rockingham County
33017	Strafford County
33019	Sullivan County
34001	Atlantic County
34003	Bergen County
34005	Burlington County
34007	Camden County
34009	Cape May County
34011	Cumberland County
34013	Essex County
34015	Gloucester County
34017	Hudson County
34019	Hunterdon County
34021	Mercer County
34023	Middlesex County
34025	Monmouth County
34027	Morris County
34029	Ocean County
34031	Passaic County
34033	Salem County
34035	Somerset County
34037	Sussex County
34039	Union County
34041	Warren County
35001	Bernalillo County
35003	Catron County
35005	Chaves County
35006	Cibola County
35007	Colfax County
35009	Curry County
35011	De Baca County
35013	Do�a Ana County
35015	Eddy County
35017	Grant County
35019	Guadalupe County
35021	Harding County
35023	Hidalgo County
35025	Lea County
35027	Lincoln County
35028	Los Alamos County
35029	Luna County
35031	McKinley County
35033	Mora County
35035	Otero County
35037	Quay County
35039	Rio Arriba County
35041	Roosevelt County
35043	Sandoval County
35045	San Juan County
35047	San Miguel County
35049	Santa Fe County
35051	Sierra County
35053	Socorro County
35055	Taos County
35057	Torrance County
35059	Union County
35061	Valencia County
36001	Albany County
36003	Allegany County
36005	Bronx County
36007	Broome County
36009	Cattaraugus County
36011	Cayuga County
36013	Chautauqua County
36015	Chemung County
36017	Chenango County
36019	Clinton County
36021	Columbia County
36023	Cortland County
36025	Delaware County
36027	Dutchess County
36029	Erie County
36031	Essex County
36033	Franklin County
36035	Fulton County
36037	Genesee County
36039	Greene County
36041	Hamilton County
36043	Herkimer County
36045	Jefferson County
36047	Kings County
36049	Lewis County
36051	Livingston County
36053	Madison County
36055	Monroe County
36057	Montgomery County
36059	Nassau County
36061	New York County
36063	Niagara County
36065	Oneida County
36067	Onondaga County
36069	Ontario County
36071	Orange County
36073	Orleans County
36075	Oswego County
36077	Otsego County
36079	Putnam County
36081	Queens County
36083	Rensselaer County
36085	Richmond County
36087	Rockland County
36089	St. Lawrence County
36091	Saratoga County
36093	Schenectady County
36095	Schoharie County
36097	Schuyler County
36099	Seneca County
36101	Steuben County
36103	Suffolk County
36105	Sullivan County
36107	Tioga County
36109	Tompkins County
36111	Ulster County
36113	Warren County
36115	Washington County
36117	Wayne County
36119	Westchester County
36121	Wyoming County
36123	Yates County
37001	Alamance County
37003	Alexander County
37005	Alleghany County
37007	Anson County
37009	Ashe County
37011	Avery County
37013	Beaufort County
37015	Bertie County
37017	Bladen County
37019	Brunswick County
37021	Buncombe County
37023	Burke County
37025	Cabarrus County
37027	Caldwell County
37029	Camden County
37031	Carteret County
37033	Caswell County
37035	Catawba County
37037	Chatham County
37039	Cherokee County
37041	Chowan County
37043	Clay County
37045	Cleveland County
37047	Columbus County
37049	Craven County
37051	Cumberland County
37053	Currituck County
37055	Dare County
37057	Davidson County
37059	Davie County
37061	Duplin County
37063	Durham County
37065	Edgecombe County
37067	Forsyth County
37069	Franklin County
37071	Gaston County
37073	Gates County
37075	Graham County
37077	Granville County
37079	Greene County
37081	Guilford County
37083	Halifax County
37085	Harnett County
37087	Haywood County
37089	Henderson County
37091	Hertford County
37093	Hoke County
37095	Hyde County
37097	Iredell County
37099	Jackson County
37101	Johnston County
37103	Jones County
37105	Lee County
37107	Lenoir County
37109	Lincoln County
37111	McDowell County
37113	Macon County
37115	Madison County
37117	Martin County
37119	Mecklenburg County
37121	Mitchell County
37123	Montgomery County
37125	Moore County
37127	Nash County
37129	New Hanover County
37131	Northampton County
37133	Onslow County
37135	Orange County
37137	Pamlico County
37139	Pasquotank County
37141	Pender County
37143	Perquimans County
37145	Person County
37147	Pitt County
37149	Polk County
37151	Randolph County
37153	Richmond County
37155	Robeson County
37157	Rockingham County
37159	Rowan County
37161	Rutherford County
37163	Sampson County
37165	Scotland County
37167	Stanly County
37169	Stokes County
37171	Surry County
37173	Swain County
37175	Transylvania County
37177	Tyrrell County
37179	Union County
37181	Vance County
37183	Wake County
37185	Warren County
37187	Washington County
37189	Watauga County
37191	Wayne County
37193	Wilkes County
37195	Wilson County
37197	Yadkin County
37199	Yancey County
38001	Adams County
38003	Barnes County
38005	Benson County
38007	Billings County
38009	Bottineau County
38011	Bowman County
38013	Burke County
38015	Burleigh County
38017	Cass County
38019	Cavalier County
38021	Dickey County
38023	Divide County
38025	Dunn County
38027	Eddy County
38029	Emmons County
38031	Foster County
38033	Golden Valley County
38035	Grand Forks County
38037	Grant County
38039	Griggs County
38041	Hettinger County
38043	Kidder County
38045	LaMoure County
38047	Logan County
38049	McHenry County
38051	McIntosh County
38053	McKenzie County
38055	McLean County
38057	Mercer County
38059	Morton County
38061	Mountrail County
38063	Nelson County
38065	Oliver County
38067	Pembina County
38069	Pierce County
38071	Ramsey County
38073	Ransom County
38075	Renville County
38077	Richland County
38079	Rolette County
38081	Sargent County
38083	Sheridan County
38085	Sioux County
38087	Slope County
38089	Stark County
38091	Steele County
38093	Stutsman County
38095	Towner County
38097	Traill County
38099	Walsh County
38101	Ward County
38103	Wells County
38105	Williams County
39001	Adams County
39003	Allen County
39005	Ashland County
39007	Ashtabula County
39009	Athens County
39011	Auglaize County
39013	Belmont County
39015	Brown County
39017	Butler County
39019	Carroll County
39021	Champaign County
39023	Clark County
39025	Clermont County
39027	Clinton County
39029	Columbiana County
39031	Coshocton County
39033	Crawford County
39035	Cuyahoga County
39037	Darke County
39039	Defiance County
39041	Delaware County
39043	Erie County
39045	Fairfield County
39047	Fayette County
39049	Franklin County
39051	Fulton County
39053	Gallia County
39055	Geauga County
39057	Greene County
39059	Guernsey County
39061	Hamilton County
39063	Hancock County
39065	Hardin County
39067	Harrison County
39069	Henry County
39071	Highland County
39073	Hocking County
39075	Holmes County
39077	Huron County
39079	Jackson County
39081	Jefferson County
39083	Knox County
39085	Lake County
39087	Lawrence County
39089	Licking County
39091	Logan County
39093	Lorain County
39095	Lucas County
39097	Madison County
39099	Mahoning County
39101	Marion County
39103	Medina County
39105	Meigs County
39107	Mercer County
39109	Miami County
39111	Monroe County
39113	Montgomery County
39115	Morgan County
39117	Morrow County
39119	Muskingum County
39121	Noble County
39123	Ottawa County
39125	Paulding County
39127	Perry County
39129	Pickaway County
39131	Pike County
39133	Portage County
39135	Preble County
39137	Putnam County
39139	Richland County
39141	Ross County
39143	Sandusky County
39145	Scioto County
39147	Seneca County
39149	Shelby County
39151	Stark County
39153	Summit County
39155	Trumbull County
39157	Tuscarawas County
39159	Union County
39161	Van Wert County
39163	Vinton County
39165	Warren County
39167	Washington County
39169	Wayne County
39171	Williams County
39173	Wood County
39175	Wyandot County
40001	Adair County
40003	Alfalfa County
40005	Atoka County
40007	Beaver County
40009	Beckham County
40011	Blaine County
40013	Bryan County
40015	Caddo County
40017	Canadian County
40019	Carter County
40021	Cherokee County
40023	Choctaw County
40025	Cimarron County
40027	Cleveland County
40029	Coal County
40031	Comanche County
40033	Cotton County
40035	Craig County
40037	Creek County
40039	Custer County
40041	Delaware County
40043	Dewey County
40045	Ellis County
40047	Garfield County
40049	Garvin County
40051	Grady County
40053	Grant County
40055	Greer County
40057	Harmon County
40059	Harper County
40061	Haskell County
40063	Hughes County
40065	Jackson County
40067	Jefferson County
40069	Johnston County
40071	Kay County
40073	Kingfisher County
40075	Kiowa County
40077	Latimer County
40079	Le Flore County
40081	Lincoln County
40083	Logan County
40085	Love County
40087	McClain County
40089	McCurtain County
40091	McIntosh County
40093	Major County
40095	Marshall County
40097	Mayes County
40099	Murray County
40101	Muskogee County
40103	Noble County
40105	Nowata County
40107	Okfuskee County
40109	Oklahoma County
40111	Okmulgee County
40113	Osage County
40115	Ottawa County
40117	Pawnee County
40119	Payne County
40121	Pittsburg County
40123	Pontotoc County
40125	Pottawatomie County
40127	Pushmataha County
40129	Roger Mills County
40131	Rogers County
40133	Seminole County
40135	Sequoyah County
40137	Stephens County
40139	Texas County
40141	Tillman County
40143	Tulsa County
40145	Wagoner County
40147	Washington County
40149	Washita County
40151	Woods County
40153	Woodward County
41001	Baker County
41003	Benton County
41005	Clackamas County
41007	Clatsop County
41009	Columbia County
41011	Coos County
41013	Crook County
41015	Curry County
41017	Deschutes County
41019	Douglas County
41021	Gilliam County
41023	Grant County
41025	Harney County
41027	Hood River County
41029	Jackson County
41031	Jefferson County
41033	Josephine County
41035	Klamath County
41037	Lake County
41039	Lane County
41041	Lincoln County
41043	Linn County
41045	Malheur County
41047	Marion County
41049	Morrow County
41051	Multnomah County
41053	Polk County
41055	Sherman County
41057	Tillamook County
41059	Umatilla County
41061	Union County
41063	Wallowa County
41065	Wasco County
41067	Washington County
41069	Wheeler County
41071	Yamhill County
42001	Adams County
42003	Allegheny County
42005	Armstrong County
42007	Beaver County
42009	Bedford County
42011	Berks County
42013	Blair County
42015	Bradford County
42017	Bucks County
42019	Butler County
42021	Cambria County
42023	Cameron County
42025	Carbon County
42027	Centre County
42029	Chester County
42031	Clarion County
42033	Clearfield County
42035	Clinton County
42037	Columbia County
42039	Crawford County
42041	Cumberland County
42043	Dauphin County
42045	Delaware County
42047	Elk County
42049	Erie County
42051	Fayette County
42053	Forest County
42055	Franklin County
42057	Fulton County
42059	Greene County
42061	Huntingdon County
42063	Indiana County
42065	Jefferson County
42067	Juniata County
42069	Lackawanna County
42071	Lancaster County
42073	Lawrence County
42075	Lebanon County
42077	Lehigh County
42079	Luzerne County
42081	Lycoming County
42083	McKean County
42085	Mercer County
42087	Mifflin County
42089	Monroe County
42091	Montgomery County
42093	Montour County
42095	Northampton County
42097	Northumberland County
42099	Perry County
42101	Philadelphia County
42103	Pike County
42105	Potter County
42107	Schuylkill County
42109	Snyder County
42111	Somerset County
42113	Sullivan County
42115	Susquehanna County
42117	Tioga County
42119	Union County
42121	Venango County
42123	Warren County
42125	Washington County
42127	Wayne County
42129	Westmoreland County
42131	Wyoming County
42133	York County
44001	Bristol County
44003	Kent County
44005	Newport County
44007	Providence County
44009	Washington County
45001	Abbeville County
45003	Aiken County
45005	Allendale County
45007	Anderson County
45009	Bamberg County
45011	Barnwell County
45013	Beaufort County
45015	Berkeley County
45017	Calhoun County
45019	Charleston County
45021	Cherokee County
45023	Chester County
45025	Chesterfield County
45027	Clarendon County
45029	Colleton County
45031	Darlington County
45033	Dillon County
45035	Dorchester County
45037	Edgefield County
45039	Fairfield County
45041	Florence County
45043	Georgetown County
45045	Greenville County
45047	Greenwood County
45049	Hampton County
45051	Horry County
45053	Jasper County
45055	Kershaw County
45057	Lancaster County
45059	Laurens County
45061	Lee County
45063	Lexington County
45065	McCormick County
45067	Marion County
45069	Marlboro County
45071	Newberry County
45073	Oconee County
45075	Orangeburg County
45077	Pickens County
45079	Richland County
45081	Saluda County
45083	Spartanburg County
45085	Sumter County
45087	Union County
45089	Williamsburg County
45091	York County
46003	Aurora County
46005	Beadle County
46007	Bennett County
46009	Bon Homme County
46011	Brookings County
46013	Brown County
46015	Brule County
46017	Buffalo County
46019	Butte County
46021	Campbell County
46023	Charles Mix County
46025	Clark County
46027	Clay County
46029	Codington County
46031	Corson County
46033	Custer County
46035	Davison County
46037	Day County
46039	Deuel County
46041	Dewey County
46043	Douglas County
46045	Edmunds County
46047	Fall River County
46049	Faulk County
46051	Grant County
46053	Gregory County
46055	Haakon County
46057	Hamlin County
46059	Hand County
46061	Hanson County
46063	Harding County
46065	Hughes County
46067	Hutchinson County
46069	Hyde County
46071	Jackson County
46073	Jerauld County
46075	Jones County
46077	Kingsbury County
46079	Lake County
46081	Lawrence County
46083	Lincoln County
46085	Lyman County
46087	McCook County
46089	McPherson County
46091	Marshall County
46093	Meade County
46095	Mellette County
46097	Miner County
46099	Minnehaha County
46101	Moody County
46103	Pennington County
46105	Perkins County
46107	Potter County
46109	Roberts County
46111	Sanborn County
46113	Shannon County
46115	Spink County
46117	Stanley County
46119	Sully County
46121	Todd County
46123	Tripp County
46125	Turner County
46127	Union County
46129	Walworth County
46135	Yankton County
46137	Ziebach County
47001	Anderson County
47003	Bedford County
47005	Benton County
47007	Bledsoe County
47009	Blount County
47011	Bradley County
47013	Campbell County
47015	Cannon County
47017	Carroll County
47019	Carter County
47021	Cheatham County
47023	Chester County
47025	Claiborne County
47027	Clay County
47029	Cocke County
47031	Coffee County
47033	Crockett County
47035	Cumberland County
47037	Davidson County
47039	Decatur County
47041	DeKalb County
47043	Dickson County
47045	Dyer County
47047	Fayette County
47049	Fentress County
47051	Franklin County
47053	Gibson County
47055	Giles County
47057	Grainger County
47059	Greene County
47061	Grundy County
47063	Hamblen County
47065	Hamilton County
47067	Hancock County
47069	Hardeman County
47071	Hardin County
47073	Hawkins County
47075	Haywood County
47077	Henderson County
47079	Henry County
47081	Hickman County
47083	Houston County
47085	Humphreys County
47087	Jackson County
47089	Jefferson County
47091	Johnson County
47093	Knox County
47095	Lake County
47097	Lauderdale County
47099	Lawrence County
47101	Lewis County
47103	Lincoln County
47105	Loudon County
47107	McMinn County
47109	McNairy County
47111	Macon County
47113	Madison County
47115	Marion County
47117	Marshall County
47119	Maury County
47121	Meigs County
47123	Monroe County
47125	Montgomery County
47127	Moore County
47129	Morgan County
47131	Obion County
47133	Overton County
47135	Perry County
47137	Pickett County
47139	Polk County
47141	Putnam County
47143	Rhea County
47145	Roane County
47147	Robertson County
47149	Rutherford County
47151	Scott County
47153	Sequatchie County
47155	Sevier County
47157	Shelby County
47159	Smith County
47161	Stewart County
47163	Sullivan County
47165	Sumner County
47167	Tipton County
47169	Trousdale County
47171	Unicoi County
47173	Union County
47175	Van Buren County
47177	Warren County
47179	Washington County
47181	Wayne County
47183	Weakley County
47185	White County
47187	Williamson County
47189	Wilson County
48001	Anderson County
48003	Andrews County
48005	Angelina County
48007	Aransas County
48009	Archer County
48011	Armstrong County
48013	Atascosa County
48015	Austin County
48017	Bailey County
48019	Bandera County
48021	Bastrop County
48023	Baylor County
48025	Bee County
48027	Bell County
48029	Bexar County
48031	Blanco County
48033	Borden County
48035	Bosque County
48037	Bowie County
48039	Brazoria County
48041	Brazos County
48043	Brewster County
48045	Briscoe County
48047	Brooks County
48049	Brown County
48051	Burleson County
48053	Burnet County
48055	Caldwell County
48057	Calhoun County
48059	Callahan County
48061	Cameron County
48063	Camp County
48065	Carson County
48067	Cass County
48069	Castro County
48071	Chambers County
48073	Cherokee County
48075	Childress County
48077	Clay County
48079	Cochran County
48081	Coke County
48083	Coleman County
48085	Collin County
48087	Collingsworth County
48089	Colorado County
48091	Comal County
48093	Comanche County
48095	Concho County
48097	Cooke County
48099	Coryell County
48101	Cottle County
48103	Crane County
48105	Crockett County
48107	Crosby County
48109	Culberson County
48111	Dallam County
48113	Dallas County
48115	Dawson County
48117	Deaf Smith County
48119	Delta County
48121	Denton County
48123	DeWitt County
48125	Dickens County
48127	Dimmit County
48129	Donley County
48131	Duval County
48133	Eastland County
48135	Ector County
48137	Edwards County
48139	Ellis County
48141	El Paso County
48143	Erath County
48145	Falls County
48147	Fannin County
48149	Fayette County
48151	Fisher County
48153	Floyd County
48155	Foard County
48157	Fort Bend County
48159	Franklin County
48161	Freestone County
48163	Frio County
48165	Gaines County
48167	Galveston County
48169	Garza County
48171	Gillespie County
48173	Glasscock County
48175	Goliad County
48177	Gonzales County
48179	Gray County
48181	Grayson County
48183	Gregg County
48185	Grimes County
48187	Guadalupe County
48189	Hale County
48191	Hall County
48193	Hamilton County
48195	Hansford County
48197	Hardeman County
48199	Hardin County
48201	Harris County
48203	Harrison County
48205	Hartley County
48207	Haskell County
48209	Hays County
48211	Hemphill County
48213	Henderson County
48215	Hidalgo County
48217	Hill County
48219	Hockley County
48221	Hood County
48223	Hopkins County
48225	Houston County
48227	Howard County
48229	Hudspeth County
48231	Hunt County
48233	Hutchinson County
48235	Irion County
48237	Jack County
48239	Jackson County
48241	Jasper County
48243	Jeff Davis County
48245	Jefferson County
48247	Jim Hogg County
48249	Jim Wells County
48251	Johnson County
48253	Jones County
48255	Karnes County
48257	Kaufman County
48259	Kendall County
48261	Kenedy County
48263	Kent County
48265	Kerr County
48267	Kimble County
48269	King County
48271	Kinney County
48273	Kleberg County
48275	Knox County
48277	Lamar County
48279	Lamb County
48281	Lampasas County
48283	La Salle County
48285	Lavaca County
48287	Lee County
48289	Leon County
48291	Liberty County
48293	Limestone County
48295	Lipscomb County
48297	Live Oak County
48299	Llano County
48301	Loving County
48303	Lubbock County
48305	Lynn County
48307	McCulloch County
48309	McLennan County
48311	McMullen County
48313	Madison County
48315	Marion County
48317	Martin County
48319	Mason County
48321	Matagorda County
48323	Maverick County
48325	Medina County
48327	Menard County
48329	Midland County
48331	Milam County
48333	Mills County
48335	Mitchell County
48337	Montague County
48339	Montgomery County
48341	Moore County
48343	Morris County
48345	Motley County
48347	Nacogdoches County
48349	Navarro County
48351	Newton County
48353	Nolan County
48355	Nueces County
48357	Ochiltree County
48359	Oldham County
48361	Orange County
48363	Palo Pinto County
48365	Panola County
48367	Parker County
48369	Parmer County
48371	Pecos County
48373	Polk County
48375	Potter County
48377	Presidio County
48379	Rains County
48381	Randall County
48383	Reagan County
48385	Real County
48387	Red River County
48389	Reeves County
48391	Refugio County
48393	Roberts County
48395	Robertson County
48397	Rockwall County
48399	Runnels County
48401	Rusk County
48403	Sabine County
48405	San Augustine County
48407	San Jacinto County
48409	San Patricio County
48411	San Saba County
48413	Schleicher County
48415	Scurry County
48417	Shackelford County
48419	Shelby County
48421	Sherman County
48423	Smith County
48425	Somervell County
48427	Starr County
48429	Stephens County
48431	Sterling County
48433	Stonewall County
48435	Sutton County
48437	Swisher County
48439	Tarrant County
48441	Taylor County
48443	Terrell County
48445	Terry County
48447	Throckmorton County
48449	Titus County
48451	Tom Green County
48453	Travis County
48455	Trinity County
48457	Tyler County
48459	Upshur County
48461	Upton County
48463	Uvalde County
48465	Val Verde County
48467	Van Zandt County
48469	Victoria County
48471	Walker County
48473	Waller County
48475	Ward County
48477	Washington County
48479	Webb County
48481	Wharton County
48483	Wheeler County
48485	Wichita County
48487	Wilbarger County
48489	Willacy County
48491	Williamson County
48493	Wilson County
48495	Winkler County
48497	Wise County
48499	Wood County
48501	Yoakum County
48503	Young County
48505	Zapata County
48507	Zavala County
49001	Beaver County
49003	Box Elder County
49005	Cache County
49007	Carbon County
49009	Daggett County
49011	Davis County
49013	Duchesne County
49015	Emery County
49017	Garfield County
49019	Grand County
49021	Iron County
49023	Juab County
49025	Kane County
49027	Millard County
49029	Morgan County
49031	Piute County
49033	Rich County
49035	Salt Lake County
49037	San Juan County
49039	Sanpete County
49041	Sevier County
49043	Summit County
49045	Tooele County
49047	Uintah County
49049	Utah County
49051	Wasatch County
49053	Washington County
49055	Wayne County
49057	Weber County
50001	Addison County
50003	Bennington County
50005	Caledonia County
50007	Chittenden County
50009	Essex County
50011	Franklin County
50013	Grand Isle County
50015	Lamoille County
50017	Orange County
50019	Orleans County
50021	Rutland County
50023	Washington County
50025	Windham County
50027	Windsor County
51001	Accomack County
51003	Albemarle County
51005	Alleghany County
51007	Amelia County
51009	Amherst County
51011	Appomattox County
51013	Arlington County
51015	Augusta County
51017	Bath County
51019	Bedford County
51021	Bland County
51023	Botetourt County
51025	Brunswick County
51027	Buchanan County
51029	Buckingham County
51031	Campbell County
51033	Caroline County
51035	Carroll County
51036	Charles City County
51037	Charlotte County
51041	Chesterfield County
51043	Clarke County
51045	Craig County
51047	Culpeper County
51049	Cumberland County
51051	Dickenson County
51053	Dinwiddie County
51057	Essex County
51059	Fairfax County
51061	Fauquier County
51063	Floyd County
51065	Fluvanna County
51067	Franklin County
51069	Frederick County
51071	Giles County
51073	Gloucester County
51075	Goochland County
51077	Grayson County
51079	Greene County
51081	Greensville County
51083	Halifax County
51085	Hanover County
51087	Henrico County
51089	Henry County
51091	Highland County
51093	Isle of Wight County
51095	James City County
51097	King and Queen County
51099	King George County
51101	King William County
51103	Lancaster County
51105	Lee County
51107	Loudoun County
51109	Louisa County
51111	Lunenburg County
51113	Madison County
51115	Mathews County
51117	Mecklenburg County
51119	Middlesex County
51121	Montgomery County
51125	Nelson County
51127	New Kent County
51131	Northampton County
51133	Northumberland County
51135	Nottoway County
51137	Orange County
51139	Page County
51141	Patrick County
51143	Pittsylvania County
51145	Powhatan County
51147	Prince Edward County
51149	Prince George County
51153	Prince William County
51155	Pulaski County
51157	Rappahannock County
51159	Richmond County
51161	Roanoke County
51163	Rockbridge County
51165	Rockingham County
51167	Russell County
51169	Scott County
51171	Shenandoah County
51173	Smyth County
51175	Southampton County
51177	Spotsylvania County
51179	Stafford County
51181	Surry County
51183	Sussex County
51185	Tazewell County
51187	Warren County
51191	Washington County
51193	Westmoreland County
51195	Wise County
51197	Wythe County
51199	York County
51510	Alexandria city
51515	Bedford city
51520	Bristol city
51530	Buena Vista city
51540	Charlottesville city
51550	Chesapeake city
51570	Colonial Heights city
51580	Covington city
51590	Danville city
51595	Emporia city
51600	Fairfax city
51610	Falls Church city
51620	Franklin city
51630	Fredericksburg city
51640	Galax city
51650	Hampton city
51660	Harrisonburg city
51670	Hopewell city
51678	Lexington city
51680	Lynchburg city
51683	Manassas city
51685	Manassas Park city
51690	Martinsville city
51700	Newport News city
51710	Norfolk city
51720	Norton city
51730	Petersburg city
51735	Poquoson city
51740	Portsmouth city
51750	Radford city
51760	Richmond city
51770	Roanoke city
51775	Salem city
51790	Staunton city
51800	Suffolk city
51810	Virginia Beach city
51820	Waynesboro city
51830	Williamsburg city
51840	Winchester city
53001	Adams County
53003	Asotin County
53005	Benton County
53007	Chelan County
53009	Clallam County
53011	Clark County
53013	Columbia County
53015	Cowlitz County
53017	Douglas County
53019	Ferry County
53021	Franklin County
53023	Garfield County
53025	Grant County
53027	Grays Harbor County
53029	Island County
53031	Jefferson County
53033	King County
53035	Kitsap County
53037	Kittitas County
53039	Klickitat County
53041	Lewis County
53043	Lincoln County
53045	Mason County
53047	Okanogan County
53049	Pacific County
53051	Pend Oreille County
53053	Pierce County
53055	San Juan County
53057	Skagit County
53059	Skamania County
53061	Snohomish County
53063	Spokane County
53065	Stevens County
53067	Thurston County
53069	Wahkiakum County
53071	Walla Walla County
53073	Whatcom County
53075	Whitman County
53077	Yakima County
54001	Barbour County
54003	Berkeley County
54005	Boone County
54007	Braxton County
54009	Brooke County
54011	Cabell County
54013	Calhoun County
54015	Clay County
54017	Doddridge County
54019	Fayette County
54021	Gilmer County
54023	Grant County
54025	Greenbrier County
54027	Hampshire County
54029	Hancock County
54031	Hardy County
54033	Harrison County
54035	Jackson County
54037	Jefferson County
54039	Kanawha County
54041	Lewis County
54043	Lincoln County
54045	Logan County
54047	McDowell County
54049	Marion County
54051	Marshall County
54053	Mason County
54055	Mercer County
54057	Mineral County
54059	Mingo County
54061	Monongalia County
54063	Monroe County
54065	Morgan County
54067	Nicholas County
54069	Ohio County
54071	Pendleton County
54073	Pleasants County
54075	Pocahontas County
54077	Preston County
54079	Putnam County
54081	Raleigh County
54083	Randolph County
54085	Ritchie County
54087	Roane County
54089	Summers County
54091	Taylor County
54093	Tucker County
54095	Tyler County
54097	Upshur County
54099	Wayne County
54101	Webster County
54103	Wetzel County
54105	Wirt County
54107	Wood County
54109	Wyoming County
55001	Adams County
55003	Ashland County
55005	Barron County
55007	Bayfield County
55009	Brown County
55011	Buffalo County
55013	Burnett County
55015	Calumet County
55017	Chippewa County
55019	Clark County
55021	Columbia County
55023	Crawford County
55025	Dane County
55027	Dodge County
55029	Door County
55031	Douglas County
55033	Dunn County
55035	Eau Claire County
55037	Florence County
55039	Fond du Lac County
55041	Forest County
55043	Grant County
55045	Green County
55047	Green Lake County
55049	Iowa County
55051	Iron County
55053	Jackson County
55055	Jefferson County
55057	Juneau County
55059	Kenosha County
55061	Kewaunee County
55063	La Crosse County
55065	Lafayette County
55067	Langlade County
55069	Lincoln County
55071	Manitowoc County
55073	Marathon County
55075	Marinette County
55077	Marquette County
55078	Menominee County
55079	Milwaukee County
55081	Monroe County
55083	Oconto County
55085	Oneida County
55087	Outagamie County
55089	Ozaukee County
55091	Pepin County
55093	Pierce County
55095	Polk County
55097	Portage County
55099	Price County
55101	Racine County
55103	Richland County
55105	Rock County
55107	Rusk County
55109	St. Croix County
55111	Sauk County
55113	Sawyer County
55115	Shawano County
55117	Sheboygan County
55119	Taylor County
55121	Trempealeau County
55123	Vernon County
55125	Vilas County
55127	Walworth County
55129	Washburn County
55131	Washington County
55133	Waukesha County
55135	Waupaca County
55137	Waushara County
55139	Winnebago County
55141	Wood County
56001	Albany County
56003	Big Horn County
56005	Campbell County
56007	Carbon County
56009	Converse County
56011	Crook County
56013	Fremont County
56015	Goshen County
56017	Hot Springs County
56019	Johnson County
56021	Laramie County
56023	Lincoln County
56025	Natrona County
56027	Niobrara County
56029	Park County
56031	Platte County
56033	Sheridan County
56035	Sublette County
56037	Sweetwater County
56039	Teton County
56041	Uinta County
56043	Washakie County
56045	Weston County
1001	Autauga County
\.


--
-- Data for Name: mask_use; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mask_use (fips, never, rarely, sometimes, frequently, always) FROM stdin;
1003	0.083	0.059	0.098	0.323	0.436
1005	0.067	0.121	0.12	0.201	0.491
1007	0.02	0.034	0.096	0.278	0.572
1009	0.053	0.114	0.18	0.194	0.459
1011	0.031	0.04	0.144	0.286	0.5
1013	0.102	0.053	0.257	0.137	0.451
1015	0.152	0.108	0.13	0.167	0.442
1017	0.117	0.037	0.15	0.136	0.56
1019	0.135	0.027	0.161	0.158	0.52
1021	0.06	0.07	0.058	0.194	0.618
1023	0.049	0.038	0.126	0.219	0.568
1025	0.049	0.088	0.164	0.268	0.43
1027	0.148	0.158	0.195	0.169	0.329
1029	0.151	0.125	0.138	0.217	0.368
1031	0.101	0.152	0.094	0.186	0.466
1033	0.082	0.096	0.152	0.159	0.51
1035	0.099	0.052	0.259	0.192	0.399
1037	0.055	0.131	0.167	0.263	0.384
1039	0.187	0.128	0.129	0.201	0.356
1041	0.06	0.091	0.199	0.233	0.416
1043	0.13	0.024	0.249	0.217	0.379
1045	0.089	0.113	0.118	0.22	0.46
1047	0.095	0.1	0.159	0.122	0.524
1049	0.084	0.051	0.106	0.179	0.58
1051	0.042	0.095	0.127	0.252	0.485
1053	0.114	0.026	0.188	0.285	0.387
1055	0.096	0.103	0.178	0.122	0.501
1057	0.138	0.048	0.151	0.233	0.429
1059	0.065	0.071	0.223	0.156	0.484
1061	0.176	0.131	0.089	0.158	0.445
1063	0.03	0.053	0.127	0.167	0.623
1065	0.026	0.061	0.084	0.191	0.639
1067	0.066	0.068	0.17	0.258	0.438
1069	0.085	0.079	0.135	0.268	0.433
1071	0.092	0.089	0.11	0.249	0.46
1073	0.049	0.037	0.107	0.179	0.628
1075	0.107	0.045	0.132	0.189	0.527
1077	0.093	0.119	0.141	0.179	0.469
1079	0.162	0.08	0.088	0.251	0.419
1081	0.053	0.064	0.138	0.183	0.562
1083	0.102	0.034	0.133	0.336	0.395
1085	0.12	0.073	0.145	0.199	0.464
1087	0.008	0.033	0.241	0.172	0.545
1089	0.062	0.05	0.123	0.177	0.589
1091	0.033	0.151	0.118	0.186	0.512
1093	0.129	0.064	0.246	0.207	0.353
1095	0.075	0.064	0.129	0.253	0.479
1097	0.077	0.07	0.102	0.244	0.506
1099	0.112	0.041	0.182	0.288	0.378
1101	0.056	0.095	0.123	0.212	0.513
1103	0.078	0.077	0.082	0.304	0.459
1105	0.025	0.084	0.087	0.187	0.618
1107	0.031	0.06	0.169	0.157	0.584
1109	0.06	0.131	0.145	0.333	0.33
1111	0.158	0.226	0.105	0.144	0.368
1113	0.069	0.067	0.08	0.213	0.57
1115	0.027	0.134	0.144	0.2	0.495
1117	0.022	0.075	0.118	0.24	0.545
1119	0.055	0.068	0.118	0.197	0.562
1121	0.113	0.15	0.208	0.169	0.361
1123	0.067	0.095	0.136	0.296	0.406
1125	0.041	0.036	0.144	0.247	0.532
1127	0.09	0.081	0.145	0.256	0.429
1129	0.018	0.077	0.102	0.307	0.495
1131	0.061	0.098	0.199	0.187	0.455
1133	0.13	0.046	0.328	0.183	0.312
2013	0.067	0.032	0.034	0.316	0.551
2016	0.078	0.031	0.03	0.337	0.524
2020	0.042	0.05	0.049	0.196	0.663
2050	0.101	0.022	0.014	0.45	0.413
2060	0.048	0.037	0.042	0.308	0.564
2068	0.062	0.081	0.067	0.225	0.565
2070	0.072	0.025	0.027	0.391	0.484
2090	0.094	0.084	0.175	0.234	0.413
2100	0.055	0.05	0.123	0.419	0.352
2105	0.051	0.064	0.13	0.399	0.356
2110	0.051	0.067	0.133	0.396	0.353
2122	0.043	0.047	0.051	0.197	0.662
2130	0.025	0.149	0.174	0.256	0.396
2150	0.042	0.043	0.049	0.233	0.633
2158	0.103	0.022	0.007	0.521	0.347
2164	0.055	0.036	0.04	0.299	0.571
2170	0.042	0.051	0.048	0.198	0.66
2180	0.086	0.061	0.009	0.544	0.3
2185	0.036	0.059	0.235	0.215	0.455
2188	0.035	0.188	0.051	0.474	0.252
2195	0.042	0.095	0.148	0.349	0.365
2198	0.033	0.125	0.161	0.3	0.38
2220	0.048	0.077	0.137	0.381	0.357
2230	0.058	0.038	0.116	0.435	0.354
2240	0.064	0.071	0.14	0.272	0.453
2261	0.04	0.049	0.052	0.197	0.663
2275	0.035	0.119	0.16	0.312	0.374
2282	0.047	0.012	0.078	0.381	0.481
2290	0.044	0.047	0.126	0.425	0.358
4001	0.055	0.063	0.031	0.15	0.701
4003	0.053	0.025	0.147	0.194	0.581
4005	0.039	0.08	0.07	0.11	0.702
4007	0.073	0.014	0.03	0.336	0.547
4009	0.095	0.067	0.237	0.049	0.553
4011	0.111	0.089	0.167	0.089	0.544
4012	0.031	0.064	0.162	0.173	0.57
4013	0.023	0.025	0.059	0.158	0.734
4015	0.051	0.096	0.104	0.164	0.585
4017	0.091	0.108	0.059	0.139	0.602
4019	0.023	0.024	0.073	0.121	0.759
4021	0.033	0.055	0.096	0.148	0.667
4023	0.028	0.002	0.058	0.074	0.837
4025	0.031	0.073	0.081	0.176	0.639
4027	0.008	0.013	0.046	0.129	0.804
5001	0.019	0.073	0.134	0.216	0.557
5003	0.023	0.103	0.163	0.117	0.595
5005	0.15	0.104	0.108	0.104	0.534
5007	0.081	0.034	0.083	0.16	0.643
5009	0.129	0.145	0.122	0.189	0.416
5011	0.094	0.102	0.175	0.184	0.445
5013	0.145	0.132	0.108	0.211	0.404
5015	0.111	0.068	0.115	0.129	0.577
5017	0.104	0.074	0.193	0.097	0.531
5019	0.08	0.091	0.08	0.231	0.518
5021	0.082	0.124	0.157	0.242	0.395
5023	0.036	0.065	0.093	0.259	0.546
5025	0.107	0.03	0.16	0.231	0.472
5027	0.241	0.072	0.054	0.25	0.383
5029	0.071	0.12	0.137	0.347	0.325
5031	0.078	0.123	0.138	0.341	0.32
5033	0.155	0.1	0.167	0.211	0.367
5035	0.059	0.017	0.11	0.306	0.508
5037	0.097	0.017	0.163	0.319	0.404
5039	0.197	0.055	0.093	0.196	0.459
5041	0.078	0.033	0.19	0.189	0.509
5043	0.063	0.049	0.207	0.159	0.523
5045	0.066	0.027	0.077	0.403	0.426
5047	0.149	0.079	0.245	0.187	0.34
5049	0.105	0.121	0.226	0.197	0.351
5051	0.025	0.102	0.068	0.21	0.596
5053	0.082	0.043	0.127	0.258	0.489
5055	0.062	0.141	0.154	0.346	0.297
5057	0.098	0.073	0.096	0.179	0.554
5059	0.059	0.086	0.079	0.216	0.56
5061	0.081	0.07	0.145	0.145	0.56
5063	0.137	0.156	0.088	0.179	0.44
5065	0.086	0.121	0.133	0.23	0.43
5067	0.116	0.103	0.135	0.179	0.468
5069	0.042	0.036	0.172	0.173	0.577
5071	0.144	0.103	0.205	0.221	0.328
5073	0.12	0.082	0.078	0.234	0.486
5075	0.085	0.128	0.153	0.298	0.337
5077	0.103	0.032	0.195	0.263	0.407
5079	0.035	0.016	0.194	0.201	0.554
5081	0.074	0.121	0.106	0.201	0.499
5083	0.148	0.11	0.12	0.143	0.479
5085	0.048	0.045	0.136	0.297	0.474
5087	0.075	0.088	0.159	0.114	0.564
5089	0.171	0.112	0.119	0.108	0.49
5091	0.064	0.124	0.106	0.219	0.487
5093	0.033	0.109	0.134	0.284	0.44
5095	0.068	0.128	0.127	0.271	0.406
5097	0.081	0.095	0.136	0.166	0.521
5099	0.143	0.048	0.084	0.224	0.501
5101	0.107	0.14	0.084	0.261	0.408
5103	0.151	0.097	0.06	0.242	0.449
5105	0.098	0.051	0.08	0.367	0.404
5107	0.052	0.061	0.134	0.276	0.477
5109	0.064	0.061	0.2	0.176	0.501
5111	0.077	0.098	0.141	0.287	0.397
5113	0.18	0.08	0.217	0.076	0.446
5115	0.082	0.151	0.181	0.285	0.302
5117	0.062	0.17	0.103	0.273	0.391
5119	0.028	0.027	0.126	0.175	0.644
5121	0.051	0.145	0.203	0.289	0.311
5123	0.087	0.007	0.289	0.267	0.35
5125	0.066	0.044	0.154	0.212	0.524
5127	0.155	0.14	0.124	0.123	0.458
5129	0.1	0.088	0.125	0.149	0.538
5131	0.121	0.142	0.157	0.208	0.372
5133	0.12	0.093	0.155	0.165	0.467
5135	0.067	0.158	0.22	0.222	0.333
5137	0.067	0.092	0.11	0.234	0.498
5139	0.116	0.179	0.098	0.262	0.344
5141	0.033	0.06	0.096	0.272	0.539
5143	0.034	0.028	0.101	0.186	0.651
5145	0.026	0.054	0.152	0.277	0.491
5147	0.059	0.048	0.208	0.231	0.454
5149	0.116	0.1	0.112	0.198	0.474
6001	0.019	0.008	0.055	0.123	0.795
6003	0.025	0.085	0.088	0.19	0.612
6005	0.045	0.013	0.099	0.188	0.655
6007	0.015	0.043	0.111	0.204	0.626
6009	0.045	0.019	0.098	0.276	0.562
6011	0.027	0.031	0.092	0.151	0.7
6013	0.018	0.016	0.039	0.121	0.806
6015	0.01	0.135	0.112	0.196	0.547
6017	0.028	0.042	0.072	0.183	0.675
6019	0.021	0.022	0.059	0.156	0.741
6021	0.028	0.026	0.146	0.206	0.594
6023	0.042	0.006	0.018	0.069	0.865
6025	0.001	0.005	0.03	0.128	0.836
6027	0.033	0.011	0.008	0.058	0.889
6029	0.022	0.028	0.105	0.177	0.668
6031	0.075	0.016	0.049	0.094	0.766
6033	0.003	0.004	0.007	0.136	0.849
6035	0.064	0.068	0.162	0.225	0.482
6037	0.021	0.013	0.049	0.131	0.786
6039	0.019	0.059	0.048	0.124	0.751
6041	0.011	0	0.046	0.141	0.802
6043	0.01	0.094	0.049	0.186	0.661
6045	0.002	0.003	0.004	0.222	0.77
6047	0.026	0.036	0.089	0.146	0.703
6049	0.068	0.019	0.095	0.204	0.615
6051	0.011	0.026	0.012	0.07	0.88
6053	0.023	0.006	0.066	0.141	0.763
6055	0.017	0.026	0.033	0.149	0.773
6057	0.003	0.054	0.084	0.177	0.682
6059	0.023	0.021	0.046	0.156	0.754
6061	0.012	0.023	0.072	0.201	0.693
6063	0.063	0.067	0.053	0.146	0.671
6065	0.026	0.014	0.041	0.116	0.803
6067	0.025	0.028	0.062	0.164	0.722
6069	0.018	0.004	0.063	0.175	0.739
6071	0.027	0.022	0.048	0.134	0.768
6073	0.017	0.023	0.034	0.126	0.8
6075	0.017	0.011	0.035	0.121	0.817
6077	0.054	0.019	0.081	0.165	0.68
6079	0.025	0.024	0.037	0.169	0.745
6081	0.016	0.013	0.058	0.126	0.786
6083	0.015	0.02	0.075	0.153	0.737
6085	0.015	0.014	0.04	0.168	0.764
6087	0.008	0	0.086	0.109	0.797
6089	0.095	0.056	0.071	0.232	0.547
6091	0.14	0.053	0.047	0.143	0.617
6093	0.132	0.074	0.082	0.167	0.546
6095	0.043	0.046	0.035	0.148	0.728
6097	0.022	0.012	0.022	0.149	0.795
6099	0.032	0.028	0.062	0.173	0.705
6101	0.058	0.031	0.08	0.163	0.669
6103	0.057	0.062	0.141	0.195	0.545
6105	0.081	0.07	0.055	0.201	0.592
6107	0.025	0.039	0.115	0.136	0.685
6109	0.008	0.043	0.084	0.212	0.653
6111	0.024	0.011	0.033	0.156	0.777
6113	0.007	0.005	0.04	0.156	0.791
6115	0.057	0.035	0.071	0.167	0.669
8001	0.032	0.027	0.071	0.185	0.685
8003	0.052	0.133	0.094	0.228	0.493
8005	0.013	0.026	0.065	0.193	0.703
8007	0.041	0.041	0.155	0.276	0.488
8009	0.113	0.053	0.194	0.206	0.435
8011	0.033	0.036	0.172	0.191	0.567
8013	0.008	0.015	0.032	0.195	0.75
8014	0.018	0.005	0.042	0.201	0.734
8015	0.038	0.045	0.134	0.138	0.645
8017	0.016	0.187	0.106	0.398	0.292
8019	0.002	0.015	0.138	0.123	0.723
8021	0.06	0.106	0.093	0.195	0.545
8023	0.034	0.072	0.076	0.175	0.644
8025	0.002	0.034	0.08	0.294	0.59
8027	0.017	0.098	0.153	0.234	0.498
8029	0.087	0.094	0.074	0.295	0.45
8031	0.02	0.018	0.062	0.194	0.707
8033	0.052	0.039	0.066	0.252	0.591
8035	0.013	0.041	0.081	0.192	0.673
8037	0.008	0.003	0.033	0.269	0.687
8039	0.016	0.044	0.19	0.246	0.505
8041	0.031	0.089	0.081	0.196	0.603
8043	0.006	0.069	0.062	0.2	0.663
8045	0.065	0.04	0.037	0.326	0.532
8047	0.001	0.027	0.017	0.17	0.785
8049	0.006	0.002	0.05	0.187	0.754
8051	0.057	0.039	0.043	0.281	0.581
8053	0.043	0.05	0.117	0.271	0.519
8055	0.028	0.051	0.051	0.275	0.595
8057	0.021	0.027	0.09	0.342	0.52
8059	0.028	0.031	0.075	0.194	0.673
8061	0.028	0.051	0.159	0.27	0.492
8063	0.024	0.323	0.119	0.344	0.19
8065	0.002	0.016	0.036	0.193	0.753
8067	0.043	0.02	0.122	0.274	0.541
8069	0.013	0.037	0.06	0.231	0.659
8071	0.052	0.03	0.101	0.17	0.648
8073	0.013	0.068	0.196	0.403	0.321
8075	0.078	0.202	0.101	0.368	0.251
8077	0.075	0.105	0.098	0.222	0.499
8079	0.049	0.072	0.138	0.264	0.478
8081	0.041	0.142	0.162	0.284	0.371
8083	0.057	0.019	0.081	0.257	0.586
8085	0.085	0.092	0.074	0.314	0.436
8087	0.083	0.161	0.116	0.245	0.396
8089	0.004	0.047	0.102	0.194	0.653
8091	0.06	0.08	0.069	0.295	0.495
8093	0.021	0.018	0.103	0.137	0.722
8095	0.05	0.19	0.137	0.255	0.368
8097	0.019	0.014	0.016	0.318	0.633
8099	0.079	0.046	0.205	0.201	0.469
8101	0.018	0.044	0.074	0.28	0.584
8103	0.111	0.092	0.074	0.265	0.458
8105	0.061	0.144	0.11	0.242	0.444
8107	0.008	0.036	0.092	0.375	0.489
8109	0.065	0.122	0.138	0.232	0.443
8111	0.032	0.038	0.097	0.27	0.563
8113	0.043	0.058	0.074	0.26	0.565
8115	0.065	0.162	0.138	0.267	0.368
8117	0	0.001	0.064	0.151	0.784
8119	0.105	0.087	0.066	0.145	0.597
8121	0.077	0.208	0.101	0.303	0.31
8123	0.046	0.038	0.135	0.231	0.55
8125	0.038	0.284	0.133	0.255	0.29
9001	0.027	0.019	0.06	0.114	0.78
9003	0.015	0.023	0.065	0.13	0.767
9005	0.017	0.051	0.021	0.098	0.812
9007	0.003	0.007	0.055	0.128	0.807
9009	0.023	0.014	0.053	0.115	0.795
9011	0.025	0.021	0.066	0.142	0.747
9013	0.008	0.008	0.027	0.147	0.81
9015	0.022	0.041	0.082	0.137	0.718
10001	0.026	0.006	0.106	0.051	0.811
10003	0.027	0.013	0.041	0.133	0.786
10005	0.005	0.001	0.035	0.103	0.856
11001	0.012	0.013	0.069	0.164	0.743
12001	0.001	0.024	0.053	0.17	0.751
12003	0.087	0.076	0.18	0.215	0.442
12005	0.065	0.109	0.076	0.202	0.548
12007	0.106	0.168	0.172	0.173	0.381
12009	0.068	0.073	0.096	0.157	0.607
12011	0.026	0.023	0.043	0.117	0.791
12013	0.034	0.055	0.138	0.267	0.507
12015	0.051	0.049	0.101	0.158	0.64
12017	0.09	0.036	0.087	0.178	0.609
12019	0.055	0.067	0.15	0.209	0.52
12021	0.04	0.023	0.067	0.212	0.658
12023	0.047	0.026	0.288	0.254	0.385
12027	0.023	0.064	0.056	0.142	0.715
12029	0.071	0.095	0.119	0.318	0.397
12031	0.049	0.042	0.086	0.194	0.629
12033	0.019	0.052	0.095	0.31	0.524
12035	0.079	0.05	0.113	0.157	0.602
12037	0.022	0.101	0.237	0.228	0.412
12039	0.06	0.033	0.104	0.227	0.575
12041	0.016	0.151	0.069	0.324	0.44
12043	0.047	0.082	0.098	0.096	0.677
12045	0.046	0.125	0.12	0.249	0.46
12047	0.101	0.071	0.235	0.227	0.365
12049	0.114	0.041	0.179	0.186	0.48
12051	0.046	0.042	0.112	0.15	0.65
12053	0.09	0.04	0.091	0.19	0.589
12055	0.025	0.056	0.145	0.138	0.635
12057	0.023	0.031	0.069	0.155	0.722
12059	0.17	0.077	0.081	0.111	0.562
12061	0.054	0.065	0.082	0.193	0.607
12063	0.064	0.108	0.129	0.174	0.526
12065	0.019	0.017	0.099	0.183	0.682
12067	0.102	0.081	0.22	0.208	0.389
12069	0.047	0.062	0.074	0.185	0.632
12071	0.052	0.05	0.073	0.176	0.648
12073	0.051	0.022	0.071	0.156	0.7
12075	0.017	0.132	0.072	0.187	0.592
12077	0.022	0.023	0.205	0.268	0.482
12079	0.164	0.085	0.148	0.264	0.34
12081	0.074	0.037	0.062	0.201	0.626
12083	0.046	0.087	0.121	0.203	0.543
12085	0.027	0.018	0.066	0.169	0.719
12086	0.032	0.023	0.06	0.128	0.756
12087	0.007	0.001	0.014	0.159	0.819
12089	0.09	0.07	0.147	0.223	0.47
12091	0.091	0.083	0.147	0.21	0.469
12093	0.016	0.034	0.064	0.171	0.715
12095	0.02	0.02	0.072	0.164	0.724
12097	0.025	0.022	0.058	0.176	0.72
12099	0.03	0.02	0.05	0.116	0.784
12101	0.027	0.029	0.055	0.179	0.709
12103	0.025	0.019	0.074	0.133	0.75
12105	0.05	0.063	0.085	0.172	0.63
12107	0.068	0.05	0.114	0.186	0.581
12109	0.047	0.071	0.097	0.223	0.561
12111	0.077	0.022	0.08	0.173	0.648
12113	0.047	0.068	0.166	0.265	0.453
12115	0.017	0.031	0.073	0.175	0.704
12117	0.037	0.039	0.066	0.141	0.717
12119	0.037	0.036	0.064	0.235	0.628
12121	0.105	0.055	0.244	0.227	0.369
12123	0.103	0.086	0.19	0.145	0.476
12125	0.044	0.04	0.176	0.267	0.473
12127	0.035	0.066	0.089	0.192	0.618
12129	0.032	0.092	0.172	0.275	0.429
12131	0.092	0.06	0.092	0.244	0.512
12133	0.138	0.085	0.062	0.158	0.557
13001	0.085	0.117	0.23	0.152	0.416
13003	0.059	0.1	0.179	0.217	0.445
13005	0.071	0.132	0.187	0.188	0.421
13007	0.027	0.048	0.054	0.127	0.743
13009	0.02	0.089	0.107	0.29	0.494
13011	0.136	0.103	0.125	0.238	0.399
13013	0.063	0.086	0.092	0.19	0.568
13015	0.215	0.05	0.123	0.143	0.47
13017	0.129	0.078	0.109	0.202	0.483
13019	0.073	0.098	0.156	0.214	0.46
13021	0.043	0.094	0.176	0.201	0.487
13023	0.089	0.031	0.117	0.256	0.508
13025	0.047	0.129	0.15	0.164	0.51
13027	0.092	0.165	0.124	0.235	0.385
13029	0.033	0.039	0.095	0.238	0.595
13031	0.053	0.049	0.163	0.31	0.424
13033	0.105	0.109	0.087	0.208	0.492
13035	0.125	0.037	0.144	0.163	0.53
13037	0.013	0.035	0.043	0.172	0.737
13039	0.136	0.125	0.17	0.113	0.456
13043	0.037	0.045	0.177	0.264	0.477
13045	0.089	0.133	0.154	0.168	0.457
13047	0.143	0.152	0.114	0.217	0.375
13049	0.065	0.094	0.15	0.196	0.495
13051	0.035	0.04	0.144	0.158	0.624
13053	0.061	0.072	0.108	0.214	0.545
13055	0.116	0.102	0.187	0.143	0.451
13057	0.049	0.054	0.1	0.213	0.584
13059	0.054	0.057	0.06	0.226	0.603
13061	0.028	0.066	0.12	0.223	0.562
13063	0.038	0.054	0.125	0.159	0.624
13065	0.06	0.058	0.134	0.168	0.58
13067	0.039	0.049	0.116	0.225	0.572
13069	0.085	0.124	0.164	0.222	0.404
13071	0.108	0.191	0.074	0.233	0.394
13073	0.061	0.064	0.095	0.234	0.547
13075	0.098	0.134	0.123	0.203	0.441
13077	0.105	0.053	0.183	0.204	0.455
13079	0.057	0.051	0.231	0.192	0.468
13081	0.119	0.023	0.06	0.163	0.635
13083	0.128	0.222	0.13	0.249	0.27
13085	0.049	0.09	0.128	0.162	0.571
13087	0.093	0.04	0.171	0.18	0.516
13089	0.036	0.028	0.075	0.156	0.704
13091	0.145	0.025	0.15	0.236	0.443
13093	0.077	0.034	0.058	0.204	0.627
13095	0.033	0.037	0.045	0.159	0.726
13097	0.083	0.037	0.09	0.198	0.591
13099	0.045	0.062	0.156	0.253	0.485
13101	0.097	0.073	0.182	0.202	0.446
13103	0.044	0.064	0.145	0.272	0.475
13105	0.132	0.177	0.081	0.107	0.503
13107	0.062	0.044	0.142	0.252	0.5
13109	0.03	0.078	0.229	0.29	0.372
13111	0.075	0.088	0.125	0.112	0.6
13113	0.06	0.086	0.131	0.218	0.505
13115	0.186	0.036	0.234	0.148	0.395
13117	0.035	0.048	0.083	0.193	0.641
13119	0.168	0.074	0.117	0.215	0.425
13121	0.026	0.036	0.089	0.187	0.662
13123	0.128	0.042	0.087	0.198	0.545
13125	0.156	0.066	0.107	0.13	0.541
13127	0.048	0.071	0.145	0.251	0.485
13129	0.172	0.1	0.201	0.157	0.369
13131	0.063	0.139	0.116	0.264	0.417
13133	0.062	0.046	0.057	0.176	0.658
13135	0.036	0.054	0.081	0.19	0.639
13137	0.063	0.1	0.116	0.292	0.43
13139	0.061	0.069	0.128	0.198	0.545
13141	0.043	0.111	0.102	0.168	0.575
13143	0.184	0.123	0.165	0.184	0.345
13145	0.093	0.081	0.061	0.213	0.551
13147	0.092	0.061	0.14	0.207	0.5
13149	0.126	0.094	0.166	0.144	0.471
13151	0.103	0.048	0.091	0.181	0.578
13153	0.032	0.079	0.136	0.172	0.581
13155	0.098	0.091	0.126	0.224	0.46
13157	0.125	0.085	0.117	0.24	0.434
13159	0.082	0.059	0.181	0.118	0.56
13161	0.124	0.138	0.165	0.183	0.39
13163	0.251	0.055	0.099	0.102	0.493
13165	0.114	0.053	0.084	0.261	0.488
13167	0.119	0.053	0.109	0.251	0.468
13169	0.049	0.087	0.226	0.209	0.43
13171	0.07	0.06	0.171	0.293	0.406
13173	0.102	0.07	0.145	0.181	0.502
13175	0.122	0.056	0.141	0.291	0.391
13177	0.035	0.033	0.039	0.162	0.732
13179	0.007	0.099	0.066	0.215	0.614
13181	0.073	0.104	0.111	0.233	0.479
13183	0.014	0.119	0.086	0.159	0.621
13185	0.108	0.101	0.149	0.208	0.435
13187	0.035	0.086	0.13	0.245	0.504
13189	0.072	0.053	0.123	0.265	0.488
13191	0.034	0.076	0.188	0.221	0.481
13193	0.078	0.049	0.113	0.21	0.55
13195	0.165	0.084	0.055	0.186	0.511
13197	0.084	0.12	0.167	0.196	0.433
13199	0.109	0.086	0.138	0.15	0.517
13201	0.064	0.056	0.182	0.159	0.539
13205	0.044	0.112	0.055	0.159	0.63
13207	0.072	0.035	0.184	0.253	0.455
13209	0.114	0.083	0.174	0.228	0.401
13211	0.061	0.064	0.093	0.168	0.614
13213	0.193	0.03	0.182	0.177	0.417
13215	0.063	0.073	0.083	0.225	0.555
13217	0.094	0.076	0.123	0.207	0.5
13219	0.049	0.063	0.095	0.181	0.611
13221	0.056	0.082	0.054	0.181	0.627
13223	0.097	0.068	0.108	0.233	0.494
13225	0.027	0.074	0.172	0.16	0.567
13227	0.038	0.118	0.101	0.188	0.555
13229	0.05	0.143	0.127	0.157	0.522
13231	0.059	0.06	0.147	0.192	0.542
13233	0.106	0.071	0.192	0.145	0.485
13235	0.079	0.031	0.098	0.218	0.575
13237	0.059	0.093	0.118	0.214	0.516
13239	0.053	0.15	0.095	0.163	0.538
13241	0.1	0.083	0.124	0.229	0.464
13243	0.016	0.065	0.05	0.2	0.669
13245	0.068	0.059	0.114	0.18	0.578
13247	0.058	0.078	0.115	0.216	0.534
13249	0.07	0.102	0.117	0.214	0.497
13251	0.198	0.069	0.081	0.242	0.41
13253	0.073	0.079	0.202	0.135	0.51
13255	0.072	0.038	0.179	0.202	0.509
13257	0.087	0.116	0.116	0.31	0.37
13259	0.055	0.092	0.133	0.203	0.517
13261	0.055	0.056	0.046	0.202	0.641
13263	0.168	0.08	0.089	0.171	0.492
13265	0.065	0.048	0.086	0.158	0.644
13267	0.051	0.076	0.214	0.224	0.434
13269	0.126	0.069	0.182	0.201	0.422
13271	0.156	0.075	0.134	0.208	0.427
13273	0.019	0.029	0.03	0.167	0.755
13275	0.026	0.096	0.12	0.228	0.53
13277	0.066	0.088	0.122	0.227	0.496
13279	0.097	0.069	0.179	0.226	0.429
13281	0.076	0.096	0.098	0.199	0.531
13283	0.096	0.07	0.168	0.267	0.399
13285	0.175	0.031	0.119	0.178	0.497
13287	0.141	0.042	0.094	0.175	0.547
13289	0.04	0.077	0.188	0.148	0.547
13291	0.065	0.119	0.087	0.168	0.56
13293	0.16	0.1	0.114	0.206	0.421
13295	0.144	0.164	0.117	0.21	0.366
13297	0.106	0.127	0.184	0.141	0.442
13299	0.061	0.108	0.109	0.166	0.556
13301	0.095	0.065	0.14	0.226	0.474
13303	0.104	0.07	0.053	0.157	0.617
13305	0.029	0.139	0.143	0.139	0.55
13307	0.019	0.064	0.103	0.21	0.603
13309	0.135	0.078	0.162	0.23	0.395
13311	0.057	0.064	0.099	0.347	0.433
13313	0.185	0.068	0.203	0.142	0.403
13315	0.173	0.017	0.083	0.157	0.569
13317	0.08	0.086	0.114	0.172	0.548
13319	0.039	0.062	0.141	0.224	0.534
13321	0.069	0.056	0.083	0.187	0.605
15001	0.01	0.032	0.037	0.122	0.799
15003	0.011	0.012	0.027	0.151	0.798
15005	0.026	0.013	0.032	0.08	0.85
15007	0	0.021	0.046	0.108	0.825
15009	0.034	0.016	0.025	0.122	0.803
16001	0.118	0.078	0.084	0.194	0.526
16003	0.094	0.216	0.218	0.218	0.254
16005	0.084	0.193	0.176	0.195	0.352
16007	0.151	0.12	0.102	0.243	0.385
16009	0.038	0.059	0.15	0.152	0.601
16011	0.095	0.197	0.175	0.229	0.304
16013	0.155	0.107	0.102	0.13	0.506
16015	0.057	0.038	0.038	0.549	0.318
16017	0.088	0.116	0.119	0.241	0.436
16019	0.096	0.202	0.188	0.247	0.268
16021	0.045	0.171	0.061	0.185	0.537
16023	0.107	0.213	0.159	0.222	0.298
16025	0.186	0.03	0.047	0.098	0.639
16027	0.113	0.095	0.17	0.24	0.381
16029	0.1	0.181	0.191	0.202	0.326
16031	0.134	0.223	0.102	0.149	0.392
16033	0.119	0.228	0.196	0.239	0.218
16035	0.037	0.112	0.127	0.25	0.475
16037	0.069	0.029	0.199	0.244	0.458
16039	0.206	0.044	0.038	0.173	0.539
16041	0.131	0.118	0.085	0.256	0.41
16043	0.111	0.206	0.202	0.247	0.233
16045	0.119	0.136	0.111	0.198	0.436
16047	0.211	0.202	0.089	0.153	0.345
16049	0.045	0.094	0.164	0.275	0.423
16051	0.099	0.208	0.192	0.249	0.252
16053	0.175	0.219	0.096	0.167	0.343
16055	0.146	0.105	0.17	0.22	0.359
16057	0.002	0.012	0.066	0.328	0.592
16059	0.109	0.173	0.231	0.125	0.362
16061	0.027	0.073	0.157	0.285	0.459
16063	0.18	0.2	0.105	0.135	0.379
16065	0.101	0.207	0.196	0.25	0.245
16067	0.134	0.219	0.106	0.152	0.39
16069	0.009	0.03	0.117	0.326	0.517
16071	0.083	0.173	0.153	0.185	0.406
16073	0.123	0.137	0.146	0.171	0.423
16075	0.081	0.199	0.174	0.242	0.304
16077	0.078	0.205	0.152	0.185	0.381
16079	0.068	0.144	0.299	0.147	0.342
16081	0.099	0.189	0.19	0.25	0.272
16083	0.166	0.222	0.101	0.177	0.335
16085	0.041	0.118	0.102	0.378	0.361
16087	0.136	0.13	0.324	0.172	0.239
17001	0.18	0.092	0.189	0.19	0.35
17003	0.11	0.082	0.148	0.262	0.398
17005	0.07	0.055	0.108	0.218	0.549
17007	0.025	0.006	0.065	0.244	0.66
17009	0.18	0.099	0.136	0.2	0.385
17011	0.012	0.019	0.156	0.208	0.605
17013	0.082	0.06	0.219	0.366	0.273
17015	0.03	0.064	0.12	0.19	0.596
17017	0.103	0.08	0.19	0.187	0.441
17019	0	0.067	0.08	0.192	0.661
17021	0.059	0.057	0.091	0.19	0.603
17023	0.127	0.089	0.107	0.226	0.451
17025	0.062	0.115	0.145	0.306	0.372
17027	0.102	0.063	0.083	0.166	0.587
17029	0.112	0.055	0.201	0.221	0.411
17031	0.023	0.021	0.072	0.162	0.722
17033	0.146	0.196	0.047	0.219	0.392
17035	0.095	0.075	0.194	0.212	0.424
17037	0.007	0.012	0.034	0.191	0.756
17039	0.035	0.106	0.073	0.28	0.507
17041	0.048	0.061	0.105	0.191	0.594
17043	0.01	0.01	0.056	0.163	0.76
17045	0.174	0.09	0.131	0.208	0.398
17047	0.086	0.148	0.233	0.306	0.228
17049	0.072	0.072	0.214	0.232	0.41
17051	0.069	0.076	0.156	0.229	0.47
17053	0.011	0.082	0.167	0.172	0.567
17055	0.099	0.166	0.119	0.211	0.405
17057	0.016	0.03	0.311	0.199	0.444
17059	0.201	0.06	0.128	0.238	0.373
17061	0.136	0.029	0.109	0.217	0.508
17063	0.056	0.056	0.105	0.183	0.599
17065	0.138	0.179	0.1	0.21	0.373
17067	0.147	0.154	0.125	0.163	0.411
17069	0.163	0.072	0.235	0.191	0.34
17071	0.096	0.044	0.101	0.155	0.604
17073	0.067	0.072	0.061	0.203	0.597
17075	0.097	0.168	0.069	0.242	0.424
17077	0.066	0.078	0.151	0.209	0.496
17079	0.099	0.135	0.131	0.254	0.38
17081	0.122	0.126	0.08	0.279	0.393
17083	0.074	0.079	0.124	0.185	0.537
17085	0.034	0.104	0.22	0.178	0.465
17087	0.124	0.05	0.189	0.141	0.496
17089	0.013	0.026	0.048	0.165	0.748
17091	0.044	0.084	0.096	0.249	0.527
17093	0.001	0.009	0.065	0.136	0.788
17095	0.035	0.031	0.194	0.246	0.494
17097	0.02	0.018	0.046	0.146	0.769
17099	0.018	0.046	0.113	0.267	0.556
17101	0.197	0.157	0.105	0.281	0.26
17103	0.013	0.054	0.058	0.224	0.65
17105	0.03	0.147	0.08	0.234	0.51
17107	0.046	0.045	0.23	0.128	0.551
17109	0.041	0.091	0.097	0.182	0.59
17111	0.03	0.012	0.066	0.176	0.716
17113	0.085	0.062	0.091	0.201	0.561
17115	0.016	0.062	0.088	0.286	0.549
17117	0.015	0.05	0.147	0.227	0.561
17119	0.035	0.045	0.083	0.189	0.648
17121	0.1	0.093	0.101	0.302	0.404
17123	0.048	0.083	0.133	0.198	0.538
17125	0.238	0.031	0.292	0.126	0.313
17127	0.097	0.043	0.232	0.256	0.373
17129	0.102	0.047	0.138	0.172	0.54
17131	0.039	0.066	0.11	0.215	0.571
17133	0.003	0.04	0.112	0.174	0.67
17135	0.018	0.05	0.091	0.316	0.525
17137	0.05	0.062	0.177	0.178	0.533
17139	0.081	0.073	0.213	0.243	0.39
17141	0.053	0.045	0.129	0.184	0.589
17143	0.039	0.036	0.096	0.251	0.577
17145	0.055	0.092	0.104	0.358	0.392
17147	0.003	0.052	0.06	0.198	0.688
17149	0.138	0.079	0.218	0.205	0.36
17151	0.104	0.054	0.213	0.214	0.415
17153	0.117	0.064	0.189	0.225	0.405
17155	0.021	0.025	0.168	0.251	0.535
17157	0.008	0.032	0.117	0.391	0.452
17159	0.111	0.151	0.107	0.3	0.331
17161	0.078	0.025	0.066	0.235	0.596
17163	0.032	0.027	0.037	0.138	0.767
17165	0.117	0.106	0.111	0.204	0.462
17167	0.017	0.03	0.155	0.233	0.564
17169	0.132	0.1	0.152	0.198	0.417
17171	0.113	0.057	0.148	0.162	0.52
17173	0.07	0.047	0.168	0.245	0.469
17175	0.013	0.101	0.058	0.155	0.672
17177	0.036	0.059	0.041	0.222	0.644
17179	0.044	0.04	0.141	0.215	0.56
17181	0.1	0.078	0.162	0.195	0.466
17183	0.023	0.119	0.088	0.266	0.504
17185	0.078	0.113	0.271	0.325	0.212
17187	0.042	0.02	0.141	0.276	0.522
17189	0.118	0.046	0.053	0.327	0.456
17191	0.086	0.142	0.128	0.3	0.345
17193	0.19	0.144	0.095	0.239	0.332
17195	0.025	0.066	0.042	0.218	0.649
17197	0.041	0.024	0.062	0.134	0.739
17199	0.095	0.122	0.136	0.183	0.464
17201	0.031	0.03	0.089	0.193	0.657
17203	0.062	0.067	0.112	0.242	0.517
18001	0.136	0.047	0.16	0.348	0.309
18003	0.07	0.14	0.099	0.228	0.464
18005	0.138	0.084	0.085	0.286	0.406
18007	0.082	0.126	0.112	0.183	0.496
18009	0.093	0.152	0.106	0.203	0.447
18011	0.052	0.085	0.142	0.308	0.413
18013	0.055	0.061	0.041	0.184	0.66
18015	0.059	0.104	0.17	0.22	0.447
18017	0.037	0.192	0.283	0.206	0.283
18019	0.068	0.06	0.141	0.228	0.501
18021	0.122	0.073	0.112	0.226	0.466
18023	0.088	0.033	0.132	0.285	0.462
18025	0.067	0.089	0.118	0.261	0.465
18027	0.049	0.061	0.13	0.214	0.546
18029	0.083	0.1	0.168	0.277	0.371
18031	0.175	0.083	0.101	0.204	0.437
18033	0.109	0.074	0.118	0.149	0.55
18035	0.095	0.109	0.124	0.197	0.475
18037	0.01	0.105	0.086	0.25	0.55
18039	0.03	0.097	0.094	0.252	0.528
18041	0.161	0.041	0.048	0.237	0.514
18043	0.053	0.086	0.154	0.233	0.474
18045	0.077	0.089	0.147	0.212	0.474
18047	0.07	0.082	0.104	0.199	0.545
18049	0.142	0.114	0.128	0.217	0.399
18051	0.09	0.1	0.204	0.255	0.351
18053	0.053	0.108	0.133	0.311	0.393
18055	0.099	0.027	0.081	0.235	0.558
18057	0.07	0.051	0.049	0.234	0.596
18059	0.068	0.04	0.166	0.306	0.42
18061	0.094	0.084	0.205	0.258	0.359
18063	0.054	0.052	0.113	0.257	0.523
18065	0.183	0.148	0.125	0.111	0.434
18067	0.008	0.083	0.183	0.301	0.426
18069	0.15	0.182	0.053	0.199	0.416
18071	0.097	0.098	0.105	0.388	0.312
18073	0.186	0.1	0.065	0.328	0.321
18075	0.141	0.139	0.157	0.235	0.328
18077	0.083	0.219	0.218	0.225	0.255
18079	0.095	0.105	0.172	0.308	0.319
18081	0.057	0.094	0.1	0.192	0.557
18083	0.158	0.125	0.121	0.259	0.338
18085	0.073	0.147	0.089	0.195	0.496
18087	0.059	0.082	0.171	0.236	0.452
18089	0.043	0.057	0.088	0.219	0.592
18091	0.084	0.075	0.168	0.206	0.466
18093	0.092	0.117	0.109	0.191	0.491
18095	0.062	0.084	0.15	0.145	0.559
18097	0.051	0.053	0.116	0.232	0.548
18099	0.12	0.103	0.159	0.229	0.389
18101	0.041	0.064	0.123	0.223	0.55
18103	0.054	0.125	0.253	0.226	0.343
18105	0.037	0.037	0.094	0.242	0.591
18107	0.07	0.116	0.168	0.156	0.49
18109	0.06	0.131	0.136	0.188	0.485
18111	0.102	0.153	0.092	0.338	0.316
18113	0.057	0.11	0.135	0.197	0.5
18115	0.06	0.078	0.18	0.223	0.459
18117	0.096	0.086	0.073	0.315	0.43
18119	0.094	0.038	0.087	0.282	0.5
18121	0.116	0.111	0.174	0.195	0.405
18123	0.01	0.109	0.087	0.252	0.542
18125	0.052	0.089	0.163	0.2	0.495
18127	0.05	0.1	0.108	0.231	0.512
18129	0.132	0.056	0.115	0.226	0.472
18131	0.135	0.219	0.171	0.253	0.223
18133	0.075	0.162	0.204	0.194	0.366
18135	0.128	0.13	0.228	0.179	0.336
18137	0.054	0.074	0.15	0.294	0.429
18139	0.133	0.118	0.063	0.279	0.408
18141	0.031	0.04	0.102	0.228	0.598
18143	0.036	0.073	0.168	0.263	0.46
18145	0.16	0.057	0.177	0.193	0.413
18147	0.017	0.134	0.104	0.216	0.529
18149	0.177	0.151	0.088	0.219	0.365
18151	0.04	0.089	0.17	0.169	0.532
18153	0.127	0.071	0.077	0.207	0.517
18155	0.089	0.125	0.209	0.234	0.344
18157	0.093	0.083	0.102	0.204	0.518
18159	0.033	0.082	0.089	0.444	0.352
18161	0.095	0.053	0.106	0.178	0.569
18163	0.07	0.039	0.115	0.234	0.542
18165	0.113	0.105	0.134	0.223	0.426
18167	0.118	0.064	0.102	0.25	0.466
18169	0.07	0.11	0.237	0.202	0.381
18171	0.079	0.115	0.092	0.223	0.492
18173	0.045	0.038	0.117	0.252	0.548
18175	0.097	0.074	0.062	0.356	0.411
18177	0.162	0.09	0.138	0.261	0.348
18179	0.205	0.05	0.077	0.337	0.332
18181	0.056	0.177	0.194	0.189	0.384
18183	0.061	0.186	0.132	0.16	0.46
19001	0.073	0.128	0.128	0.307	0.364
19003	0.148	0.11	0.15	0.311	0.281
19005	0.138	0.049	0.132	0.212	0.469
19007	0.044	0.11	0.239	0.193	0.413
19009	0.224	0.073	0.194	0.187	0.322
19011	0.098	0.067	0.13	0.2	0.504
19013	0.032	0.053	0.18	0.289	0.447
19015	0.09	0.08	0.1	0.197	0.533
19017	0.048	0.062	0.197	0.268	0.424
19019	0.021	0.124	0.087	0.394	0.373
19021	0.183	0.062	0.26	0.207	0.288
19023	0.052	0.094	0.208	0.23	0.417
19025	0.212	0.117	0.213	0.153	0.304
19027	0.153	0.11	0.241	0.139	0.358
19029	0.341	0.07	0.124	0.238	0.227
19031	0.026	0.096	0.142	0.355	0.381
19033	0.061	0.365	0.146	0.213	0.215
19035	0.183	0.105	0.221	0.182	0.309
19037	0.075	0.136	0.197	0.236	0.356
19039	0.078	0.167	0.143	0.194	0.418
19041	0.224	0.035	0.112	0.189	0.441
19043	0.123	0.084	0.137	0.284	0.371
19045	0.092	0.13	0.079	0.269	0.43
19047	0.089	0.045	0.141	0.064	0.66
19049	0.036	0.102	0.118	0.26	0.485
19051	0.038	0.101	0.249	0.201	0.411
19053	0.248	0.132	0.258	0.068	0.294
19055	0.035	0.137	0.137	0.408	0.283
19057	0.135	0.081	0.109	0.122	0.553
19059	0.276	0.027	0.091	0.173	0.433
19061	0.037	0.155	0.189	0.189	0.43
19063	0.241	0.083	0.067	0.181	0.428
19065	0.054	0.075	0.128	0.349	0.394
19067	0.063	0.271	0.148	0.25	0.268
19069	0.088	0.278	0.187	0.186	0.261
19071	0.048	0.061	0.071	0.209	0.611
19073	0.116	0.141	0.235	0.153	0.354
19075	0.038	0.042	0.203	0.238	0.48
19077	0.162	0.073	0.143	0.283	0.34
19079	0.143	0.118	0.129	0.153	0.457
19081	0.08	0.384	0.146	0.174	0.216
19083	0.074	0.075	0.195	0.214	0.441
19085	0.118	0.044	0.094	0.178	0.565
19087	0.123	0.142	0.091	0.183	0.461
19089	0.077	0.151	0.176	0.183	0.413
19091	0.243	0.268	0.147	0.102	0.24
19093	0.153	0.094	0.246	0.128	0.38
19095	0.027	0.149	0.135	0.239	0.45
19097	0.032	0.096	0.229	0.232	0.411
19099	0.102	0.105	0.233	0.212	0.347
19101	0.074	0.116	0.221	0.191	0.398
19103	0.014	0.044	0.069	0.2	0.673
19105	0.04	0.105	0.165	0.336	0.355
19107	0.035	0.126	0.287	0.28	0.272
19109	0.135	0.318	0.101	0.173	0.272
19111	0.17	0.146	0.131	0.161	0.392
19113	0.039	0.081	0.115	0.201	0.563
19115	0.097	0.058	0.15	0.214	0.482
19117	0.032	0.204	0.196	0.185	0.384
19119	0.078	0.173	0.157	0.247	0.344
19121	0.01	0.102	0.136	0.268	0.484
19123	0.069	0.067	0.294	0.283	0.287
19125	0.053	0.049	0.209	0.26	0.429
19127	0.077	0.064	0.153	0.226	0.48
19129	0.064	0.084	0.091	0.281	0.481
19131	0.046	0.282	0.149	0.26	0.263
19133	0.078	0.069	0.087	0.127	0.64
19135	0.034	0.078	0.256	0.247	0.385
19137	0.218	0.034	0.084	0.378	0.286
19139	0.12	0.022	0.221	0.273	0.364
19141	0.173	0.054	0.267	0.187	0.319
19143	0.195	0.051	0.233	0.199	0.322
19145	0.088	0.053	0.068	0.31	0.481
19147	0.199	0.116	0.088	0.179	0.419
19149	0.125	0.145	0.166	0.162	0.402
19151	0.214	0.124	0.162	0.165	0.335
19153	0.044	0.089	0.136	0.259	0.473
19155	0.115	0.083	0.147	0.264	0.39
19157	0.121	0.145	0.187	0.164	0.383
19159	0.144	0.138	0.281	0.162	0.275
19161	0.18	0.071	0.286	0.159	0.303
19163	0.075	0.027	0.126	0.277	0.494
19165	0.099	0.059	0.182	0.145	0.516
19167	0.12	0.06	0.285	0.2	0.335
19169	0.045	0.075	0.071	0.235	0.574
19171	0.066	0.053	0.209	0.181	0.491
19173	0.09	0.151	0.185	0.282	0.292
19175	0.03	0.125	0.172	0.21	0.462
19177	0.107	0.128	0.175	0.218	0.372
19179	0.034	0.082	0.293	0.221	0.37
19181	0.055	0.182	0.181	0.245	0.337
19183	0.035	0.102	0.123	0.151	0.589
19185	0.138	0.148	0.252	0.12	0.342
19187	0.209	0.167	0.161	0.101	0.362
19189	0.07	0.329	0.176	0.197	0.228
19191	0.122	0.044	0.151	0.177	0.505
19193	0.113	0.165	0.137	0.16	0.425
19195	0.072	0.271	0.175	0.231	0.251
19197	0.172	0.299	0.173	0.125	0.232
20001	0.153	0.212	0.126	0.167	0.341
20003	0.189	0.063	0.137	0.267	0.344
20005	0.137	0.122	0.169	0.256	0.316
20007	0.069	0.147	0.118	0.329	0.336
20009	0.107	0.131	0.12	0.211	0.43
20011	0.167	0.146	0.077	0.12	0.49
20013	0.089	0.149	0.183	0.197	0.382
20015	0.053	0.133	0.122	0.222	0.47
20017	0.151	0.082	0.212	0.225	0.331
20019	0.128	0.137	0.185	0.214	0.337
20021	0.131	0.121	0.164	0.174	0.41
20023	0.065	0.27	0.174	0.235	0.256
20025	0.163	0.13	0.126	0.232	0.348
20027	0.081	0.069	0.115	0.229	0.507
20029	0.154	0.077	0.118	0.217	0.434
20031	0.085	0.119	0.165	0.404	0.227
20033	0.112	0.144	0.128	0.271	0.346
20035	0.075	0.093	0.28	0.131	0.421
20037	0.108	0.143	0.118	0.139	0.492
20039	0.163	0.118	0.211	0.235	0.273
20041	0.106	0.118	0.148	0.243	0.385
20043	0.137	0.193	0.184	0.214	0.272
20045	0.006	0.009	0.024	0.227	0.734
20047	0.052	0.086	0.135	0.221	0.506
20049	0.061	0.05	0.295	0.282	0.312
20051	0.154	0.154	0.224	0.148	0.32
20053	0.174	0.133	0.133	0.187	0.373
20055	0.166	0.089	0.163	0.239	0.343
20057	0.143	0.084	0.143	0.232	0.399
20059	0.063	0.06	0.159	0.354	0.364
20061	0.05	0.068	0.113	0.27	0.499
20063	0.24	0.089	0.234	0.151	0.287
20065	0.218	0.156	0.247	0.129	0.25
20067	0.14	0.108	0.15	0.231	0.37
20069	0.158	0.092	0.146	0.24	0.364
20071	0.135	0.131	0.181	0.229	0.323
20073	0.034	0.079	0.256	0.302	0.33
20075	0.131	0.095	0.189	0.217	0.368
20077	0.079	0.118	0.21	0.193	0.4
20079	0.075	0.058	0.121	0.323	0.423
20081	0.153	0.107	0.137	0.239	0.364
20083	0.126	0.075	0.163	0.225	0.412
20085	0.01	0.116	0.161	0.136	0.577
20087	0.026	0.069	0.09	0.182	0.634
20089	0.171	0.142	0.087	0.259	0.34
20091	0.029	0.019	0.075	0.224	0.654
20093	0.155	0.098	0.172	0.229	0.346
20095	0.081	0.212	0.114	0.128	0.464
20097	0.062	0.107	0.128	0.233	0.469
20099	0.168	0.123	0.091	0.147	0.471
20101	0.197	0.075	0.197	0.204	0.326
20103	0.087	0.135	0.092	0.142	0.544
20105	0.171	0.132	0.16	0.163	0.375
20107	0.14	0.053	0.121	0.285	0.4
20109	0.206	0.131	0.194	0.189	0.28
20111	0.113	0.111	0.133	0.3	0.344
20113	0.12	0.065	0.106	0.313	0.396
20115	0.101	0.068	0.209	0.279	0.343
20117	0.048	0.049	0.233	0.263	0.407
20119	0.164	0.123	0.115	0.235	0.362
20121	0.071	0.044	0.095	0.25	0.54
20123	0.173	0.116	0.144	0.18	0.388
20125	0.164	0.132	0.102	0.195	0.407
20127	0.11	0.094	0.148	0.244	0.404
20129	0.12	0.113	0.144	0.218	0.405
20131	0.035	0.094	0.203	0.236	0.432
20133	0.133	0.204	0.12	0.127	0.416
20135	0.15	0.083	0.199	0.198	0.371
20137	0.161	0.163	0.177	0.225	0.275
20139	0.018	0.09	0.088	0.24	0.564
20141	0.174	0.233	0.163	0.136	0.293
20143	0.131	0.117	0.164	0.191	0.396
20145	0.053	0.096	0.137	0.217	0.497
20147	0.15	0.244	0.126	0.19	0.29
20149	0.012	0.057	0.145	0.236	0.55
20151	0.02	0.183	0.101	0.309	0.387
20153	0.128	0.174	0.209	0.22	0.268
20155	0.135	0.077	0.143	0.191	0.454
20157	0.183	0.073	0.076	0.295	0.373
20159	0.153	0.086	0.11	0.241	0.41
20161	0.03	0.05	0.124	0.261	0.535
20163	0.179	0.22	0.218	0.123	0.26
20165	0.11	0.122	0.182	0.183	0.403
20167	0.16	0.174	0.174	0.157	0.335
20169	0.126	0.133	0.175	0.209	0.357
20171	0.197	0.09	0.19	0.21	0.313
20173	0.06	0.055	0.126	0.26	0.499
20175	0.138	0.14	0.092	0.226	0.403
20177	0.009	0.078	0.095	0.184	0.633
20179	0.231	0.112	0.236	0.154	0.267
20181	0.1	0.27	0.159	0.24	0.231
20183	0.142	0.257	0.088	0.195	0.319
20185	0.041	0.125	0.109	0.252	0.472
20187	0.127	0.098	0.172	0.216	0.388
20189	0.122	0.132	0.112	0.225	0.408
20191	0.104	0.039	0.115	0.298	0.444
20193	0.188	0.157	0.208	0.184	0.263
20195	0.203	0.115	0.256	0.137	0.291
20197	0.011	0.077	0.12	0.201	0.591
20199	0.128	0.21	0.154	0.246	0.262
20201	0.148	0.075	0.111	0.234	0.432
20203	0.173	0.112	0.184	0.219	0.313
20205	0.125	0.148	0.145	0.184	0.398
20207	0.092	0.175	0.171	0.247	0.314
20209	0.025	0.056	0.076	0.178	0.665
21001	0.076	0.115	0.167	0.243	0.399
21003	0.101	0.072	0.097	0.211	0.519
21005	0.062	0.01	0.044	0.483	0.401
21007	0.107	0.033	0.198	0.257	0.404
21009	0.053	0.093	0.09	0.176	0.588
21011	0.076	0.058	0.084	0.339	0.443
21013	0.146	0.094	0.12	0.199	0.44
21015	0.08	0.087	0.081	0.232	0.52
21017	0.024	0.037	0.042	0.129	0.769
21019	0.084	0.125	0.202	0.235	0.354
21021	0.092	0.037	0.112	0.161	0.598
21023	0.056	0.249	0.065	0.238	0.392
21025	0.114	0.081	0.126	0.241	0.438
21027	0.023	0.146	0.177	0.138	0.517
21029	0.037	0.091	0.156	0.181	0.535
21031	0.066	0.097	0.133	0.17	0.535
21033	0.059	0.067	0.26	0.177	0.438
21035	0.066	0.084	0.248	0.17	0.432
21037	0.073	0.085	0.134	0.278	0.43
21039	0.104	0.045	0.188	0.236	0.428
21041	0.155	0.171	0.12	0.208	0.346
21043	0.069	0.102	0.122	0.324	0.383
21045	0.164	0.076	0.161	0.154	0.444
21047	0.06	0.118	0.178	0.279	0.365
21049	0.083	0.093	0.11	0.233	0.48
21051	0.153	0.082	0.165	0.16	0.44
21053	0.096	0.115	0.248	0.165	0.375
21055	0.121	0.117	0.29	0.153	0.319
21057	0.067	0.106	0.224	0.229	0.374
21059	0.055	0.057	0.122	0.236	0.531
21061	0.055	0.057	0.086	0.179	0.624
21063	0.117	0.1	0.051	0.289	0.443
21065	0.082	0.151	0.09	0.275	0.402
21067	0.031	0.051	0.066	0.202	0.65
21069	0.068	0.069	0.075	0.287	0.502
21071	0.131	0.066	0.129	0.134	0.54
21073	0.088	0.036	0.142	0.214	0.521
21075	0.1	0.102	0.202	0.217	0.38
21077	0.076	0.048	0.198	0.211	0.466
21079	0.077	0.043	0.063	0.276	0.54
21081	0.047	0.056	0.183	0.106	0.608
21083	0.103	0.069	0.266	0.222	0.34
21085	0.043	0.042	0.134	0.154	0.627
21087	0.063	0.076	0.127	0.247	0.488
21089	0.092	0.101	0.236	0.228	0.342
21091	0.019	0.08	0.121	0.235	0.546
21093	0.057	0.062	0.106	0.217	0.558
21095	0.076	0.093	0.098	0.126	0.606
21097	0.073	0.044	0.031	0.047	0.804
21099	0.053	0.034	0.118	0.185	0.61
21101	0.072	0.061	0.136	0.229	0.501
21103	0.093	0.082	0.174	0.254	0.398
21105	0.097	0.065	0.221	0.202	0.415
21107	0.04	0.067	0.174	0.217	0.502
21109	0.183	0.068	0.092	0.235	0.421
21111	0.036	0.048	0.083	0.23	0.602
21113	0.022	0.036	0.104	0.21	0.628
21115	0.102	0.053	0.106	0.127	0.612
21117	0.052	0.056	0.146	0.245	0.5
21119	0.157	0.073	0.13	0.142	0.497
21121	0.187	0.073	0.103	0.165	0.471
21123	0.074	0.053	0.09	0.213	0.57
21125	0.201	0.047	0.083	0.152	0.517
21127	0.155	0.091	0.151	0.125	0.479
21129	0.129	0.069	0.129	0.273	0.399
21131	0.094	0.103	0.142	0.174	0.487
21133	0.078	0.05	0.127	0.122	0.624
21135	0.057	0.081	0.21	0.296	0.357
21137	0.172	0.054	0.093	0.172	0.509
21139	0.08	0.1	0.29	0.191	0.339
21141	0.099	0.1	0.08	0.198	0.523
21143	0.052	0.11	0.316	0.138	0.384
21145	0.085	0.058	0.232	0.255	0.37
21147	0.096	0.116	0.143	0.203	0.441
21149	0.081	0.105	0.107	0.249	0.459
21151	0.088	0.094	0.114	0.233	0.471
21153	0.107	0.078	0.111	0.164	0.54
21155	0.046	0.082	0.074	0.144	0.654
21157	0.061	0.083	0.28	0.18	0.395
21159	0.108	0.055	0.096	0.104	0.637
21161	0.056	0.119	0.061	0.284	0.479
21163	0.018	0.154	0.115	0.154	0.559
21165	0.161	0.088	0.067	0.215	0.468
21167	0.047	0.012	0.178	0.195	0.567
21169	0.048	0.109	0.134	0.222	0.487
21171	0.082	0.134	0.185	0.15	0.448
21173	0.03	0.041	0.085	0.392	0.452
21175	0.133	0.116	0.071	0.182	0.498
21177	0.035	0.154	0.123	0.2	0.488
21179	0.033	0.106	0.068	0.244	0.548
21181	0.023	0.025	0.09	0.271	0.591
21183	0.064	0.145	0.109	0.19	0.492
21185	0.025	0.039	0.098	0.278	0.56
21187	0.091	0.039	0.114	0.198	0.558
21189	0.121	0.058	0.157	0.282	0.382
21191	0.035	0.121	0.103	0.129	0.613
21193	0.123	0.093	0.111	0.171	0.502
21195	0.096	0.088	0.123	0.148	0.545
21197	0.112	0.099	0.102	0.232	0.455
21199	0.13	0.123	0.096	0.164	0.487
21201	0.048	0.123	0.039	0.204	0.586
21203	0.215	0.079	0.075	0.157	0.474
21205	0.159	0.097	0.047	0.231	0.467
21207	0.096	0.138	0.195	0.206	0.365
21209	0.04	0.044	0.076	0.081	0.759
21211	0.092	0.107	0.054	0.261	0.487
21213	0.137	0.066	0.162	0.208	0.426
21215	0.032	0.058	0.047	0.41	0.453
21217	0.073	0.073	0.111	0.21	0.533
21219	0.058	0.147	0.135	0.266	0.394
21221	0.066	0.053	0.131	0.152	0.597
21223	0.134	0.172	0.135	0.217	0.342
21225	0.211	0.079	0.229	0.172	0.309
21227	0.076	0.067	0.063	0.185	0.609
21229	0.035	0.066	0.116	0.221	0.562
21231	0.102	0.151	0.16	0.169	0.417
21233	0.088	0.084	0.167	0.21	0.451
21235	0.176	0.062	0.113	0.174	0.476
21237	0.14	0.095	0.114	0.203	0.448
21239	0.042	0.017	0.049	0.193	0.698
22001	0.122	0.111	0.138	0.265	0.362
22003	0.196	0.07	0.118	0.2	0.416
22005	0.049	0.092	0.142	0.148	0.569
22007	0.079	0.034	0.213	0.206	0.468
22009	0.13	0.092	0.073	0.246	0.459
22011	0.086	0.069	0.169	0.191	0.486
22013	0.078	0.052	0.17	0.291	0.409
22015	0.068	0.096	0.144	0.225	0.468
22017	0.058	0.079	0.158	0.209	0.497
22019	0.102	0.139	0.077	0.212	0.471
22021	0.102	0.061	0.098	0.241	0.498
22023	0.089	0.127	0.079	0.201	0.505
22025	0.11	0.056	0.086	0.147	0.6
22027	0.146	0.068	0.04	0.273	0.473
22029	0.11	0.104	0.112	0.095	0.579
22031	0.035	0.075	0.132	0.162	0.596
22033	0.052	0.031	0.09	0.183	0.642
22035	0.022	0.046	0.121	0.137	0.674
22037	0.067	0.053	0.095	0.366	0.42
22039	0.215	0.077	0.111	0.211	0.387
22041	0.123	0.054	0.102	0.156	0.565
22043	0.086	0.041	0.109	0.229	0.535
22045	0.112	0.084	0.085	0.253	0.467
22047	0.061	0.021	0.084	0.19	0.644
22049	0.116	0.083	0.127	0.29	0.383
22051	0.044	0.031	0.066	0.174	0.685
22053	0.249	0.111	0.09	0.196	0.354
22055	0.062	0.083	0.105	0.217	0.533
22057	0.078	0.039	0.159	0.151	0.573
22059	0.082	0.035	0.089	0.223	0.571
22061	0.102	0.08	0.111	0.29	0.417
22063	0.06	0.043	0.144	0.29	0.463
22065	0.034	0.068	0.109	0.172	0.617
22067	0.039	0.105	0.124	0.166	0.566
22069	0.096	0.063	0.113	0.167	0.561
22071	0.019	0.034	0.087	0.206	0.654
22073	0.076	0.098	0.121	0.229	0.476
22075	0.065	0.035	0.165	0.222	0.513
22077	0.044	0.082	0.068	0.198	0.608
22079	0.106	0.046	0.087	0.236	0.524
22081	0.068	0.081	0.135	0.189	0.527
22083	0.066	0.08	0.126	0.194	0.534
22085	0.098	0.08	0.113	0.145	0.564
22087	0.035	0.075	0.136	0.23	0.524
22089	0.093	0.048	0.027	0.165	0.667
22091	0.064	0.126	0.138	0.237	0.434
22093	0.034	0.099	0.202	0.061	0.603
22095	0.096	0.059	0.19	0.079	0.577
22097	0.064	0.105	0.117	0.199	0.515
22099	0.069	0.11	0.096	0.178	0.548
22101	0.066	0.02	0.179	0.28	0.454
22103	0.031	0.073	0.074	0.211	0.611
22105	0.066	0.072	0.103	0.193	0.566
22107	0.081	0.064	0.097	0.134	0.625
22109	0.068	0.052	0.14	0.221	0.519
22111	0.071	0.142	0.106	0.244	0.436
22113	0.076	0.088	0.115	0.271	0.449
22115	0.092	0.066	0.145	0.244	0.453
22117	0.103	0.046	0.148	0.242	0.461
22119	0.134	0.044	0.063	0.265	0.494
22121	0.044	0.04	0.07	0.197	0.649
22123	0.022	0.063	0.124	0.114	0.677
22125	0.072	0.13	0.037	0.265	0.496
22127	0.086	0.106	0.13	0.236	0.443
23001	0.083	0.099	0.041	0.199	0.577
23003	0.143	0.047	0.12	0.243	0.447
23005	0.05	0.053	0.046	0.182	0.669
23007	0.006	0.063	0.191	0.161	0.579
23009	0.034	0.052	0.118	0.202	0.594
23011	0.016	0.074	0.125	0.245	0.54
23013	0.007	0.01	0.111	0.248	0.625
23015	0.031	0.014	0.065	0.204	0.688
23017	0.069	0.065	0.064	0.213	0.589
23019	0.038	0.071	0.085	0.189	0.617
23021	0.062	0.146	0.123	0.189	0.479
23023	0.061	0.026	0.033	0.216	0.664
23025	0.035	0.095	0.142	0.17	0.558
23027	0.023	0.06	0.15	0.182	0.585
23029	0.026	0.032	0.126	0.204	0.612
23031	0.076	0.036	0.061	0.173	0.655
24001	0.007	0.01	0.035	0.213	0.736
24003	0.018	0.022	0.067	0.154	0.739
24005	0.013	0.024	0.043	0.142	0.777
24009	0.049	0.049	0.071	0.11	0.72
24011	0.009	0.019	0.033	0.168	0.77
24013	0.014	0.008	0.062	0.17	0.746
24015	0.009	0.018	0.054	0.182	0.738
24017	0.035	0.034	0.107	0.157	0.667
24019	0.02	0.006	0.011	0.119	0.844
24021	0.028	0.036	0.062	0.113	0.762
24023	0.077	0.008	0.04	0.305	0.571
24025	0.008	0.009	0.037	0.168	0.778
24027	0.024	0.015	0.067	0.17	0.723
24029	0.005	0.014	0.06	0.207	0.714
24031	0.025	0.029	0.041	0.128	0.777
24033	0.087	0.034	0.064	0.094	0.72
24035	0.002	0.042	0.041	0.309	0.605
24037	0.04	0.009	0.036	0.152	0.763
24039	0.004	0.01	0.047	0.128	0.812
24041	0.012	0.012	0.006	0.127	0.843
24043	0.031	0.047	0.085	0.194	0.642
24045	0.006	0.011	0.063	0.116	0.804
24047	0.003	0.004	0.042	0.11	0.842
24510	0.024	0.032	0.063	0.148	0.733
25001	0.019	0.007	0.026	0.109	0.839
25003	0.03	0.004	0.049	0.082	0.834
25005	0.016	0.02	0.056	0.161	0.747
25007	0.006	0.01	0.037	0.16	0.786
25009	0.023	0.01	0.047	0.131	0.788
25011	0.043	0.011	0.028	0.156	0.762
25013	0.013	0.017	0.055	0.13	0.786
25015	0.011	0.006	0.017	0.109	0.857
25017	0.023	0.011	0.041	0.127	0.798
25019	0.015	0.003	0.034	0.156	0.792
25021	0.02	0.015	0.035	0.125	0.805
25023	0.014	0.017	0.045	0.112	0.812
25025	0.02	0.007	0.049	0.136	0.788
25027	0.02	0.027	0.043	0.142	0.768
26001	0.065	0.046	0.133	0.18	0.576
26003	0.025	0.034	0.118	0.229	0.595
26005	0.05	0.035	0.133	0.283	0.5
26007	0.025	0.04	0.144	0.18	0.612
26009	0.027	0.042	0.088	0.218	0.625
26011	0.052	0.136	0.076	0.252	0.484
26013	0.012	0.063	0.109	0.257	0.558
26015	0.043	0.121	0.121	0.211	0.504
26017	0.014	0.055	0.103	0.202	0.627
26019	0.01	0.049	0.062	0.164	0.715
26021	0.039	0.037	0.122	0.247	0.555
26023	0.072	0.091	0.205	0.234	0.399
26025	0.063	0.121	0.078	0.178	0.559
26027	0.046	0.076	0.123	0.274	0.48
26029	0.027	0.057	0.085	0.205	0.626
26031	0.027	0.052	0.086	0.252	0.584
26033	0.03	0.022	0.068	0.287	0.593
26035	0.05	0.026	0.102	0.308	0.514
26037	0.033	0.056	0.046	0.263	0.603
26039	0.043	0.05	0.061	0.181	0.666
26041	0.058	0.023	0.17	0.217	0.532
26043	0.043	0.065	0.127	0.249	0.516
26045	0.047	0.039	0.147	0.247	0.52
26047	0.025	0.062	0.075	0.219	0.618
26049	0.032	0.043	0.104	0.288	0.533
26051	0.025	0.024	0.109	0.338	0.503
26053	0.039	0.064	0.139	0.257	0.501
26055	0.004	0.041	0.082	0.2	0.672
26057	0.057	0.074	0.105	0.169	0.596
26059	0.135	0.075	0.119	0.247	0.424
26061	0.008	0.078	0.129	0.281	0.505
26063	0.08	0.072	0.032	0.271	0.544
26065	0.062	0.03	0.076	0.237	0.595
26067	0.035	0.203	0.139	0.229	0.394
26069	0.1	0.084	0.099	0.206	0.511
26071	0.046	0.068	0.126	0.227	0.533
26073	0.096	0.057	0.112	0.191	0.544
26075	0.11	0.08	0.133	0.166	0.511
26077	0.02	0.059	0.062	0.167	0.693
26079	0.018	0.037	0.07	0.228	0.646
26081	0.019	0.061	0.063	0.215	0.641
26083	0.006	0.071	0.129	0.277	0.518
26085	0.052	0.122	0.073	0.204	0.548
26087	0.036	0.105	0.104	0.133	0.622
26089	0.003	0.038	0.092	0.203	0.663
26091	0.018	0.027	0.083	0.26	0.612
26093	0.042	0.021	0.052	0.198	0.687
26095	0.028	0.03	0.088	0.237	0.617
26097	0.032	0.04	0.073	0.256	0.599
26099	0.034	0.043	0.09	0.145	0.688
26101	0.035	0.05	0.087	0.121	0.707
26103	0.016	0.045	0.11	0.251	0.578
26105	0.046	0.054	0.199	0.14	0.561
26107	0.091	0.104	0.087	0.243	0.475
26109	0.059	0.073	0.068	0.253	0.547
26111	0.031	0.03	0.098	0.214	0.626
26113	0.025	0.036	0.082	0.191	0.666
26115	0.066	0.035	0.054	0.183	0.663
26117	0.028	0.137	0.167	0.21	0.458
26119	0.044	0.071	0.126	0.186	0.574
26121	0.084	0.045	0.1	0.16	0.611
26123	0.099	0.121	0.027	0.3	0.454
26125	0.028	0.027	0.049	0.169	0.727
26127	0.074	0.033	0.114	0.163	0.616
26129	0.061	0.117	0.106	0.259	0.458
26131	0.025	0.086	0.123	0.265	0.501
26133	0.07	0.073	0.089	0.238	0.531
26135	0.057	0.073	0.096	0.181	0.593
26137	0.06	0.068	0.097	0.172	0.602
26139	0.042	0.057	0.12	0.251	0.531
26141	0.02	0.04	0.143	0.223	0.575
26143	0.012	0.037	0.097	0.217	0.637
26145	0.031	0.073	0.082	0.197	0.616
26147	0.051	0.069	0.046	0.194	0.64
26149	0.048	0.079	0.197	0.189	0.488
26151	0.078	0.112	0.077	0.21	0.522
26153	0.041	0.021	0.14	0.187	0.611
26155	0.116	0.046	0.065	0.297	0.475
26157	0.091	0.05	0.078	0.246	0.536
26159	0.025	0.068	0.137	0.183	0.587
26161	0.019	0.022	0.046	0.18	0.733
26163	0.046	0.032	0.075	0.156	0.69
26165	0.036	0.056	0.077	0.171	0.659
27001	0.187	0.115	0.075	0.247	0.375
27003	0.054	0.078	0.132	0.245	0.492
27005	0.052	0.28	0.175	0.24	0.252
27007	0.094	0.155	0.225	0.185	0.34
27009	0.084	0.139	0.209	0.147	0.42
27011	0.256	0.121	0.185	0.146	0.292
27013	0.065	0.078	0.146	0.276	0.435
27015	0.101	0.061	0.251	0.265	0.322
27017	0.058	0.054	0.09	0.329	0.469
27019	0.024	0.128	0.183	0.296	0.368
27021	0.105	0.127	0.107	0.235	0.426
27023	0.108	0.106	0.244	0.224	0.318
27025	0.064	0.104	0.165	0.253	0.414
27027	0.092	0.121	0.138	0.23	0.419
27029	0.065	0.21	0.203	0.172	0.351
27031	0.184	0.02	0.038	0.257	0.5
27033	0.216	0.045	0.262	0.215	0.263
27035	0.147	0.112	0.081	0.249	0.411
27037	0.072	0.076	0.129	0.236	0.488
27039	0.035	0.096	0.071	0.325	0.473
27041	0.099	0.178	0.148	0.225	0.35
27043	0.078	0.158	0.163	0.261	0.34
27045	0.026	0.102	0.099	0.29	0.483
27047	0.135	0.085	0.206	0.283	0.291
27049	0.03	0.039	0.138	0.28	0.513
27051	0.11	0.137	0.193	0.165	0.396
27053	0.021	0.044	0.096	0.243	0.596
27055	0.072	0.08	0.086	0.283	0.478
27057	0.078	0.15	0.164	0.227	0.38
27059	0.104	0.099	0.215	0.14	0.442
27061	0.162	0.142	0.151	0.209	0.336
27063	0.325	0.024	0.14	0.171	0.34
27065	0.223	0.148	0.137	0.146	0.346
27067	0.109	0.107	0.182	0.29	0.312
27069	0.068	0.168	0.221	0.251	0.292
27071	0.159	0.183	0.087	0.255	0.316
27073	0.184	0.096	0.248	0.179	0.293
27075	0.087	0.033	0.075	0.341	0.464
27077	0.091	0.171	0.176	0.249	0.313
27079	0.055	0.168	0.147	0.254	0.377
27081	0.11	0.078	0.203	0.292	0.317
27083	0.134	0.075	0.242	0.21	0.339
27085	0.061	0.176	0.193	0.383	0.186
27087	0.07	0.279	0.083	0.185	0.382
27089	0.078	0.152	0.221	0.234	0.315
27091	0.18	0.115	0.134	0.205	0.366
27093	0.072	0.144	0.094	0.323	0.367
27095	0.224	0.122	0.159	0.146	0.349
27097	0.14	0.126	0.121	0.24	0.373
27099	0.071	0.107	0.113	0.262	0.448
27101	0.131	0.071	0.224	0.27	0.303
27103	0.063	0.085	0.164	0.296	0.392
27105	0.244	0.078	0.18	0.215	0.284
27107	0.122	0.154	0.109	0.186	0.428
27109	0.023	0.101	0.057	0.333	0.485
27111	0.078	0.182	0.278	0.17	0.291
27113	0.081	0.197	0.211	0.205	0.306
27115	0.178	0.143	0.074	0.242	0.364
27117	0.088	0.182	0.132	0.281	0.317
27119	0.104	0.208	0.197	0.196	0.295
27121	0.139	0.147	0.103	0.216	0.395
27123	0.044	0.046	0.086	0.259	0.564
27125	0.095	0.241	0.194	0.184	0.286
27127	0.081	0.123	0.248	0.255	0.293
27129	0.05	0.136	0.193	0.374	0.247
27131	0.089	0.038	0.117	0.301	0.454
27133	0.095	0.22	0.11	0.247	0.328
27135	0.077	0.151	0.211	0.234	0.327
27137	0.095	0.052	0.098	0.297	0.457
27139	0.021	0.057	0.12	0.319	0.482
27141	0.064	0.175	0.175	0.239	0.346
27143	0.04	0.175	0.172	0.38	0.233
27145	0.082	0.142	0.187	0.174	0.415
27147	0.074	0.062	0.144	0.354	0.365
27149	0.169	0.126	0.117	0.192	0.397
27151	0.17	0.113	0.152	0.212	0.353
27153	0.097	0.198	0.146	0.196	0.363
27155	0.196	0.139	0.16	0.11	0.395
27157	0.041	0.085	0.129	0.318	0.427
27159	0.061	0.211	0.157	0.203	0.367
27161	0.074	0.048	0.117	0.332	0.429
27163	0.044	0.088	0.103	0.262	0.503
27165	0.149	0.053	0.225	0.221	0.352
27167	0.166	0.148	0.239	0.096	0.352
27169	0.029	0.151	0.057	0.328	0.435
27171	0.083	0.109	0.162	0.259	0.387
27173	0.122	0.096	0.254	0.202	0.326
28001	0.113	0.112	0.131	0.084	0.56
28003	0.069	0.131	0.15	0.222	0.428
28005	0.11	0.092	0.122	0.204	0.473
28007	0.065	0.104	0.092	0.139	0.601
28009	0.018	0.014	0.246	0.233	0.489
28011	0.123	0.046	0.127	0.249	0.456
28013	0.074	0.161	0.092	0.179	0.494
28015	0.08	0.144	0.119	0.12	0.537
28017	0.07	0.134	0.088	0.182	0.525
28019	0.035	0.094	0.064	0.219	0.588
28021	0.038	0.061	0.088	0.214	0.598
28023	0.044	0.021	0.133	0.205	0.597
28025	0.029	0.082	0.098	0.214	0.577
28027	0.038	0.056	0.118	0.33	0.459
28029	0.073	0.084	0.134	0.157	0.552
28031	0.11	0.105	0.085	0.193	0.506
28033	0.055	0.078	0.088	0.236	0.543
28035	0.072	0.042	0.091	0.267	0.527
28037	0.087	0.112	0.154	0.138	0.509
28039	0.037	0.102	0.088	0.346	0.428
28041	0.015	0.112	0.07	0.262	0.541
28043	0.056	0.135	0.133	0.189	0.486
28045	0.063	0.09	0.089	0.254	0.503
28047	0.093	0.071	0.142	0.237	0.457
28049	0.019	0.096	0.115	0.183	0.588
28051	0.062	0.072	0.095	0.099	0.672
28053	0.117	0.071	0.098	0.104	0.61
28055	0.03	0.06	0.137	0.162	0.612
28057	0.116	0.074	0.155	0.191	0.464
28059	0.077	0.092	0.12	0.24	0.472
28061	0.066	0.09	0.144	0.167	0.533
28063	0.076	0.083	0.137	0.15	0.555
28065	0.141	0.132	0.101	0.181	0.445
28067	0.069	0.079	0.118	0.169	0.565
28069	0.032	0.021	0.082	0.177	0.687
28071	0.019	0.059	0.161	0.2	0.56
28073	0.087	0.045	0.08	0.27	0.517
28075	0.036	0.018	0.105	0.197	0.643
28077	0.119	0.133	0.142	0.135	0.471
28079	0.031	0.04	0.139	0.158	0.633
28081	0.094	0.092	0.13	0.18	0.505
28083	0.122	0.093	0.119	0.129	0.537
28085	0.077	0.129	0.136	0.142	0.516
28087	0.018	0.052	0.148	0.193	0.59
28089	0.029	0.043	0.184	0.242	0.502
28091	0.137	0.096	0.103	0.255	0.408
28093	0.013	0.006	0.13	0.301	0.55
28095	0.087	0.064	0.139	0.171	0.539
28097	0.058	0.176	0.109	0.147	0.51
28099	0.017	0.018	0.066	0.171	0.729
28101	0.01	0.025	0.1	0.203	0.662
28103	0.009	0.034	0.112	0.203	0.642
28105	0.015	0.07	0.081	0.242	0.591
28107	0.061	0.158	0.113	0.269	0.399
28109	0.05	0.124	0.088	0.251	0.487
28111	0.057	0.056	0.11	0.273	0.503
28113	0.116	0.092	0.106	0.155	0.531
28115	0.06	0.113	0.114	0.197	0.516
28117	0.103	0.104	0.17	0.234	0.389
28119	0.041	0.101	0.1	0.312	0.446
28121	0.031	0.103	0.127	0.179	0.561
28123	0.026	0.049	0.129	0.252	0.543
28125	0.066	0.068	0.148	0.128	0.59
28127	0.081	0.124	0.149	0.154	0.491
28129	0.106	0.172	0.111	0.194	0.417
28131	0.109	0.064	0.124	0.224	0.479
28133	0.137	0.064	0.118	0.182	0.498
28135	0.061	0.086	0.118	0.274	0.461
28137	0.097	0.052	0.149	0.265	0.437
28139	0.068	0.069	0.217	0.213	0.434
28141	0.072	0.179	0.155	0.225	0.37
28143	0.131	0.036	0.089	0.176	0.568
28145	0.078	0.085	0.148	0.219	0.47
28147	0.158	0.086	0.134	0.213	0.409
28149	0.021	0.079	0.095	0.217	0.586
28151	0.138	0.084	0.164	0.114	0.5
28153	0.037	0.062	0.121	0.194	0.587
28155	0.052	0.145	0.079	0.222	0.502
28157	0.146	0.143	0.075	0.155	0.481
28159	0.029	0.038	0.057	0.199	0.676
28161	0.029	0.108	0.121	0.217	0.523
28163	0.05	0.038	0.145	0.159	0.608
29001	0.067	0.098	0.187	0.253	0.395
29003	0.133	0.197	0.164	0.234	0.272
29005	0.09	0.144	0.097	0.287	0.382
29007	0.11	0.078	0.203	0.281	0.327
29009	0.106	0.06	0.256	0.235	0.343
29011	0.15	0.131	0.134	0.111	0.474
29013	0.138	0.068	0.112	0.237	0.444
29015	0.188	0.122	0.168	0.277	0.245
29017	0.097	0.152	0.132	0.268	0.35
29019	0.073	0.075	0.113	0.224	0.515
29021	0.121	0.183	0.175	0.219	0.302
29023	0.189	0.175	0.16	0.135	0.342
29025	0.109	0.133	0.211	0.18	0.367
29027	0.123	0.12	0.217	0.196	0.344
29029	0.266	0.093	0.147	0.124	0.371
29031	0.08	0.109	0.137	0.285	0.389
29033	0.155	0.13	0.078	0.286	0.351
29035	0.159	0.285	0.151	0.125	0.281
29037	0.027	0.082	0.17	0.185	0.535
29039	0.275	0.056	0.173	0.155	0.341
29041	0.117	0.141	0.084	0.278	0.38
29043	0.13	0.113	0.053	0.253	0.451
29045	0.154	0.138	0.165	0.223	0.32
29047	0.033	0.037	0.076	0.199	0.655
29049	0.066	0.103	0.106	0.209	0.517
29051	0.087	0.185	0.107	0.187	0.434
29053	0.06	0.09	0.127	0.183	0.54
29055	0.167	0.148	0.136	0.159	0.391
29057	0.312	0.044	0.138	0.136	0.369
29059	0.165	0.143	0.167	0.154	0.371
29061	0.124	0.166	0.172	0.247	0.291
29063	0.144	0.133	0.159	0.241	0.323
29065	0.167	0.169	0.175	0.196	0.293
29067	0.285	0.149	0.07	0.167	0.328
29069	0.068	0.085	0.154	0.215	0.478
29071	0.122	0.086	0.1	0.233	0.458
29073	0.086	0.207	0.168	0.135	0.404
29075	0.101	0.166	0.182	0.299	0.251
29077	0.099	0.082	0.128	0.272	0.418
29079	0.195	0.193	0.129	0.247	0.236
29081	0.173	0.128	0.215	0.248	0.236
29083	0.128	0.147	0.117	0.345	0.262
29085	0.182	0.18	0.159	0.164	0.316
29087	0.129	0.223	0.156	0.232	0.26
29089	0.076	0.096	0.107	0.191	0.531
29091	0.301	0.142	0.208	0.107	0.242
29093	0.133	0.091	0.072	0.28	0.423
29095	0.027	0.066	0.088	0.21	0.609
29097	0.138	0.152	0.147	0.176	0.388
29099	0.042	0.117	0.178	0.216	0.447
29101	0.168	0.107	0.026	0.189	0.511
29103	0.082	0.112	0.182	0.271	0.353
29105	0.313	0.121	0.172	0.107	0.287
29107	0.033	0.098	0.052	0.247	0.571
29109	0.241	0.05	0.251	0.222	0.237
29111	0.164	0.109	0.177	0.23	0.32
29113	0.063	0.119	0.236	0.282	0.299
29115	0.126	0.156	0.118	0.274	0.326
29117	0.15	0.228	0.111	0.25	0.26
29119	0.152	0.145	0.089	0.138	0.476
29121	0.118	0.127	0.158	0.258	0.338
29123	0.082	0.124	0.092	0.296	0.406
29125	0.098	0.158	0.121	0.198	0.424
29127	0.178	0.093	0.212	0.185	0.332
29129	0.23	0.13	0.216	0.162	0.261
29131	0.2	0.126	0.137	0.147	0.39
29133	0.129	0.097	0.141	0.221	0.413
29135	0.102	0.268	0.11	0.202	0.318
29137	0.164	0.105	0.182	0.203	0.346
29139	0.062	0.077	0.161	0.307	0.392
29141	0.211	0.118	0.175	0.193	0.304
29143	0.098	0.112	0.149	0.18	0.461
29145	0.156	0.121	0.14	0.211	0.373
29147	0.093	0.193	0.16	0.283	0.272
29149	0.142	0.196	0.293	0.129	0.241
29151	0.067	0.133	0.171	0.16	0.469
29153	0.179	0.128	0.128	0.13	0.435
29155	0.079	0.134	0.175	0.204	0.407
29157	0.032	0.102	0.156	0.302	0.408
29159	0.185	0.111	0.156	0.254	0.294
29161	0.139	0.177	0.119	0.244	0.32
29163	0.082	0.128	0.363	0.263	0.164
29165	0.044	0.04	0.088	0.189	0.638
29167	0.183	0.109	0.103	0.189	0.416
29169	0.208	0.103	0.16	0.175	0.354
29171	0.107	0.111	0.209	0.191	0.382
29173	0.16	0.106	0.248	0.196	0.29
29175	0.163	0.088	0.145	0.194	0.41
29177	0.073	0.124	0.233	0.184	0.386
29179	0.137	0.183	0.085	0.229	0.366
29181	0.126	0.254	0.161	0.15	0.308
29183	0.041	0.05	0.091	0.286	0.532
29185	0.163	0.145	0.182	0.279	0.23
29186	0.025	0.14	0.144	0.311	0.38
29187	0.103	0.12	0.085	0.264	0.428
29189	0.024	0.028	0.069	0.182	0.697
29195	0.083	0.23	0.112	0.186	0.389
29197	0.05	0.101	0.211	0.222	0.416
29199	0.073	0.112	0.209	0.246	0.361
29201	0.125	0.115	0.128	0.247	0.385
29203	0.212	0.25	0.198	0.098	0.243
29205	0.142	0.144	0.16	0.238	0.317
29207	0.137	0.12	0.156	0.176	0.411
29209	0.056	0.093	0.171	0.247	0.434
29211	0.136	0.127	0.174	0.223	0.341
29213	0.053	0.079	0.214	0.155	0.499
29215	0.309	0.171	0.231	0.106	0.183
29217	0.164	0.105	0.11	0.125	0.496
29219	0.11	0.083	0.111	0.25	0.446
29221	0.181	0.092	0.118	0.191	0.418
29223	0.191	0.171	0.13	0.196	0.313
29225	0.297	0.09	0.162	0.137	0.313
29227	0.098	0.17	0.218	0.272	0.241
29229	0.419	0.139	0.187	0.1	0.155
29510	0.039	0.017	0.08	0.137	0.726
30001	0.165	0.127	0.102	0.18	0.425
30003	0.136	0.196	0.147	0.25	0.271
30005	0.287	0.08	0.188	0.252	0.192
30007	0.165	0.098	0.099	0.199	0.439
30009	0.14	0.169	0.163	0.26	0.267
30011	0.123	0.121	0.127	0.212	0.417
30013	0.17	0.143	0.16	0.145	0.382
30015	0.196	0.135	0.171	0.152	0.346
30017	0.085	0.261	0.144	0.28	0.23
30019	0.172	0.244	0.186	0.269	0.129
30021	0.139	0.249	0.176	0.274	0.161
30023	0.141	0.173	0.064	0.133	0.489
30025	0.118	0.199	0.146	0.296	0.24
30027	0.284	0.111	0.157	0.187	0.261
30029	0.076	0.167	0.159	0.224	0.374
30031	0.132	0.093	0.115	0.213	0.448
30033	0.134	0.199	0.18	0.265	0.221
30035	0.084	0.154	0.17	0.196	0.396
30037	0.134	0.181	0.168	0.246	0.271
30039	0.116	0.17	0.109	0.183	0.422
30041	0.27	0.106	0.159	0.192	0.273
30043	0.158	0.111	0.076	0.169	0.487
30045	0.233	0.11	0.17	0.139	0.349
30047	0.087	0.23	0.128	0.206	0.349
30049	0.149	0.107	0.08	0.185	0.479
30051	0.188	0.146	0.167	0.147	0.352
30053	0.118	0.174	0.118	0.188	0.402
30055	0.142	0.274	0.179	0.267	0.139
30057	0.172	0.113	0.105	0.21	0.4
30059	0.188	0.093	0.12	0.203	0.396
30061	0.097	0.278	0.119	0.183	0.323
30063	0.091	0.2	0.128	0.209	0.372
30065	0.128	0.178	0.169	0.257	0.268
30067	0.114	0.099	0.106	0.214	0.467
30069	0.157	0.154	0.174	0.247	0.269
30071	0.229	0.114	0.214	0.296	0.147
30073	0.123	0.175	0.17	0.142	0.39
30075	0.193	0.24	0.106	0.188	0.273
30077	0.118	0.144	0.069	0.14	0.53
30079	0.101	0.27	0.171	0.283	0.176
30081	0.121	0.177	0.114	0.195	0.393
30083	0.176	0.216	0.162	0.255	0.191
30085	0.169	0.246	0.178	0.261	0.146
30087	0.126	0.214	0.143	0.248	0.269
30089	0.15	0.204	0.191	0.172	0.283
30091	0.179	0.203	0.178	0.256	0.185
30093	0.158	0.138	0.059	0.143	0.503
30095	0.126	0.173	0.16	0.255	0.286
30097	0.116	0.157	0.126	0.227	0.374
30099	0.134	0.176	0.147	0.152	0.391
30101	0.138	0.165	0.178	0.135	0.384
30103	0.122	0.188	0.16	0.259	0.27
30105	0.172	0.235	0.187	0.291	0.115
30107	0.214	0.135	0.144	0.189	0.318
30109	0.165	0.219	0.161	0.267	0.187
30111	0.129	0.177	0.167	0.262	0.265
31001	0.057	0.128	0.089	0.291	0.435
31003	0.198	0.096	0.191	0.161	0.354
31005	0.144	0.135	0.117	0.248	0.356
31007	0.249	0.128	0.134	0.216	0.272
31009	0.176	0.103	0.123	0.305	0.293
31011	0.156	0.08	0.151	0.197	0.415
31013	0.303	0.112	0.096	0.285	0.203
31015	0.081	0.159	0.267	0.184	0.309
31017	0.141	0.082	0.167	0.275	0.335
31019	0.065	0.113	0.104	0.327	0.391
31021	0.066	0.063	0.09	0.321	0.46
31023	0.027	0.105	0.263	0.238	0.365
31025	0.042	0.049	0.119	0.24	0.55
31027	0.207	0.163	0.161	0.177	0.293
31029	0.055	0.192	0.156	0.232	0.364
31031	0.158	0.042	0.095	0.377	0.328
31033	0.116	0.159	0.164	0.338	0.223
31035	0.064	0.132	0.124	0.28	0.4
31037	0.054	0.089	0.228	0.287	0.341
31039	0.147	0.066	0.122	0.347	0.317
31041	0.143	0.104	0.112	0.328	0.314
31043	0.113	0.167	0.131	0.163	0.425
31045	0.224	0.103	0.11	0.321	0.242
31047	0.096	0.114	0.115	0.348	0.328
31049	0.093	0.147	0.138	0.267	0.355
31051	0.163	0.16	0.131	0.162	0.383
31053	0.14	0.036	0.136	0.374	0.314
31055	0.091	0.069	0.095	0.263	0.482
31057	0.053	0.232	0.173	0.231	0.311
31059	0.053	0.096	0.263	0.375	0.213
31061	0.083	0.168	0.083	0.288	0.378
31063	0.094	0.121	0.136	0.336	0.313
31065	0.101	0.135	0.129	0.319	0.315
31067	0.127	0.03	0.103	0.26	0.48
31069	0.202	0.124	0.119	0.268	0.288
31071	0.168	0.084	0.142	0.236	0.37
31073	0.086	0.12	0.115	0.347	0.333
31075	0.199	0.116	0.102	0.27	0.313
31077	0.122	0.091	0.122	0.245	0.421
31079	0.048	0.114	0.103	0.284	0.451
31081	0.04	0.124	0.157	0.252	0.427
31083	0.089	0.158	0.102	0.302	0.348
31085	0.072	0.151	0.161	0.273	0.343
31087	0.085	0.162	0.19	0.263	0.301
31089	0.113	0.134	0.234	0.154	0.365
31091	0.151	0.123	0.11	0.279	0.337
31093	0.073	0.104	0.108	0.281	0.433
31095	0.206	0.05	0.055	0.306	0.384
31097	0.061	0.175	0.247	0.207	0.31
31099	0.062	0.127	0.094	0.318	0.399
31101	0.093	0.15	0.13	0.235	0.393
31103	0.124	0.09	0.183	0.273	0.331
31105	0.187	0.173	0.161	0.228	0.25
31107	0.171	0.178	0.195	0.157	0.299
31109	0.093	0.061	0.112	0.264	0.47
31111	0.103	0.145	0.123	0.287	0.341
31113	0.14	0.133	0.115	0.308	0.304
31115	0.193	0.084	0.129	0.276	0.318
31117	0.121	0.147	0.115	0.257	0.361
31119	0.251	0.082	0.194	0.156	0.317
31121	0.05	0.125	0.137	0.234	0.454
31123	0.261	0.119	0.124	0.273	0.223
31125	0.091	0.111	0.131	0.207	0.459
31127	0.09	0.148	0.137	0.293	0.333
31129	0.138	0.132	0.064	0.349	0.318
31131	0.11	0.097	0.09	0.275	0.428
31133	0.067	0.147	0.215	0.254	0.316
31135	0.069	0.164	0.142	0.233	0.393
31137	0.072	0.126	0.103	0.336	0.363
31139	0.253	0.11	0.185	0.142	0.311
31141	0.044	0.094	0.176	0.254	0.432
31143	0.029	0.167	0.277	0.174	0.353
31145	0.102	0.123	0.169	0.308	0.298
31147	0.098	0.185	0.166	0.252	0.298
31149	0.13	0.102	0.198	0.222	0.349
31151	0.021	0.07	0.186	0.217	0.507
31153	0.094	0.069	0.144	0.26	0.433
31155	0.108	0.09	0.28	0.223	0.3
31157	0.256	0.132	0.113	0.245	0.255
31159	0.028	0.046	0.216	0.109	0.601
31161	0.248	0.083	0.094	0.333	0.242
31163	0.093	0.099	0.11	0.307	0.39
31165	0.241	0.161	0.101	0.292	0.205
31167	0.265	0.08	0.192	0.154	0.309
31169	0.185	0.071	0.066	0.429	0.249
31171	0.152	0.12	0.118	0.302	0.308
31173	0.123	0.153	0.119	0.187	0.418
31175	0.135	0.09	0.118	0.278	0.38
31177	0.086	0.116	0.15	0.261	0.386
31179	0.245	0.12	0.155	0.141	0.34
31181	0.091	0.167	0.068	0.286	0.389
31183	0.162	0.084	0.155	0.201	0.399
31185	0.044	0.168	0.422	0.184	0.182
32001	0.022	0.093	0.058	0.153	0.674
32003	0.027	0.032	0.054	0.145	0.742
32005	0.029	0.055	0.091	0.238	0.588
32007	0.021	0.046	0.19	0.364	0.379
32009	0.086	0.004	0.006	0.032	0.872
32011	0.002	0.054	0.17	0.386	0.387
32013	0.008	0.042	0.156	0.069	0.725
32015	0.004	0.085	0.142	0.182	0.588
32017	0.048	0.019	0.147	0.177	0.61
32019	0.037	0.069	0.05	0.173	0.671
32021	0.022	0.018	0.09	0.115	0.755
32023	0.061	0.038	0.052	0.183	0.666
32027	0.01	0.013	0.248	0.038	0.691
32029	0.015	0.038	0.039	0.126	0.782
32031	0.024	0.025	0.06	0.215	0.676
32033	0.059	0.016	0.208	0.421	0.296
32510	0.023	0.064	0.054	0.274	0.585
33001	0.114	0.02	0.11	0.158	0.598
33003	0.088	0.035	0.107	0.172	0.598
33005	0.02	0.075	0.093	0.202	0.609
33007	0.017	0.05	0.068	0.169	0.697
33009	0.039	0.026	0.032	0.199	0.705
33011	0.03	0.069	0.066	0.164	0.67
33013	0.085	0.067	0.075	0.158	0.615
33015	0.018	0.057	0.074	0.212	0.639
33017	0.08	0.074	0.098	0.19	0.558
33019	0.06	0.103	0.012	0.252	0.574
34001	0.019	0.041	0.03	0.176	0.734
34003	0.02	0.014	0.053	0.151	0.762
34005	0.023	0.02	0.043	0.134	0.779
34007	0.028	0.005	0.027	0.137	0.802
34009	0.013	0.011	0.022	0.214	0.74
34011	0.032	0.006	0.058	0.142	0.762
34013	0.035	0.014	0.085	0.183	0.682
34015	0.047	0.01	0.052	0.145	0.746
34017	0.022	0.019	0.077	0.211	0.67
34019	0.007	0.038	0.065	0.085	0.804
34021	0.017	0.014	0.05	0.162	0.757
34023	0.02	0.016	0.054	0.146	0.765
34025	0.01	0.022	0.041	0.164	0.764
34027	0.023	0.018	0.049	0.191	0.72
34029	0.012	0.056	0.055	0.104	0.772
34031	0.029	0.015	0.063	0.138	0.756
34033	0.041	0.043	0.036	0.154	0.726
34035	0.016	0.027	0.046	0.12	0.791
34037	0.02	0.026	0.029	0.205	0.72
34039	0.012	0.011	0.059	0.202	0.716
34041	0.035	0.02	0.044	0.152	0.749
35001	0.036	0.014	0.057	0.135	0.758
35003	0.054	0.039	0.036	0.109	0.762
35005	0.074	0.04	0.108	0.144	0.634
35006	0.003	0.059	0.014	0.085	0.839
35007	0.041	0.019	0.091	0.106	0.743
35009	0.011	0.129	0.111	0.209	0.54
35011	0.036	0.069	0.085	0.098	0.712
35013	0.011	0.044	0.036	0.097	0.812
35015	0.2	0.07	0.092	0.239	0.399
35017	0.043	0.031	0.15	0.205	0.572
35019	0.014	0.049	0.072	0.098	0.766
35021	0.057	0.152	0.062	0.115	0.614
35023	0.056	0.037	0.186	0.153	0.569
35025	0.112	0.024	0.115	0.331	0.418
35027	0.04	0.012	0.055	0.162	0.731
35028	0.001	0.041	0.076	0.173	0.709
35029	0.105	0.046	0.024	0.11	0.715
35031	0.01	0.06	0.008	0.202	0.721
35033	0.002	0.027	0.067	0.098	0.806
35035	0.074	0.03	0.143	0.158	0.595
35037	0.049	0.152	0.07	0.159	0.571
35039	0.007	0.054	0.102	0.162	0.675
35041	0.009	0.154	0.089	0.146	0.602
35043	0.017	0.015	0.096	0.11	0.762
35045	0.057	0.015	0.118	0.255	0.555
35047	0.004	0.02	0.057	0.119	0.8
35049	0.008	0.016	0.031	0.143	0.803
35051	0.03	0.039	0.033	0.239	0.659
35053	0.002	0.008	0.05	0.193	0.746
35055	0.006	0.041	0.055	0.113	0.785
35057	0.097	0.005	0.035	0.167	0.696
35059	0.12	0.118	0.127	0.242	0.393
35061	0.006	0.009	0.143	0.195	0.648
36001	0.006	0.012	0.052	0.142	0.788
36003	0.062	0.015	0.028	0.124	0.771
36005	0.043	0.013	0.066	0.136	0.742
36007	0.044	0.028	0.051	0.066	0.812
36009	0.015	0.013	0.024	0.156	0.793
36011	0	0.033	0.072	0.162	0.732
36013	0.029	0.024	0.038	0.206	0.703
36015	0.012	0.046	0.092	0.256	0.594
36017	0.048	0.045	0.015	0.156	0.735
36019	0.017	0.024	0.102	0.084	0.773
36021	0.014	0.004	0.029	0.104	0.848
36023	0.001	0.062	0.015	0.118	0.803
36025	0.057	0.053	0.034	0.112	0.744
36027	0.007	0.009	0.031	0.099	0.854
36029	0.018	0.014	0.04	0.161	0.766
36031	0.05	0.05	0.057	0.107	0.736
36033	0.026	0.027	0.117	0.097	0.733
36035	0.078	0.015	0.06	0.118	0.729
36037	0.001	0.017	0.015	0.187	0.781
36039	0.022	0.014	0.03	0.146	0.788
36041	0.042	0.024	0.053	0.229	0.653
36043	0.015	0.026	0.042	0.158	0.758
36045	0.008	0.058	0.038	0.116	0.78
36047	0.035	0.034	0.058	0.141	0.732
36049	0.069	0.036	0.02	0.11	0.765
36051	0.011	0.034	0.009	0.111	0.835
36053	0.003	0.015	0.043	0.107	0.832
36055	0.018	0.012	0.056	0.129	0.785
36057	0.102	0.005	0.054	0.09	0.749
36059	0.017	0.018	0.043	0.142	0.779
36061	0.02	0.016	0.04	0.121	0.803
36063	0.001	0.028	0.037	0.204	0.73
36065	0.016	0.025	0.033	0.153	0.774
36067	0.019	0.008	0.054	0.163	0.756
36069	0.001	0.012	0.031	0.107	0.849
36071	0.023	0.008	0.042	0.18	0.746
36073	0.001	0.033	0.059	0.213	0.693
36075	0.017	0.003	0.094	0.119	0.766
36077	0.032	0.065	0.027	0.096	0.779
36079	0.003	0.018	0.022	0.105	0.852
36081	0.022	0.023	0.068	0.136	0.751
36083	0.018	0.018	0.073	0.14	0.751
36085	0.033	0.015	0.046	0.178	0.728
36087	0.011	0.018	0.054	0.195	0.722
36089	0.027	0.029	0.095	0.149	0.701
36091	0.02	0.012	0.062	0.156	0.751
36093	0.04	0.007	0.051	0.06	0.841
36095	0.007	0.02	0.04	0.108	0.825
36097	0.01	0.009	0.071	0.239	0.67
36099	0.001	0.012	0.042	0.082	0.864
36101	0.036	0.031	0.057	0.201	0.674
36103	0.04	0.019	0.053	0.106	0.782
36105	0.024	0.03	0.043	0.085	0.817
36107	0.019	0.011	0.018	0.114	0.839
36109	0.012	0.01	0.046	0.098	0.833
36111	0.014	0.023	0.045	0.1	0.818
36113	0.026	0.018	0.104	0.13	0.723
36115	0.026	0.027	0.135	0.138	0.673
36117	0.001	0.016	0.061	0.132	0.789
36119	0.025	0.018	0.044	0.115	0.798
36121	0.001	0.024	0.008	0.107	0.861
36123	0	0.006	0.023	0.087	0.884
37001	0.04	0.073	0.126	0.175	0.586
37003	0.027	0.023	0.103	0.272	0.575
37005	0.153	0.067	0.067	0.21	0.504
37007	0.053	0.062	0.08	0.163	0.641
37009	0.149	0.026	0.083	0.287	0.455
37011	0.096	0.01	0.212	0.173	0.509
37013	0.037	0.08	0.041	0.219	0.623
37015	0.1	0.04	0.064	0.214	0.582
37017	0.073	0.023	0.076	0.104	0.724
37019	0.024	0.018	0.036	0.248	0.673
37021	0.009	0.023	0.044	0.23	0.693
37023	0.091	0.056	0.124	0.189	0.54
37025	0.04	0.022	0.092	0.27	0.576
37027	0.028	0.031	0.072	0.199	0.67
37029	0.091	0.025	0.121	0.188	0.575
37031	0.01	0.067	0.167	0.197	0.56
37033	0.06	0.035	0.199	0.179	0.527
37035	0.035	0.07	0.13	0.214	0.551
37037	0.007	0.025	0.063	0.139	0.766
37039	0.085	0.109	0.101	0.147	0.557
37041	0.044	0.011	0.152	0.296	0.497
37043	0.099	0.091	0.095	0.169	0.546
37045	0.062	0.121	0.094	0.151	0.573
37047	0.179	0.043	0.113	0.155	0.511
37049	0.034	0.068	0.212	0.215	0.47
37051	0.028	0.047	0.1	0.175	0.649
37053	0.157	0.021	0.131	0.167	0.524
37055	0.028	0.005	0.102	0.194	0.671
37057	0.058	0.085	0.169	0.134	0.554
37059	0.074	0.067	0.037	0.14	0.681
37061	0.068	0.044	0.143	0.126	0.62
37063	0.017	0.014	0.033	0.104	0.832
37065	0.021	0.037	0.055	0.184	0.703
37067	0.02	0.022	0.068	0.183	0.706
37069	0.038	0.03	0.061	0.127	0.745
37071	0.038	0.079	0.054	0.197	0.632
37073	0.008	0.022	0.19	0.21	0.57
37075	0.095	0.072	0.096	0.236	0.502
37077	0.042	0.033	0.082	0.107	0.736
37079	0.072	0.061	0.127	0.24	0.501
37081	0.04	0.055	0.117	0.199	0.588
37083	0.014	0.007	0.068	0.2	0.711
37085	0.031	0.069	0.06	0.129	0.711
37087	0.077	0.039	0.03	0.188	0.666
37089	0.014	0.028	0.042	0.201	0.715
37091	0.02	0.007	0.06	0.217	0.696
37093	0.009	0.047	0.092	0.236	0.616
37095	0.133	0.03	0.08	0.259	0.498
37097	0.08	0.051	0.106	0.219	0.544
37099	0.077	0.065	0.067	0.176	0.616
37101	0.032	0.022	0.113	0.151	0.682
37103	0.064	0.051	0.208	0.233	0.445
37105	0.066	0.102	0.081	0.115	0.636
37107	0.109	0.041	0.112	0.228	0.51
37109	0.029	0.09	0.084	0.234	0.563
37111	0.075	0.114	0.105	0.143	0.563
37113	0.153	0.039	0.085	0.182	0.541
37115	0.016	0.034	0.08	0.178	0.692
37117	0.084	0.089	0.071	0.15	0.605
37119	0.029	0.037	0.075	0.166	0.694
37121	0.096	0.035	0.146	0.154	0.569
37123	0.027	0.056	0.078	0.184	0.655
37125	0.039	0.105	0.041	0.237	0.578
37127	0.044	0.032	0.038	0.212	0.673
37129	0.019	0.032	0.032	0.25	0.667
37131	0.017	0.003	0.067	0.201	0.712
37133	0.039	0.039	0.159	0.254	0.509
37135	0.01	0.02	0.028	0.142	0.801
37137	0.036	0.057	0.181	0.243	0.482
37139	0.067	0.021	0.11	0.238	0.563
37141	0.05	0.035	0.142	0.169	0.603
37143	0.036	0.014	0.154	0.299	0.498
37145	0.01	0.008	0.07	0.166	0.746
37147	0.034	0.065	0.085	0.204	0.612
37149	0.018	0.115	0.105	0.263	0.499
37151	0.066	0.078	0.105	0.138	0.613
37153	0.05	0.039	0.145	0.153	0.612
37155	0.062	0.031	0.116	0.165	0.626
37157	0.125	0.094	0.124	0.111	0.546
37159	0.086	0.065	0.131	0.175	0.542
37161	0.045	0.17	0.098	0.156	0.532
37163	0.006	0.005	0.084	0.197	0.708
37165	0.137	0.029	0.178	0.199	0.458
37167	0.029	0.083	0.097	0.217	0.574
37169	0.015	0.034	0.116	0.247	0.588
37171	0.019	0.041	0.1	0.382	0.458
37173	0.079	0.061	0.086	0.247	0.528
37175	0.025	0.013	0.047	0.224	0.691
37177	0.054	0.016	0.103	0.301	0.527
37179	0.06	0.045	0.067	0.213	0.615
37181	0.042	0.031	0.137	0.159	0.631
37183	0.015	0.02	0.07	0.168	0.727
37185	0.027	0.024	0.105	0.158	0.686
37187	0.113	0.053	0.057	0.301	0.476
37189	0.062	0.01	0.072	0.363	0.493
37191	0.017	0.018	0.09	0.132	0.744
37193	0.046	0.071	0.164	0.208	0.511
37195	0.013	0.067	0.081	0.248	0.59
37197	0.073	0.027	0.08	0.199	0.621
37199	0.028	0.019	0.063	0.224	0.665
38001	0.219	0.166	0.189	0.233	0.193
38003	0.111	0.079	0.137	0.248	0.425
38005	0.289	0.194	0.118	0.195	0.204
38007	0.2	0.201	0.137	0.244	0.218
38009	0.206	0.119	0.142	0.259	0.274
38011	0.188	0.141	0.146	0.262	0.263
38013	0.191	0.147	0.151	0.258	0.253
38015	0.172	0.233	0.091	0.297	0.207
38017	0.09	0.113	0.142	0.233	0.423
38019	0.146	0.272	0.165	0.222	0.195
38021	0.151	0.077	0.227	0.277	0.267
38023	0.186	0.168	0.163	0.255	0.227
38025	0.195	0.189	0.125	0.252	0.239
38027	0.269	0.159	0.117	0.209	0.246
38029	0.16	0.221	0.094	0.302	0.222
38031	0.265	0.081	0.081	0.27	0.304
38033	0.187	0.206	0.149	0.256	0.203
38035	0.097	0.122	0.222	0.253	0.305
38037	0.177	0.233	0.125	0.275	0.19
38039	0.162	0.054	0.197	0.217	0.37
38041	0.218	0.207	0.15	0.232	0.193
38043	0.193	0.206	0.074	0.301	0.226
38045	0.115	0.07	0.193	0.307	0.315
38047	0.172	0.156	0.104	0.295	0.272
38049	0.206	0.132	0.124	0.263	0.275
38051	0.169	0.128	0.136	0.275	0.291
38053	0.19	0.182	0.142	0.253	0.232
38055	0.189	0.185	0.107	0.273	0.246
38057	0.189	0.197	0.111	0.266	0.237
38059	0.172	0.235	0.096	0.293	0.205
38061	0.192	0.16	0.134	0.258	0.256
38063	0.133	0.183	0.193	0.218	0.274
38065	0.181	0.217	0.102	0.28	0.221
38067	0.08	0.216	0.202	0.256	0.247
38069	0.253	0.136	0.12	0.246	0.246
38071	0.242	0.25	0.138	0.175	0.195
38073	0.073	0.114	0.223	0.236	0.354
38075	0.193	0.13	0.141	0.262	0.274
38077	0.155	0.174	0.189	0.116	0.366
38079	0.248	0.154	0.135	0.235	0.228
38081	0.081	0.163	0.249	0.251	0.257
38083	0.203	0.186	0.091	0.285	0.235
38085	0.157	0.228	0.108	0.295	0.211
38087	0.217	0.179	0.142	0.246	0.215
38089	0.207	0.205	0.129	0.24	0.219
38091	0.172	0.061	0.302	0.182	0.283
38093	0.202	0.053	0.076	0.314	0.354
38095	0.263	0.232	0.127	0.198	0.18
38097	0.144	0.115	0.205	0.233	0.303
38099	0.087	0.181	0.208	0.253	0.271
38101	0.195	0.138	0.127	0.263	0.276
38103	0.254	0.163	0.083	0.275	0.226
38105	0.186	0.182	0.155	0.254	0.223
39001	0.074	0.116	0.149	0.222	0.439
39003	0.085	0.104	0.114	0.382	0.314
39005	0.068	0.035	0.268	0.19	0.438
39007	0.144	0.008	0.099	0.257	0.492
39009	0.071	0.115	0.164	0.236	0.413
39011	0.131	0.089	0.153	0.342	0.285
39013	0.082	0.086	0.118	0.25	0.464
39015	0.177	0.177	0.101	0.128	0.417
39017	0.047	0.072	0.106	0.244	0.531
39019	0.147	0.261	0.052	0.15	0.39
39021	0.084	0.051	0.274	0.269	0.321
39023	0.066	0.027	0.19	0.247	0.471
39025	0.082	0.069	0.074	0.192	0.584
39027	0.171	0.198	0.071	0.105	0.455
39029	0.098	0.08	0.115	0.156	0.551
39031	0.077	0.194	0.294	0.178	0.258
39033	0.101	0.107	0.126	0.184	0.482
39035	0.042	0.052	0.084	0.213	0.609
39037	0.216	0.084	0.15	0.28	0.271
39039	0.052	0.114	0.152	0.221	0.462
39041	0.018	0.081	0.084	0.177	0.64
39043	0.078	0.022	0.091	0.179	0.63
39045	0.1	0.095	0.135	0.142	0.527
39047	0.157	0.055	0.328	0.158	0.302
39049	0.042	0.054	0.09	0.198	0.617
39051	0.029	0.046	0.318	0.272	0.335
39053	0.074	0.082	0.203	0.178	0.463
39055	0.03	0.057	0.064	0.218	0.631
39057	0.041	0.082	0.095	0.264	0.519
39059	0.101	0.162	0.137	0.181	0.419
39061	0.069	0.056	0.102	0.224	0.549
39063	0.076	0.127	0.122	0.302	0.373
39065	0.149	0.121	0.134	0.227	0.368
39067	0.107	0.141	0.153	0.233	0.365
39069	0.038	0.111	0.189	0.197	0.465
39071	0.157	0.144	0.068	0.162	0.468
39073	0.169	0.137	0.21	0.104	0.38
39075	0.05	0.087	0.134	0.271	0.457
39077	0.191	0.064	0.204	0.172	0.369
39079	0.166	0.141	0.247	0.105	0.341
39081	0.076	0.142	0.152	0.209	0.42
39083	0.138	0.1	0.065	0.17	0.526
39085	0.067	0.039	0.104	0.246	0.544
39087	0.089	0.097	0.185	0.23	0.399
39089	0.056	0.102	0.176	0.127	0.539
39091	0.136	0.117	0.314	0.248	0.186
39093	0.089	0.097	0.099	0.207	0.508
39095	0.078	0.056	0.111	0.189	0.566
39097	0.037	0.087	0.167	0.262	0.447
39099	0.046	0.099	0.099	0.231	0.525
39101	0.084	0.18	0.115	0.159	0.462
39103	0.068	0.077	0.125	0.227	0.503
39105	0.072	0.137	0.182	0.177	0.432
39107	0.102	0.105	0.245	0.314	0.233
39109	0.077	0.07	0.19	0.227	0.436
39111	0.04	0.144	0.139	0.291	0.386
39113	0.041	0.065	0.065	0.222	0.607
39115	0.142	0.114	0.153	0.259	0.332
39117	0.059	0.094	0.075	0.31	0.462
39119	0.136	0.145	0.121	0.182	0.416
39121	0.109	0.176	0.139	0.219	0.357
39123	0.052	0.035	0.084	0.219	0.609
39125	0.095	0.061	0.24	0.314	0.29
39127	0.138	0.149	0.214	0.19	0.309
39129	0.067	0.087	0.092	0.244	0.51
39131	0.186	0.124	0.124	0.158	0.409
39133	0.028	0.078	0.126	0.213	0.555
39135	0.045	0.146	0.186	0.248	0.375
39137	0.041	0.118	0.253	0.307	0.28
39139	0.066	0.08	0.213	0.221	0.419
39141	0.181	0.103	0.101	0.168	0.447
39143	0.139	0.074	0.109	0.209	0.469
39145	0.121	0.096	0.242	0.156	0.387
39147	0.119	0.195	0.243	0.164	0.279
39149	0.182	0.119	0.216	0.283	0.2
39151	0.065	0.11	0.102	0.198	0.525
39153	0.048	0.056	0.125	0.207	0.565
39155	0.054	0.059	0.121	0.23	0.535
39157	0.126	0.204	0.116	0.215	0.339
39159	0.175	0.018	0.099	0.245	0.463
39161	0.069	0.084	0.223	0.412	0.212
39163	0.09	0.165	0.218	0.147	0.38
39165	0.062	0.044	0.085	0.162	0.647
39167	0.072	0.121	0.142	0.29	0.375
39169	0.064	0.082	0.144	0.245	0.466
39171	0.035	0.133	0.199	0.208	0.425
39173	0.029	0.061	0.086	0.252	0.572
39175	0.1	0.201	0.138	0.135	0.426
40001	0.105	0.068	0.258	0.213	0.356
40003	0.203	0.096	0.188	0.25	0.262
40005	0.076	0.184	0.111	0.284	0.345
40007	0.153	0.154	0.085	0.223	0.384
40009	0.088	0.265	0.187	0.121	0.339
40011	0.029	0.081	0.244	0.32	0.326
40013	0.094	0.087	0.125	0.237	0.457
40015	0.013	0.111	0.194	0.239	0.444
40017	0.043	0.073	0.103	0.309	0.472
40019	0.128	0.169	0.138	0.213	0.351
40021	0.099	0.121	0.212	0.24	0.327
40023	0.064	0.113	0.119	0.251	0.454
40025	0.14	0.089	0.153	0.26	0.358
40027	0.046	0.101	0.079	0.25	0.524
40029	0.075	0.12	0.105	0.307	0.394
40031	0.054	0.179	0.127	0.226	0.413
40033	0.06	0.117	0.102	0.173	0.548
40035	0.247	0.113	0.236	0.112	0.292
40037	0.154	0.074	0.145	0.212	0.415
40039	0.006	0.274	0.413	0.13	0.177
40041	0.188	0.187	0.202	0.107	0.316
40043	0.066	0.185	0.286	0.219	0.244
40045	0.132	0.22	0.135	0.207	0.306
40047	0.233	0.103	0.127	0.28	0.258
40049	0.075	0.087	0.157	0.249	0.433
40051	0.047	0.098	0.185	0.249	0.422
40053	0.205	0.136	0.145	0.255	0.257
40055	0.073	0.19	0.148	0.225	0.365
40057	0.105	0.158	0.16	0.239	0.338
40059	0.158	0.189	0.118	0.257	0.278
40061	0.146	0.09	0.203	0.258	0.303
40063	0.089	0.037	0.146	0.213	0.514
40065	0.021	0.127	0.148	0.291	0.411
40067	0.084	0.108	0.163	0.14	0.505
40069	0.088	0.137	0.157	0.244	0.374
40071	0.099	0.12	0.135	0.225	0.419
40073	0.046	0.093	0.05	0.192	0.619
40075	0.025	0.19	0.131	0.239	0.415
40077	0.159	0.136	0.184	0.277	0.245
40079	0.142	0.152	0.156	0.196	0.354
40081	0.135	0.103	0.204	0.222	0.337
40083	0.03	0.027	0.114	0.31	0.519
40085	0.188	0.08	0.103	0.195	0.435
40087	0.092	0.099	0.068	0.197	0.545
40089	0.131	0.141	0.117	0.187	0.423
40091	0.085	0.057	0.265	0.221	0.373
40093	0.169	0.072	0.212	0.285	0.261
40095	0.13	0.074	0.114	0.256	0.425
40097	0.173	0.175	0.213	0.135	0.303
40099	0.042	0.154	0.247	0.218	0.34
40101	0.063	0.088	0.262	0.198	0.388
40103	0.069	0.085	0.1	0.253	0.493
40105	0.148	0.121	0.164	0.181	0.386
40107	0.112	0.035	0.241	0.193	0.419
40109	0.096	0.064	0.097	0.225	0.518
40111	0.078	0.052	0.204	0.276	0.39
40113	0.077	0.103	0.23	0.218	0.372
40115	0.154	0.13	0.229	0.151	0.337
40117	0.178	0.085	0.159	0.213	0.365
40119	0.083	0.068	0.129	0.207	0.514
40121	0.117	0.112	0.153	0.36	0.258
40123	0.029	0.033	0.102	0.235	0.601
40125	0.042	0.052	0.278	0.236	0.392
40127	0.077	0.152	0.122	0.261	0.388
40129	0.109	0.248	0.192	0.091	0.36
40131	0.097	0.105	0.164	0.201	0.433
40133	0.095	0.034	0.225	0.169	0.478
40135	0.106	0.11	0.209	0.212	0.362
40137	0.041	0.088	0.21	0.286	0.375
40139	0.123	0.12	0.102	0.225	0.43
40141	0.042	0.142	0.11	0.225	0.48
40143	0.074	0.061	0.141	0.243	0.482
40145	0.032	0.112	0.175	0.306	0.375
40147	0.118	0.183	0.162	0.192	0.345
40149	0.024	0.256	0.243	0.164	0.313
40151	0.165	0.116	0.166	0.281	0.272
40153	0.146	0.232	0.145	0.247	0.229
41001	0.051	0.189	0.179	0.189	0.392
41003	0.007	0.007	0.059	0.156	0.77
41005	0.016	0.024	0.071	0.168	0.721
41007	0.052	0.027	0.051	0.073	0.797
41009	0.048	0.015	0.158	0.174	0.604
41011	0.128	0.061	0.136	0.099	0.577
41013	0.019	0.075	0.027	0.246	0.633
41015	0.025	0.058	0.1	0.162	0.655
41017	0.01	0.061	0.014	0.25	0.666
41019	0.082	0.052	0.116	0.239	0.511
41021	0.008	0.003	0.049	0.332	0.607
41023	0.014	0.062	0.132	0.12	0.671
41025	0.032	0.099	0.114	0.157	0.598
41027	0.03	0.071	0.127	0.162	0.61
41029	0.044	0.077	0.075	0.138	0.665
41031	0.018	0.062	0.012	0.25	0.657
41033	0.028	0.056	0.072	0.192	0.652
41035	0.097	0.031	0.062	0.227	0.583
41037	0.05	0.017	0.127	0.247	0.558
41039	0.031	0.036	0.077	0.137	0.719
41041	0.001	0.012	0.047	0.131	0.81
41043	0.057	0.025	0.096	0.159	0.664
41045	0.071	0.206	0.213	0.206	0.305
41047	0.029	0.013	0.053	0.196	0.71
41049	0.026	0.004	0.083	0.197	0.69
41051	0.013	0.016	0.054	0.178	0.738
41053	0.013	0.022	0.078	0.242	0.645
41055	0.008	0.014	0.046	0.271	0.66
41057	0.125	0.04	0.092	0.163	0.581
41059	0.043	0.01	0.081	0.155	0.71
41061	0.034	0.088	0.086	0.189	0.603
41063	0.041	0.083	0.146	0.229	0.501
41065	0.019	0.034	0.069	0.197	0.681
41067	0.006	0.009	0.059	0.169	0.756
41069	0.023	0.07	0.049	0.232	0.626
41071	0.021	0.035	0.072	0.143	0.729
42001	0.039	0.034	0.083	0.238	0.606
42003	0.017	0.022	0.035	0.165	0.761
42005	0.027	0.074	0.159	0.173	0.568
42007	0.015	0.023	0.1	0.137	0.725
42009	0.014	0.111	0.1	0.205	0.57
42011	0.036	0.012	0.06	0.174	0.719
42013	0.041	0.132	0.083	0.249	0.495
42015	0.042	0.017	0.051	0.194	0.697
42017	0.014	0.018	0.032	0.131	0.805
42019	0.035	0.062	0.062	0.194	0.647
42021	0.026	0.062	0.153	0.228	0.53
42023	0.147	0.014	0.048	0.142	0.649
42025	0.013	0.062	0.015	0.145	0.764
42027	0.017	0.013	0.076	0.101	0.792
42029	0.006	0.022	0.038	0.113	0.82
42031	0.057	0.03	0.152	0.155	0.605
42033	0.051	0.055	0.176	0.206	0.512
42035	0.014	0.024	0.077	0.19	0.696
42037	0.02	0.046	0.05	0.163	0.721
42039	0.024	0.016	0.136	0.266	0.558
42041	0.031	0.032	0.183	0.192	0.562
42043	0.032	0.023	0.258	0.147	0.539
42045	0.01	0.01	0.044	0.123	0.814
42047	0.055	0.016	0.084	0.15	0.695
42049	0.016	0.025	0.057	0.136	0.766
42051	0.053	0.064	0.144	0.161	0.578
42053	0.016	0.008	0.158	0.196	0.622
42055	0.023	0.04	0.082	0.248	0.607
42057	0.013	0.145	0.053	0.23	0.559
42059	0.104	0.11	0.187	0.124	0.475
42061	0.07	0.06	0.155	0.232	0.483
42063	0.015	0.047	0.066	0.22	0.652
42065	0.083	0.046	0.142	0.197	0.531
42067	0.065	0.068	0.093	0.214	0.56
42069	0.007	0.006	0.039	0.106	0.843
42071	0.037	0.013	0.054	0.172	0.724
42073	0.034	0.07	0.093	0.301	0.503
42075	0.026	0.008	0.062	0.178	0.725
42077	0.014	0.004	0.053	0.103	0.826
42079	0.016	0.024	0.045	0.136	0.779
42081	0.062	0.057	0.06	0.207	0.614
42083	0.012	0.004	0.03	0.134	0.82
42085	0.028	0.044	0.094	0.215	0.62
42087	0.084	0.049	0.129	0.171	0.567
42089	0.019	0.047	0.052	0.061	0.822
42091	0.016	0.019	0.044	0.16	0.761
42093	0.042	0.022	0.079	0.143	0.714
42095	0.015	0.012	0.034	0.118	0.822
42097	0.064	0.013	0.078	0.197	0.649
42099	0.035	0.017	0.1	0.199	0.649
42101	0.023	0.012	0.051	0.12	0.794
42103	0.01	0.013	0.036	0.165	0.777
42105	0.061	0.011	0.061	0.12	0.747
42107	0.066	0.002	0.048	0.173	0.711
42109	0.062	0.036	0.104	0.226	0.572
42111	0.041	0.04	0.188	0.267	0.464
42113	0.025	0.035	0.038	0.141	0.76
42115	0.046	0.029	0.038	0.065	0.822
42117	0.098	0.044	0.111	0.183	0.565
42119	0.078	0.032	0.103	0.211	0.576
42121	0.004	0.015	0.115	0.152	0.714
42123	0.009	0.019	0.114	0.224	0.634
42125	0.052	0.02	0.045	0.149	0.735
42127	0.004	0.009	0.08	0.08	0.828
42129	0.017	0.07	0.069	0.172	0.673
42131	0.035	0.008	0.049	0.072	0.836
42133	0.018	0.024	0.091	0.174	0.693
44001	0.007	0.003	0.02	0.143	0.827
44003	0.016	0.003	0.05	0.123	0.807
44005	0.004	0.006	0.046	0.129	0.815
44007	0.022	0.014	0.05	0.159	0.754
44009	0.012	0.022	0.034	0.126	0.807
45001	0.117	0.102	0.243	0.166	0.371
45003	0.1	0.086	0.116	0.193	0.505
45005	0.172	0.211	0.012	0.22	0.384
45007	0.069	0.065	0.138	0.26	0.468
45009	0.167	0.031	0.053	0.235	0.515
45011	0.169	0.067	0.035	0.281	0.447
45013	0.038	0.027	0.055	0.147	0.733
45015	0.05	0.074	0.107	0.171	0.597
45017	0.06	0.047	0.129	0.173	0.592
45019	0.036	0.059	0.062	0.186	0.657
45021	0.088	0.083	0.121	0.179	0.528
45023	0.151	0.065	0.055	0.23	0.5
45025	0.117	0.079	0.148	0.129	0.526
45027	0.083	0.147	0.128	0.157	0.486
45029	0.088	0.077	0.094	0.1	0.641
45031	0.153	0.083	0.114	0.103	0.548
45033	0.156	0.056	0.188	0.17	0.43
45035	0.071	0.071	0.123	0.16	0.576
45037	0.099	0.084	0.083	0.165	0.569
45039	0.046	0.032	0.046	0.31	0.566
45041	0.114	0.08	0.133	0.109	0.564
45043	0.04	0.014	0.079	0.191	0.675
45045	0.049	0.079	0.153	0.206	0.513
45047	0.074	0.087	0.226	0.151	0.463
45049	0.13	0.156	0.025	0.148	0.542
45051	0.086	0.052	0.081	0.19	0.591
45053	0.129	0.055	0.056	0.201	0.559
45055	0.062	0.019	0.114	0.189	0.616
45057	0.067	0.068	0.048	0.224	0.594
45059	0.09	0.102	0.164	0.214	0.43
45061	0.123	0.06	0.154	0.157	0.506
45063	0.044	0.038	0.129	0.214	0.576
45065	0.072	0.115	0.106	0.202	0.505
45067	0.28	0.036	0.182	0.127	0.376
45069	0.155	0.027	0.153	0.149	0.515
45071	0.078	0.128	0.062	0.202	0.529
45073	0.142	0.061	0.103	0.221	0.472
45075	0.135	0.056	0.111	0.169	0.529
45077	0.066	0.059	0.146	0.236	0.493
45079	0.03	0.016	0.099	0.235	0.62
45081	0.053	0.095	0.117	0.206	0.529
45083	0.06	0.091	0.126	0.227	0.496
45085	0.128	0.054	0.154	0.182	0.483
45087	0.14	0.02	0.074	0.305	0.462
45089	0.034	0.057	0.12	0.158	0.631
45091	0.057	0.074	0.062	0.204	0.602
46003	0.239	0.073	0.236	0.15	0.302
46005	0.234	0.104	0.147	0.173	0.342
46007	0.147	0.052	0.117	0.327	0.356
46009	0.108	0.205	0.198	0.193	0.295
46011	0.04	0.124	0.263	0.229	0.345
46013	0.256	0.098	0.142	0.166	0.338
46015	0.163	0.075	0.168	0.264	0.33
46017	0.161	0.059	0.157	0.253	0.371
46019	0.12	0.085	0.153	0.204	0.438
46021	0.155	0.167	0.122	0.277	0.278
46023	0.117	0.149	0.254	0.192	0.288
46025	0.211	0.147	0.172	0.125	0.345
46027	0.091	0.178	0.116	0.243	0.373
46029	0.185	0.144	0.25	0.117	0.305
46031	0.144	0.19	0.134	0.285	0.247
46033	0.132	0.088	0.156	0.229	0.396
46035	0.249	0.074	0.303	0.107	0.267
46037	0.256	0.14	0.175	0.118	0.311
46039	0.136	0.111	0.275	0.169	0.309
46041	0.069	0.057	0.141	0.237	0.497
46043	0.189	0.108	0.269	0.146	0.289
46045	0.217	0.088	0.15	0.197	0.348
46047	0.141	0.093	0.152	0.25	0.364
46049	0.205	0.079	0.146	0.198	0.372
46051	0.259	0.129	0.232	0.12	0.26
46053	0.113	0.118	0.206	0.264	0.299
46055	0.117	0.051	0.151	0.241	0.44
46057	0.119	0.143	0.256	0.137	0.345
46059	0.182	0.071	0.147	0.225	0.376
46061	0.185	0.107	0.269	0.148	0.29
46063	0.105	0.068	0.145	0.235	0.446
46065	0.091	0.027	0.109	0.251	0.523
46067	0.129	0.163	0.199	0.188	0.321
46069	0.142	0.053	0.142	0.234	0.43
46071	0.129	0.052	0.136	0.281	0.401
46073	0.233	0.073	0.185	0.184	0.326
46075	0.115	0.03	0.101	0.293	0.462
46077	0.128	0.13	0.217	0.184	0.341
46079	0.11	0.144	0.183	0.237	0.326
46081	0.124	0.089	0.154	0.205	0.428
46083	0.078	0.181	0.106	0.25	0.385
46085	0.13	0.046	0.119	0.287	0.419
46087	0.113	0.154	0.144	0.238	0.35
46089	0.204	0.091	0.161	0.22	0.323
46091	0.196	0.146	0.183	0.161	0.313
46093	0.123	0.078	0.161	0.214	0.425
46095	0.136	0.028	0.091	0.34	0.405
46097	0.16	0.123	0.216	0.218	0.284
46099	0.087	0.187	0.106	0.251	0.369
46101	0.078	0.183	0.165	0.245	0.329
46102	0.15	0.075	0.139	0.281	0.355
46103	0.127	0.078	0.159	0.222	0.414
46105	0.132	0.081	0.185	0.243	0.36
46107	0.131	0.067	0.147	0.225	0.431
46109	0.241	0.175	0.164	0.094	0.326
46111	0.252	0.095	0.222	0.155	0.276
46115	0.232	0.103	0.132	0.173	0.36
46117	0.08	0.024	0.104	0.245	0.546
46119	0.084	0.031	0.128	0.228	0.528
46121	0.147	0.031	0.097	0.368	0.357
46123	0.142	0.066	0.138	0.311	0.343
46125	0.084	0.176	0.115	0.251	0.375
46127	0.082	0.177	0.12	0.204	0.418
46129	0.14	0.144	0.132	0.265	0.318
46135	0.109	0.205	0.167	0.26	0.259
46137	0.105	0.053	0.172	0.235	0.434
47001	0.088	0.105	0.112	0.215	0.48
47003	0.164	0.093	0.246	0.248	0.249
47005	0.169	0.109	0.206	0.21	0.306
47007	0.082	0.122	0.131	0.251	0.415
47009	0.069	0.089	0.097	0.183	0.562
47011	0.121	0.098	0.126	0.282	0.373
47013	0.059	0.075	0.204	0.109	0.554
47015	0.209	0.089	0.238	0.182	0.282
47017	0.179	0.088	0.163	0.234	0.337
47019	0.115	0.031	0.151	0.215	0.487
47021	0.018	0.067	0.155	0.28	0.48
47023	0.108	0.068	0.122	0.362	0.34
47025	0.163	0.114	0.091	0.236	0.397
47027	0.099	0.105	0.264	0.126	0.406
47029	0.197	0.118	0.082	0.171	0.431
47031	0.165	0.09	0.174	0.208	0.363
47033	0.14	0.078	0.123	0.226	0.432
47035	0.096	0.093	0.201	0.214	0.395
47037	0.02	0.037	0.086	0.181	0.677
47039	0.175	0.171	0.168	0.168	0.318
47041	0.157	0.152	0.231	0.132	0.328
47043	0.054	0.076	0.079	0.336	0.455
47045	0.175	0.17	0.12	0.204	0.331
47047	0.022	0.001	0.089	0.205	0.682
47049	0.123	0.122	0.157	0.162	0.437
47051	0.166	0.092	0.13	0.201	0.411
47053	0.182	0.086	0.111	0.26	0.361
47055	0.061	0.068	0.192	0.237	0.441
47057	0.126	0.134	0.129	0.221	0.39
47059	0.125	0.178	0.033	0.254	0.41
47061	0.142	0.165	0.151	0.212	0.33
47063	0.157	0.113	0.121	0.189	0.42
47065	0.116	0.116	0.129	0.229	0.411
47067	0.148	0.243	0.059	0.14	0.41
47069	0.035	0.056	0.215	0.261	0.434
47071	0.142	0.14	0.107	0.241	0.371
47073	0.118	0.146	0.132	0.196	0.407
47075	0.086	0.026	0.169	0.155	0.565
47077	0.127	0.107	0.156	0.282	0.327
47079	0.092	0.09	0.264	0.207	0.347
47081	0.063	0.057	0.082	0.217	0.581
47083	0.108	0.049	0.116	0.337	0.39
47085	0.121	0.095	0.156	0.267	0.36
47087	0.138	0.128	0.249	0.093	0.392
47089	0.151	0.092	0.149	0.176	0.431
47091	0.107	0.079	0.141	0.261	0.412
47093	0.036	0.032	0.144	0.209	0.579
47095	0.133	0.143	0.166	0.201	0.357
47097	0.064	0.094	0.191	0.142	0.508
47099	0.074	0.129	0.156	0.192	0.45
47101	0.098	0.084	0.198	0.236	0.385
47103	0.126	0.187	0.106	0.214	0.367
47105	0.041	0.06	0.107	0.219	0.573
47107	0.077	0.087	0.155	0.298	0.384
47109	0.107	0.105	0.115	0.274	0.4
47111	0.146	0.085	0.215	0.083	0.47
47113	0.1	0.056	0.129	0.334	0.381
47115	0.115	0.122	0.135	0.247	0.381
47117	0.219	0.129	0.139	0.164	0.349
47119	0.119	0.07	0.19	0.156	0.466
47121	0.08	0.118	0.136	0.214	0.453
47123	0.07	0.138	0.165	0.229	0.397
47125	0.083	0.063	0.203	0.228	0.423
47127	0.173	0.101	0.176	0.235	0.316
47129	0.08	0.113	0.077	0.318	0.413
47131	0.117	0.125	0.187	0.246	0.325
47133	0.12	0.131	0.228	0.128	0.393
47135	0.18	0.148	0.137	0.159	0.376
47137	0.105	0.128	0.219	0.133	0.416
47139	0.089	0.069	0.15	0.24	0.452
47141	0.16	0.164	0.207	0.099	0.369
47143	0.096	0.154	0.113	0.154	0.483
47145	0.074	0.142	0.105	0.274	0.405
47147	0.187	0.069	0.081	0.159	0.504
47149	0.081	0.073	0.121	0.215	0.51
47151	0.121	0.144	0.154	0.219	0.362
47153	0.108	0.087	0.177	0.289	0.339
47155	0.039	0.072	0.15	0.183	0.556
47157	0.034	0.025	0.105	0.184	0.653
47159	0.088	0.091	0.202	0.113	0.507
47161	0.071	0.045	0.15	0.214	0.521
47163	0.096	0.091	0.143	0.187	0.483
47165	0.104	0.069	0.14	0.196	0.49
47167	0.081	0.025	0.223	0.138	0.533
47169	0.112	0.063	0.241	0.133	0.452
47171	0.049	0.041	0.108	0.306	0.497
47173	0.086	0.145	0.167	0.181	0.421
47175	0.145	0.147	0.147	0.239	0.323
47177	0.14	0.107	0.189	0.212	0.352
47179	0.061	0.074	0.166	0.218	0.48
47181	0.089	0.215	0.136	0.147	0.414
47183	0.093	0.135	0.228	0.251	0.292
47185	0.185	0.205	0.162	0.115	0.333
47187	0.019	0.073	0.091	0.212	0.604
47189	0.105	0.035	0.099	0.192	0.568
48001	0.172	0.104	0.095	0.088	0.541
48003	0.09	0.044	0.067	0.202	0.597
48005	0.121	0.064	0.079	0.2	0.536
48007	0.006	0.005	0.17	0.074	0.746
48009	0.081	0.053	0.099	0.091	0.676
48011	0.08	0.066	0.116	0.25	0.488
48013	0.001	0.01	0.032	0.156	0.802
48015	0.006	0.024	0.054	0.224	0.692
48017	0.018	0.106	0.06	0.217	0.598
48019	0.073	0.018	0.07	0.09	0.749
48021	0.007	0.02	0.084	0.161	0.729
48023	0.066	0.075	0.134	0.104	0.62
48025	0.001	0.003	0.052	0.19	0.753
48027	0.01	0.035	0.078	0.205	0.672
48029	0.015	0.016	0.057	0.09	0.822
48031	0.005	0.019	0.115	0.074	0.788
48033	0.039	0.115	0.125	0.107	0.614
48035	0.031	0.154	0.102	0.248	0.465
48037	0.058	0.134	0.114	0.221	0.473
48039	0.021	0.042	0.075	0.17	0.691
48041	0.012	0.038	0.067	0.347	0.537
48043	0.011	0.012	0.077	0.172	0.728
48045	0.105	0.077	0.113	0.187	0.518
48047	0.061	0.004	0.166	0.09	0.678
48049	0.085	0.077	0.066	0.239	0.534
48051	0.02	0.072	0.071	0.281	0.555
48053	0.031	0.039	0.055	0.194	0.682
48055	0.001	0.001	0.063	0.185	0.751
48057	0.019	0.028	0.179	0.071	0.703
48059	0.049	0.06	0.119	0.205	0.567
48061	0.035	0.061	0.034	0.056	0.813
48063	0.017	0.064	0.213	0.235	0.471
48065	0.099	0.064	0.124	0.252	0.462
48067	0.034	0.145	0.17	0.209	0.441
48069	0.057	0.051	0.043	0.296	0.553
48071	0.027	0.094	0.078	0.201	0.6
48073	0.123	0.063	0.148	0.192	0.475
48075	0.147	0.124	0.189	0.206	0.334
48077	0.066	0.049	0.105	0.087	0.693
48079	0.029	0.078	0.068	0.229	0.595
48081	0.039	0.056	0.093	0.241	0.572
48083	0.053	0.048	0.084	0.259	0.556
48085	0.021	0.026	0.054	0.181	0.719
48087	0.239	0.142	0.176	0.16	0.284
48089	0.004	0.044	0.078	0.228	0.645
48091	0.007	0.044	0.063	0.146	0.74
48093	0.045	0.075	0.059	0.2	0.621
48095	0.012	0.029	0.072	0.279	0.607
48097	0.118	0.026	0.056	0.207	0.594
48099	0.015	0.027	0.142	0.194	0.622
48101	0.107	0.106	0.188	0.176	0.423
48103	0.08	0.056	0.096	0.199	0.57
48105	0.026	0.071	0.072	0.225	0.606
48107	0.031	0.071	0.058	0.227	0.613
48109	0.125	0.006	0.039	0.176	0.654
48111	0.119	0.074	0.123	0.289	0.396
48113	0.024	0.019	0.059	0.141	0.757
48115	0.03	0.023	0.074	0.115	0.759
48117	0.063	0.063	0.095	0.284	0.494
48119	0.04	0.074	0.094	0.285	0.507
48121	0.016	0.025	0.046	0.204	0.709
48123	0.003	0.019	0.091	0.061	0.827
48125	0.032	0.071	0.111	0.254	0.532
48127	0.021	0.059	0.097	0.133	0.69
48129	0.139	0.065	0.147	0.21	0.439
48131	0.122	0.003	0.132	0.053	0.691
48133	0.055	0.089	0.104	0.195	0.557
48135	0.085	0.047	0.076	0.204	0.588
48137	0.016	0.047	0.145	0.101	0.691
48139	0.027	0.017	0.044	0.19	0.722
48141	0.007	0.007	0.033	0.075	0.877
48143	0.017	0.096	0.075	0.202	0.609
48145	0.009	0.029	0.061	0.187	0.715
48147	0.117	0.126	0.131	0.226	0.4
48149	0.006	0.05	0.259	0.142	0.543
48151	0.097	0.097	0.109	0.186	0.51
48153	0.049	0.063	0.043	0.216	0.629
48155	0.045	0.101	0.23	0.147	0.477
48157	0.024	0.03	0.057	0.115	0.774
48159	0.013	0.055	0.131	0.327	0.474
48161	0.025	0.121	0.085	0.137	0.632
48163	0.136	0.007	0.038	0.108	0.71
48165	0.121	0.034	0.033	0.176	0.636
48167	0.033	0.037	0.105	0.207	0.617
48169	0.034	0.079	0.067	0.207	0.612
48171	0.095	0.091	0.107	0.114	0.592
48173	0.069	0.054	0.058	0.234	0.586
48175	0.001	0.025	0.16	0.077	0.737
48177	0.001	0.001	0.091	0.078	0.828
48179	0.139	0.069	0.134	0.222	0.436
48181	0.064	0.063	0.095	0.247	0.53
48183	0.053	0.064	0.074	0.186	0.623
48185	0.025	0.047	0.04	0.348	0.54
48187	0.027	0.022	0.032	0.125	0.794
48189	0.066	0.058	0.028	0.239	0.609
48191	0.179	0.065	0.19	0.157	0.41
48193	0.019	0.085	0.137	0.267	0.493
48195	0.136	0.076	0.126	0.234	0.428
48197	0.042	0.116	0.237	0.223	0.381
48199	0.021	0.054	0.102	0.187	0.636
48201	0.019	0.024	0.069	0.152	0.736
48203	0.086	0.037	0.088	0.19	0.599
48205	0.1	0.07	0.116	0.28	0.434
48207	0.087	0.128	0.137	0.209	0.439
48209	0	0.007	0.022	0.115	0.855
48211	0.189	0.125	0.139	0.138	0.409
48213	0.043	0.072	0.127	0.197	0.56
48215	0.055	0.003	0.033	0.084	0.826
48217	0.047	0.083	0.029	0.242	0.599
48219	0.031	0.072	0.06	0.237	0.6
48221	0.009	0.122	0.135	0.124	0.61
48223	0.054	0.026	0.062	0.369	0.488
48225	0.182	0.09	0.104	0.15	0.474
48227	0.063	0.063	0.061	0.218	0.596
48229	0.013	0.003	0.076	0.029	0.88
48231	0.069	0.072	0.082	0.285	0.492
48233	0.112	0.064	0.128	0.249	0.447
48235	0.009	0.047	0.058	0.276	0.61
48237	0.009	0.018	0.012	0.37	0.592
48239	0.02	0.062	0.146	0.075	0.696
48241	0.04	0.055	0.068	0.125	0.712
48243	0.009	0.005	0.038	0.186	0.763
48245	0.036	0.075	0.11	0.171	0.608
48247	0.071	0.003	0.079	0.099	0.748
48249	0.057	0.007	0.137	0.051	0.748
48251	0.024	0.079	0.056	0.199	0.642
48253	0.064	0.079	0.121	0.193	0.543
48255	0	0.001	0.104	0.145	0.75
48257	0.063	0.058	0.041	0.155	0.682
48259	0.002	0.059	0.076	0.158	0.705
48261	0.04	0.01	0.08	0.098	0.772
48263	0.069	0.168	0.172	0.167	0.424
48265	0.059	0.149	0.167	0.154	0.472
48267	0.036	0.126	0.165	0.207	0.466
48269	0.065	0.108	0.177	0.254	0.397
48271	0.004	0.059	0.121	0.084	0.733
48273	0.063	0.015	0.075	0.121	0.726
48275	0.063	0.105	0.184	0.145	0.502
48277	0.054	0.095	0.135	0.238	0.478
48279	0.038	0.065	0.046	0.255	0.597
48281	0.024	0.019	0.077	0.233	0.648
48283	0.152	0.002	0.083	0.097	0.667
48285	0.008	0.029	0.114	0.114	0.736
48287	0.035	0.122	0.148	0.142	0.553
48289	0.089	0.078	0.111	0.192	0.531
48291	0.019	0.034	0.114	0.182	0.65
48293	0.005	0.086	0.061	0.087	0.762
48295	0.147	0.143	0.099	0.195	0.415
48297	0.005	0.003	0.081	0.189	0.722
48299	0.08	0.036	0.056	0.214	0.615
48301	0.109	0.047	0.081	0.221	0.543
48303	0.031	0.072	0.056	0.232	0.61
48305	0.032	0.068	0.054	0.222	0.624
48307	0.031	0.053	0.09	0.34	0.486
48309	0.022	0.049	0.046	0.161	0.721
48311	0.043	0.002	0.21	0.203	0.542
48313	0.065	0.032	0.097	0.337	0.469
48315	0.076	0.067	0.118	0.211	0.528
48317	0.075	0.043	0.056	0.235	0.591
48319	0.043	0.091	0.163	0.247	0.456
48321	0.004	0.051	0.113	0.161	0.67
48323	0.005	0.091	0.129	0.13	0.645
48325	0.006	0.017	0.07	0.155	0.753
48327	0.013	0.048	0.088	0.289	0.562
48329	0.083	0.044	0.066	0.219	0.588
48331	0.006	0.019	0.07	0.228	0.679
48333	0.041	0.117	0.062	0.261	0.518
48335	0.168	0.131	0.087	0.126	0.489
48337	0.041	0.08	0.129	0.22	0.529
48339	0.031	0.073	0.061	0.145	0.69
48341	0.101	0.064	0.123	0.27	0.441
48343	0.038	0.116	0.21	0.176	0.46
48345	0.067	0.053	0.084	0.206	0.591
48347	0.094	0.06	0.097	0.221	0.528
48349	0.006	0.024	0.114	0.217	0.639
48351	0.057	0.049	0.11	0.152	0.631
48353	0.09	0.072	0.108	0.187	0.544
48355	0.024	0.034	0.028	0.079	0.835
48357	0.15	0.104	0.105	0.201	0.439
48359	0.084	0.065	0.109	0.278	0.464
48361	0.051	0.07	0.105	0.157	0.618
48363	0.027	0.023	0.029	0.181	0.74
48365	0.027	0.033	0.211	0.281	0.448
48367	0.02	0.048	0.055	0.206	0.671
48369	0.033	0.081	0.089	0.277	0.521
48371	0.05	0.051	0.15	0.197	0.551
48373	0.016	0.099	0.052	0.144	0.689
48375	0.067	0.063	0.113	0.272	0.485
48377	0.003	0.003	0.032	0.174	0.789
48379	0.143	0.062	0.038	0.245	0.512
48381	0.063	0.063	0.109	0.274	0.491
48383	0.058	0.061	0.064	0.237	0.58
48385	0.03	0.065	0.164	0.187	0.554
48387	0.059	0.136	0.098	0.254	0.452
48389	0.07	0.04	0.086	0.204	0.6
48391	0.002	0.011	0.235	0.073	0.678
48393	0.16	0.074	0.133	0.205	0.427
48395	0.014	0.041	0.055	0.334	0.555
48397	0.033	0.041	0.101	0.18	0.645
48399	0.033	0.039	0.104	0.228	0.596
48401	0.038	0.04	0.101	0.331	0.491
48403	0.105	0.046	0.103	0.15	0.596
48405	0.096	0.033	0.07	0.222	0.58
48407	0.009	0.064	0.082	0.112	0.733
48409	0.015	0.02	0.053	0.074	0.838
48411	0.026	0.101	0.099	0.255	0.519
48413	0.002	0.029	0.054	0.271	0.644
48415	0.143	0.177	0.127	0.09	0.463
48417	0.061	0.099	0.14	0.183	0.518
48419	0.025	0.035	0.117	0.369	0.453
48421	0.125	0.073	0.129	0.267	0.406
48423	0.108	0.091	0.104	0.168	0.529
48425	0.027	0.161	0.133	0.201	0.477
48427	0.039	0.008	0.023	0.1	0.831
48429	0.058	0.149	0.221	0.127	0.445
48431	0.032	0.077	0.067	0.252	0.572
48433	0.084	0.122	0.12	0.224	0.449
48435	0.009	0.042	0.08	0.209	0.659
48437	0.084	0.075	0.053	0.255	0.532
48439	0.023	0.034	0.077	0.144	0.722
48441	0.054	0.059	0.12	0.191	0.575
48443	0.021	0.061	0.167	0.154	0.597
48445	0.034	0.066	0.061	0.226	0.613
48447	0.073	0.135	0.172	0.118	0.501
48449	0.019	0.117	0.191	0.264	0.409
48451	0.007	0.038	0.071	0.271	0.613
48453	0.015	0.008	0.024	0.158	0.795
48455	0.052	0.077	0.065	0.181	0.625
48457	0.021	0.066	0.054	0.155	0.703
48459	0.051	0.076	0.104	0.179	0.59
48461	0.077	0.058	0.088	0.21	0.567
48463	0.014	0.022	0.136	0.081	0.747
48465	0.003	0.05	0.09	0.072	0.784
48467	0.138	0.143	0.151	0.161	0.407
48469	0.008	0.039	0.138	0.058	0.757
48471	0.029	0.058	0.079	0.179	0.655
48473	0.016	0.06	0.07	0.236	0.618
48475	0.08	0.052	0.094	0.197	0.577
48477	0.02	0.031	0.087	0.328	0.534
48479	0.033	0	0.064	0.136	0.767
48481	0.011	0.072	0.076	0.216	0.625
48483	0.23	0.139	0.158	0.126	0.346
48485	0.073	0.046	0.096	0.092	0.692
48487	0.046	0.081	0.171	0.168	0.535
48489	0.034	0.015	0.067	0.064	0.82
48491	0.016	0.033	0.065	0.177	0.708
48493	0	0.003	0.072	0.208	0.716
48495	0.087	0.05	0.086	0.196	0.581
48497	0.008	0.127	0.046	0.17	0.649
48499	0.046	0.073	0.071	0.283	0.526
48501	0.084	0.035	0.065	0.254	0.561
48503	0.062	0.063	0.086	0.144	0.645
48505	0.047	0.001	0.035	0.138	0.779
48507	0.036	0.075	0.115	0.138	0.635
49001	0.099	0.026	0.271	0.283	0.32
49003	0.084	0.116	0.111	0.27	0.419
49005	0.09	0.108	0.08	0.31	0.411
49007	0.107	0.134	0.114	0.293	0.353
49009	0.091	0.296	0.102	0.33	0.181
49011	0.035	0.055	0.077	0.314	0.518
49013	0.051	0.259	0.033	0.469	0.188
49015	0.122	0.109	0.106	0.239	0.424
49017	0.062	0.056	0.232	0.264	0.386
49019	0.056	0.111	0.098	0.176	0.558
49021	0.065	0.036	0.22	0.262	0.417
49023	0.335	0.023	0.079	0.193	0.369
49025	0.061	0.041	0.226	0.227	0.445
49027	0.432	0.023	0.088	0.171	0.286
49029	0.092	0.155	0.053	0.37	0.33
49031	0.097	0.061	0.266	0.3	0.276
49033	0.077	0.113	0.062	0.327	0.421
49035	0.028	0.032	0.094	0.202	0.644
49037	0.04	0.064	0.042	0.21	0.644
49039	0.107	0.043	0.104	0.273	0.473
49041	0.152	0.096	0.171	0.3	0.282
49043	0.018	0.1	0.054	0.177	0.651
49045	0.002	0.114	0.141	0.212	0.532
49047	0.121	0.269	0.046	0.389	0.175
49049	0.068	0.035	0.195	0.244	0.458
49051	0.039	0.063	0.056	0.254	0.588
49053	0.034	0.056	0.123	0.269	0.518
49055	0.068	0.129	0.114	0.269	0.42
49057	0.066	0.089	0.072	0.287	0.486
50001	0.029	0.045	0.086	0.139	0.702
50003	0.028	0.058	0.061	0.084	0.77
50005	0.076	0.121	0.078	0.154	0.57
50007	0.031	0.07	0.065	0.115	0.718
50009	0.054	0.075	0.083	0.158	0.631
50011	0.042	0.058	0.056	0.134	0.71
50013	0.031	0.039	0.088	0.113	0.729
50015	0.027	0.181	0.062	0.141	0.59
50017	0.029	0.095	0.073	0.107	0.696
50019	0.07	0.174	0.061	0.149	0.546
50021	0.031	0.037	0.088	0.205	0.639
50023	0.051	0.19	0.104	0.05	0.604
50025	0.075	0.031	0.035	0.151	0.708
50027	0.061	0.055	0.03	0.227	0.627
51001	0.001	0.019	0.055	0.1	0.824
51003	0.023	0.022	0.054	0.093	0.81
51005	0.145	0.034	0.123	0.174	0.525
51007	0.013	0.069	0.116	0.13	0.672
51009	0.064	0.033	0.074	0.204	0.625
51011	0.063	0.018	0.105	0.204	0.61
51013	0.01	0.018	0.035	0.187	0.75
51015	0.029	0.037	0.061	0.173	0.701
51017	0.099	0.045	0.121	0.165	0.57
51019	0.052	0.09	0.115	0.248	0.495
51021	0.081	0.114	0.2	0.166	0.44
51023	0.043	0.079	0.106	0.221	0.551
51025	0.006	0.003	0.158	0.145	0.688
51027	0.037	0.099	0.219	0.181	0.463
51029	0.02	0.01	0.124	0.132	0.714
51031	0.07	0.04	0.083	0.222	0.585
51033	0.047	0.032	0.031	0.14	0.75
51035	0.064	0.073	0.084	0.285	0.496
51036	0.017	0.02	0.103	0.177	0.683
51037	0.084	0.025	0.148	0.133	0.61
51041	0.026	0.03	0.08	0.216	0.649
51043	0.013	0.036	0.057	0.154	0.74
51045	0.017	0.022	0.148	0.182	0.632
51047	0.053	0.068	0.013	0.213	0.653
51049	0.012	0.055	0.098	0.137	0.699
51051	0.031	0.129	0.129	0.182	0.528
51053	0.022	0.016	0.104	0.193	0.664
51057	0.016	0.081	0.181	0.16	0.563
51059	0.018	0.016	0.054	0.163	0.748
51061	0.04	0.013	0.042	0.133	0.772
51063	0.079	0.063	0.092	0.256	0.51
51065	0.037	0.014	0.077	0.1	0.772
51067	0.074	0.098	0.069	0.189	0.57
51069	0.026	0.048	0.048	0.264	0.614
51071	0.066	0.09	0.14	0.137	0.567
51073	0.003	0.004	0.035	0.234	0.724
51075	0.034	0.043	0.065	0.097	0.761
51077	0.141	0.065	0.07	0.196	0.527
51079	0.011	0.038	0.052	0.153	0.747
51081	0.014	0.002	0.145	0.158	0.681
51083	0.092	0.028	0.072	0.165	0.643
51085	0.043	0.052	0.087	0.25	0.568
51087	0.04	0.037	0.071	0.191	0.662
51089	0.063	0.085	0.132	0.154	0.566
51091	0.059	0.041	0.103	0.197	0.599
51093	0.039	0.055	0.059	0.277	0.569
51095	0.006	0.008	0.005	0.231	0.75
51097	0.007	0.041	0.149	0.191	0.612
51099	0.151	0.044	0.086	0.053	0.666
51101	0.012	0.072	0.201	0.169	0.546
51103	0.001	0.022	0.121	0.178	0.678
51105	0.107	0.135	0.072	0.104	0.582
51107	0.014	0.012	0.038	0.173	0.763
51109	0.025	0.045	0.036	0.146	0.748
51111	0.068	0.006	0.134	0.143	0.649
51113	0.017	0.097	0.064	0.154	0.668
51115	0.001	0.001	0.049	0.19	0.76
51117	0.063	0.022	0.128	0.14	0.648
51119	0.001	0.004	0.103	0.237	0.654
51121	0.056	0.042	0.09	0.171	0.64
51125	0.011	0.015	0.106	0.167	0.701
51127	0.008	0.035	0.079	0.17	0.708
51131	0.001	0.037	0.089	0.112	0.761
51133	0.017	0.038	0.095	0.141	0.71
51135	0.044	0.014	0.099	0.182	0.661
51137	0.033	0.132	0.038	0.153	0.643
51139	0.025	0.052	0.237	0.166	0.52
51141	0.042	0.098	0.166	0.203	0.491
51143	0.106	0.045	0.147	0.135	0.567
51145	0.012	0.092	0.074	0.162	0.66
51147	0.059	0.009	0.138	0.154	0.64
51149	0.033	0.033	0.127	0.189	0.619
51153	0.047	0.027	0.055	0.11	0.761
51155	0.083	0.055	0.166	0.173	0.523
51157	0.023	0.019	0.077	0.164	0.717
51159	0.015	0.07	0.109	0.167	0.64
51161	0.065	0.045	0.077	0.205	0.607
51163	0.015	0.112	0.068	0.13	0.675
51165	0.034	0.062	0.139	0.212	0.553
51167	0.082	0.137	0.212	0.24	0.329
51169	0.074	0.124	0.121	0.157	0.523
51171	0.023	0.039	0.136	0.288	0.514
51173	0.087	0.079	0.237	0.182	0.415
51175	0.019	0.013	0.063	0.216	0.69
51177	0.05	0.019	0.03	0.115	0.785
51179	0.045	0.035	0.097	0.095	0.728
51181	0.006	0.021	0.003	0.249	0.721
51183	0.012	0.012	0.06	0.218	0.698
51185	0.062	0.104	0.264	0.16	0.41
51187	0.027	0.017	0.088	0.2	0.669
51191	0.123	0.099	0.144	0.266	0.368
51193	0.079	0.036	0.127	0.127	0.631
51195	0.025	0.075	0.099	0.158	0.643
51197	0.096	0.075	0.172	0.21	0.447
51199	0.006	0.021	0.024	0.162	0.786
51510	0.032	0.02	0.065	0.17	0.712
51520	0.174	0.125	0.075	0.273	0.352
51530	0.018	0.15	0.068	0.125	0.639
51540	0.023	0.019	0.05	0.075	0.833
51550	0.018	0.025	0.095	0.182	0.68
51570	0.044	0.045	0.126	0.177	0.608
51580	0.184	0.017	0.133	0.188	0.478
51590	0.087	0.043	0.209	0.127	0.534
51595	0.015	0.001	0.148	0.148	0.687
51600	0.025	0.015	0.075	0.173	0.712
51610	0.007	0.033	0.038	0.158	0.765
51620	0.01	0.027	0.115	0.192	0.656
51630	0.038	0.007	0.034	0.136	0.784
51640	0.071	0.086	0.049	0.243	0.551
51650	0.008	0.025	0.078	0.118	0.771
51660	0.029	0.066	0.129	0.205	0.571
51670	0.038	0.038	0.149	0.187	0.588
51678	0.01	0.146	0.059	0.121	0.663
51680	0.07	0.031	0.073	0.222	0.603
51683	0.033	0.023	0.027	0.175	0.742
51685	0.071	0.025	0.017	0.167	0.72
51690	0.063	0.076	0.134	0.163	0.564
51700	0.01	0.038	0.035	0.145	0.772
51710	0.004	0.03	0.087	0.215	0.664
51720	0.017	0.056	0.085	0.155	0.687
51730	0.034	0.033	0.116	0.177	0.64
51735	0.004	0.014	0.073	0.219	0.69
51740	0	0.019	0.122	0.225	0.634
51750	0.075	0.045	0.11	0.177	0.593
51760	0.06	0.031	0.092	0.275	0.541
51770	0.07	0.05	0.088	0.212	0.58
51775	0.064	0.039	0.068	0.199	0.63
51790	0.027	0.039	0.057	0.158	0.718
51800	0.007	0.048	0.171	0.208	0.565
51810	0.017	0.041	0.062	0.202	0.678
51820	0.027	0.028	0.049	0.186	0.71
51830	0.005	0.009	0.001	0.249	0.737
51840	0.025	0.056	0.032	0.277	0.611
53001	0.077	0.051	0.072	0.076	0.724
53003	0.014	0.029	0.115	0.32	0.522
53005	0.084	0.011	0.064	0.08	0.761
53007	0.062	0.048	0.029	0.297	0.564
53009	0.001	0	0.028	0.225	0.746
53011	0.02	0.021	0.048	0.17	0.741
53013	0.08	0.031	0.079	0.223	0.586
53015	0.041	0.02	0.098	0.216	0.625
53017	0.067	0.047	0.042	0.271	0.573
53019	0.082	0.066	0.082	0.204	0.565
53021	0.106	0.013	0.059	0.069	0.753
53023	0.031	0.029	0.085	0.292	0.563
53025	0.032	0.052	0.108	0.146	0.661
53027	0.03	0.009	0.087	0.213	0.662
53029	0.015	0.009	0.066	0.15	0.759
53031	0.011	0	0.064	0.171	0.754
53033	0.016	0.02	0.05	0.191	0.724
53035	0.024	0.003	0.051	0.136	0.786
53037	0.032	0.084	0.033	0.179	0.672
53039	0.038	0.029	0.113	0.288	0.532
53041	0.033	0.112	0.128	0.111	0.616
53043	0.017	0.086	0.023	0.108	0.765
53045	0.011	0.024	0.091	0.152	0.721
53047	0.042	0.066	0.075	0.199	0.617
53049	0.082	0.016	0.128	0.063	0.712
53051	0.027	0.122	0.052	0.212	0.587
53053	0.028	0.057	0.103	0.206	0.606
53055	0.015	0.004	0.021	0.229	0.73
53057	0.035	0.097	0.037	0.177	0.653
53059	0.019	0.048	0.092	0.08	0.76
53061	0.017	0.014	0.056	0.191	0.721
53063	0.033	0.057	0.08	0.151	0.679
53065	0.05	0.039	0.069	0.257	0.585
53067	0.022	0.051	0.109	0.132	0.685
53069	0.045	0.057	0.079	0.161	0.658
53071	0.083	0.022	0.061	0.193	0.641
53073	0.042	0.028	0.061	0.122	0.747
53075	0.002	0.009	0.049	0.31	0.629
53077	0.012	0.035	0.069	0.143	0.74
54001	0.092	0.031	0.071	0.287	0.519
54003	0.065	0.049	0.196	0.166	0.524
54005	0.097	0.138	0.093	0.197	0.475
54007	0.102	0.131	0.167	0.202	0.398
54009	0.067	0.11	0.195	0.192	0.436
54011	0.092	0.09	0.154	0.186	0.476
54013	0.085	0.07	0.227	0.21	0.408
54015	0.098	0.097	0.162	0.152	0.491
54017	0.187	0.011	0.075	0.307	0.42
54019	0.14	0.088	0.226	0.137	0.409
54021	0.141	0.076	0.144	0.236	0.403
54023	0.1	0.232	0.067	0.193	0.407
54025	0.07	0.03	0.113	0.233	0.554
54027	0.021	0.035	0.088	0.236	0.619
54029	0.072	0.128	0.151	0.19	0.459
54031	0.039	0.152	0.103	0.23	0.476
54033	0.132	0.021	0.071	0.319	0.457
54035	0.111	0.055	0.097	0.216	0.522
54037	0.041	0.038	0.2	0.169	0.552
54039	0.145	0.039	0.064	0.147	0.605
54041	0.161	0.029	0.068	0.288	0.454
54043	0.091	0.077	0.164	0.167	0.501
54045	0.082	0.11	0.116	0.247	0.445
54047	0.07	0.095	0.189	0.226	0.42
54049	0.069	0.06	0.111	0.281	0.479
54051	0.075	0.095	0.077	0.256	0.497
54053	0.081	0.095	0.195	0.149	0.481
54055	0.076	0.152	0.174	0.103	0.495
54057	0.033	0.016	0.042	0.234	0.674
54059	0.084	0.093	0.093	0.172	0.558
54061	0.046	0.077	0.139	0.221	0.517
54063	0.048	0.063	0.116	0.14	0.634
54065	0.025	0.085	0.169	0.258	0.463
54067	0.06	0.088	0.166	0.143	0.542
54069	0.108	0.068	0.092	0.243	0.49
54071	0.06	0.142	0.128	0.214	0.456
54073	0.088	0.108	0.17	0.287	0.346
54075	0.075	0.03	0.17	0.227	0.499
54077	0.057	0.028	0.087	0.247	0.58
54079	0.087	0.048	0.088	0.184	0.593
54081	0.087	0.083	0.257	0.148	0.426
54083	0.098	0.05	0.14	0.265	0.447
54085	0.141	0.059	0.183	0.262	0.356
54087	0.082	0.024	0.191	0.21	0.493
54089	0.053	0.104	0.166	0.111	0.567
54091	0.072	0.032	0.092	0.288	0.517
54093	0.108	0.087	0.048	0.292	0.465
54095	0.083	0.056	0.137	0.272	0.452
54097	0.131	0.039	0.077	0.278	0.475
54099	0.111	0.119	0.186	0.162	0.423
54101	0.065	0.083	0.163	0.211	0.479
54103	0.051	0.067	0.081	0.279	0.521
54105	0.112	0.059	0.219	0.222	0.389
54107	0.094	0.099	0.149	0.277	0.381
54109	0.073	0.098	0.176	0.245	0.408
55001	0.163	0.189	0.227	0.213	0.208
55003	0.078	0.038	0.118	0.363	0.403
55005	0.138	0.163	0.07	0.259	0.37
55007	0.067	0.039	0.107	0.392	0.395
55009	0.069	0.053	0.184	0.208	0.486
55011	0.039	0.106	0.172	0.269	0.414
55013	0.097	0.163	0.082	0.236	0.422
55015	0.064	0.1	0.141	0.33	0.365
55017	0.059	0.098	0.184	0.246	0.414
55019	0.162	0.149	0.158	0.146	0.384
55021	0.035	0.073	0.082	0.222	0.589
55023	0.202	0.033	0.11	0.158	0.497
55025	0.017	0.02	0.092	0.23	0.641
55027	0.11	0.138	0.166	0.2	0.386
55029	0.021	0.03	0.059	0.264	0.627
55031	0.044	0.042	0.092	0.327	0.495
55033	0.062	0.076	0.179	0.266	0.417
55035	0.042	0.076	0.203	0.255	0.424
55037	0.053	0.073	0.143	0.238	0.494
55039	0.121	0.155	0.158	0.244	0.322
55041	0.085	0.053	0.162	0.215	0.484
55043	0.103	0.102	0.18	0.166	0.449
55045	0.092	0.084	0.119	0.269	0.436
55047	0.092	0.122	0.184	0.117	0.486
55049	0.065	0.077	0.092	0.333	0.433
55051	0.04	0.052	0.142	0.248	0.518
55053	0.027	0.1	0.14	0.329	0.404
55055	0.114	0.093	0.096	0.179	0.518
55057	0.113	0.124	0.18	0.232	0.352
55059	0.077	0.083	0.097	0.155	0.589
55061	0.033	0.035	0.112	0.208	0.612
55063	0.064	0.072	0.076	0.289	0.498
55065	0.056	0.098	0.197	0.253	0.396
55067	0.085	0.102	0.142	0.239	0.432
55069	0.101	0.105	0.132	0.204	0.459
55071	0.175	0.089	0.259	0.133	0.345
55073	0.123	0.136	0.165	0.236	0.34
55075	0.093	0.104	0.066	0.258	0.479
55077	0.174	0.191	0.2	0.163	0.271
55078	0.042	0.103	0.31	0.246	0.3
55079	0.053	0.067	0.119	0.264	0.497
55081	0.073	0.03	0.154	0.284	0.46
55083	0.07	0.082	0.186	0.215	0.447
55085	0.057	0.05	0.155	0.186	0.552
55087	0.085	0.124	0.135	0.302	0.353
55089	0.076	0.113	0.091	0.3	0.42
55091	0.071	0.056	0.198	0.233	0.443
55093	0.063	0.094	0.144	0.25	0.449
55095	0.081	0.113	0.154	0.253	0.399
55097	0.157	0.159	0.215	0.188	0.28
55099	0.059	0.081	0.079	0.15	0.631
55101	0.061	0.067	0.167	0.193	0.512
55103	0.312	0.074	0.055	0.116	0.443
55105	0.023	0.139	0.096	0.277	0.464
55107	0.095	0.135	0.106	0.168	0.496
55109	0.101	0.102	0.085	0.342	0.37
55111	0.063	0.163	0.113	0.193	0.468
55113	0.058	0.126	0.133	0.256	0.427
55115	0.05	0.121	0.355	0.188	0.286
55117	0.128	0.114	0.174	0.199	0.385
55119	0.201	0.165	0.09	0.12	0.424
55121	0.02	0.126	0.085	0.381	0.387
55123	0.157	0.052	0.093	0.244	0.454
55125	0.051	0.047	0.138	0.231	0.533
55127	0.116	0.146	0.137	0.191	0.41
55129	0.082	0.168	0.117	0.243	0.39
55131	0.031	0.142	0.22	0.298	0.309
55133	0.071	0.165	0.145	0.258	0.361
55135	0.076	0.069	0.206	0.143	0.506
55137	0.109	0.147	0.202	0.186	0.356
55139	0.074	0.194	0.126	0.156	0.45
55141	0.131	0.177	0.215	0.181	0.296
56001	0.136	0.1	0.151	0.181	0.432
56003	0.182	0.187	0.12	0.257	0.253
56005	0.216	0.164	0.131	0.201	0.289
56007	0.044	0.137	0.087	0.278	0.454
56009	0.138	0.113	0.121	0.293	0.335
56011	0.145	0.115	0.143	0.192	0.404
56013	0.16	0.062	0.06	0.294	0.424
56015	0.201	0.169	0.111	0.223	0.296
56017	0.208	0.093	0.068	0.307	0.324
56019	0.183	0.208	0.103	0.216	0.29
56021	0.143	0.127	0.1	0.221	0.409
56023	0.131	0.183	0.128	0.235	0.324
56025	0.1	0.084	0.094	0.325	0.398
56027	0.169	0.191	0.177	0.222	0.241
56029	0.189	0.153	0.191	0.205	0.262
56031	0.149	0.149	0.123	0.16	0.418
56033	0.17	0.251	0.099	0.203	0.278
56035	0.223	0.111	0.061	0.231	0.374
56037	0.061	0.295	0.23	0.146	0.268
56039	0.095	0.157	0.16	0.247	0.34
56041	0.098	0.278	0.154	0.207	0.264
56043	0.204	0.155	0.069	0.285	0.287
56045	0.142	0.129	0.148	0.207	0.374
1001	0.053	0.074	0.134	0.295	0.444
\.


--
-- Data for Name: prisons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prisons (nyt_id, county, facility_name, facility_city, facility_type, facility_state, total_inmate_cases, total_officer_cases) FROM stdin;
5B910220	Shelby	Alabama Therapeutic Education Facility prison	Columbiana	State rehabilitation center	Alabama	11	2
02FB1675	Bibb	Bibb Correctional Facility	Brent	State prison	Alabama	164	61
6378F6C4	Jefferson	Birmingham Women's Community Based Facility and Community Work Center	Birmingham	State prison	Alabama	17	28
EAABF900	Bullock	Bullock Correctional Facility	Bessemer	State prison	Alabama	162	80
D19A2461	Wilcox	Camden prison	Camden	State prison	Alabama	5	3
F80A4A63	Talladega	Childersburg prison	Childersburg	State prison	Alabama	5	14
F119AF97	Jefferson	William E. Donaldson Correctional Facility	Bessemer	State prison	Alabama	45	26
41B5BD10	Elmore	Draper Correctional Facility	Elmore	State prison	Alabama	121	0
9C1D5182	Barbour	Easterling Correctional Facility	Cilo	State prison	Alabama	72	47
2CF2BFD4	Coffee	Elba Work Release	Elba	Low-security work release	Alabama	1	8
0B0C27B1	Elmore	Elmore Correctional Facility	Elmore	State prison	Alabama	28	18
C42CE2AF	Escambia	Fountain Correctional Facility	Atmore	State prison	Alabama	29	47
3707C471	Elmore	Frank Lee prison	Deatsville	State prison	Alabama	26	22
7B676BEF	Marion	Hamilton Aged and Infirmed prison	Hamilton	State facility	Alabama	48	41
8270BF4E	Marion	Hamilton Community Based Facility	Hamilton	State prison	Alabama	8	22
10228D42	Escambia	Holman Correctional Facility	Atmore	State prison	Alabama	39	33
1E5109A7	Montgomery	Kilby Correctional Facility	Mount Meigs	State prison	Alabama	25	44
58CDABD8	Limestone	Limestone Correctional Facility	Harvest	State prison	Alabama	152	105
F285C4CD	Baldwin	Loxley prison	Loxley	State prison	Alabama	106	14
A7D22A15	Mobile	Mobile Community Based Facility/Community Work Center	Mobile	State prison	Alabama	15	21
3C976ECE	Montgomery	Montgomery Women's Community Based Facility and Community Work Center	Montgomery	State prison	Alabama	1	11
E373AAD4	Morgan	North Alabama prison	Decatur	State prison	Alabama	87	30
68C87646	Montgomery	Red Eagle Community Work Center prison	Montgomery	State prison	Alabama	18	20
161DFD77	St. Clair	Saint Clair Correctional Facility	Springville	State prison	Alabama	106	58
D0CF8DF6	Elmore	Staton Correctional Facility	Elmore	State prison	Alabama	59	61
DF882AD4	Elmore	Tutwiler women's prison	Wetumpka	State prison	Alabama	62	69
BD344E82	Elmore	Tutwiler Quarantine Intake Facility	Wetumpka	State facility	Alabama	35	0
9975519	Barbour	Ventress Correctional Facility	Clayton	State prison	Alabama	77	46
C69A0295	Anchorage	Anchorage Correctional Complex	Anchorage	State prison	Alaska	514	0
BB635EA4	Nome	Anvil Mountain Correctional Center	Nome	State prison	Alaska	4	0
1CADA532	Anchorage	Clitheroe community treatment center	Anchorage	State prison	Alaska	3	0
B46A8B95	Anchorage	Cordova residential center	Anchorage	State prison	Alaska	1	0
36297303	Fairbanks North Star	Fairbanks Correctional Center	Fairbanks	State prison	Alaska	154	0
7120943C	Matanuska-Susitna	Goose Creek Correctional Center	Wasilla	State prison	Alaska	1041	0
81B19B7F	Anchorage	Hiland Mountain Correctional Center	Eagle River	State prison	Alaska	235	0
2F72E4F2	Ketchikan Gateway	Ketchikan Correctional Center	Ketchikan	State prison	Alaska	1	0
9BD8D968	Juneau	Lemon Creek Correctional Center	Juneau	State prison	Alaska	19	11
30D2AFE4	Matanuska-Susitna	Mat-Su pretrial facility	Palmer	State prison	Alaska	69	0
ED29F8B4	Matanuska-Susitna	Palmer Correctional Center	Palmer	State prison	Alaska	0	0
F1A2639C	Anchorage	Parkview Center halfway house	Anchorage	State prison	Alaska	17	0
1DDD7616	Matanuska-Susitna	Point Mackenzie Correctional Farm	Wasilla	State prison	Alaska	0	0
5E5EAB60	Kenai Peninsula	Spring Creek Correctional Center	Seward	State prison	Alaska	8	0
813F9723	Bethel	Tundra Center halfway house	Bethel	State prison	Alaska	17	0
150DF866	Kenai Peninsula	Wildwood Correctional Complex	Kenai	State prison	Alaska	1	0
713DA6B2	Kenai Peninsula	Wildwood Pretrial Facility	Kenai	State prison	Alaska	47	0
E0BFBFE7	Bethel	Yukon Kuskokwim Correctional Center	Bethel	State prison	Alaska	186	0
F334992C	Anchorage	McLaughlin Youth Center facility	Anchorage	State juvenile detention	Alaska	41	78
FB20EF1C	Graham	Arizona State Prison Complex – Safford	Safford	State prison	Arizona	851	0
01C9E69B	Pinal	Central Arizona Correctional Facility	Florence	State prison	Arizona	69	0
AA807759	Cochise	Arizona State Prison Complex – Douglas	Douglas	State prison	Arizona	1163	0
91B22ADD	Pinal	Eyman Complex prison	Florence	State prison	Arizona	2023	0
0CF96DB1	Yuma	Arizona State Prison Complex – Yuma	San Luis	State prison	Arizona	2010	0
8AB67A91	Maricopa	Arizona State Prison Phoenix-West	Phoenix	State prison	Arizona	44	0
3C7ED25E	Pinal	Red Rock Correctional Facility	Eloy	State prison	Arizona	119	0
7DE4A49F	Maricopa	Arizona State Prison Complex – Phoenix	Phoenix	State prison	Arizona	651	0
EEB259F0	Maricopa	Arizona State Prison Complex – Perryville	Goodyear	State prison	Arizona	343	0
07E5D203	Maricopa	Maricopa Reentry Center	Phoenix	State prison	Arizona	0	0
E830C278	Maricopa	Arizona State Prison Complex – Lewis	Buckeye	State prison	Arizona	1310	0
FE3A3BBB	Mohave	Arizona State Prison – Kingman	Golden Valley	State prison	Arizona	653	0
D2939176	Pinal	Arizona State Prison Florence-West	Florence	State prison	Arizona	45	0
26CFE1E6	Pima	Pima Reentry Center	Tucson	State prison	Arizona	0	0
1811497D	Pinal	Arizona State Prison Complex – Florence	Florence	State prison	Arizona	440	0
E65585F9	Navajo	Arizona State Prison Complex – Winslow	Winslow	State prison	Arizona	245	0
84A26E27	Pima	Arizona State Prison Complex – Tucson	Tucson	State prison	Arizona	2241	1
1A0A4D5B	Pima	Marana Community Correctional Treatment Facility	Marana	State prison	Arizona	22	0
5422E7DA	Jefferson	Barbara Ester Unit prison	Pine Bluff	State prison	Arkansas	358	6
F8DDCC14	Saline	Benton Unit prison	Benton	State prison	Arkansas	207	2
9C4C9E44	Pulaski	Central Arkansas Community Correction Center	Little Rock	State prison	Arkansas	167	42
14BB62A3	Lincoln	Cummins Unit prison	Grady	State prison	Arkansas	1147	72
51E15B7A	Chicot	Delta Regional Unit prison	Dermott	State prison	Arkansas	473	15
53172B51	Lee	East Arkansas Regional Unit prison	Marianna	State prison	Arkansas	906	61
7F274AC6	Jackson	Grimes Unit prison	Newport	State prison	Arkansas	795	14
303CACDF	Jefferson	Maximum Security Unit prison	England	State prison	Arkansas	227	6
456C89E8	Jackson	McPherson Unit prison	Newport	State prison	Arkansas	658	9
84FC8C88	Mississippi	Mississippi County Work Release Center prison	Luxora	Low-security work release	Arkansas	96	4
D79BA1DE	Izard	North Central Unit prison	Calico Rock	State prison	Arkansas	484	7
B9778FE3	Mississippi	Northeast Arkansas Community Corrections	Osceola	State prison	Arkansas	147	4
77555645	Washington	Northwest Arkansas Community Corrections	Fayetteville	State prison	Arkansas	6	2
9AA13461	Washington	Northwest Arkansas Work Release prison	Springdale	Low-security work release	Arkansas	69	4
0454E781	Hot Spring	Omega Technical Violator Center prison	Malvern	State prison	Arkansas	242	0
26030F83	Hot Spring	Ouachita River Unit prison	Malvern	State prison	Arkansas	1673	48
D8411DDF	Jefferson	Pine Bluff prison	Pine Bluff	State prison	Arkansas	349	6
364CE0E0	Jefferson	Randall L. Williams Correctional Facility	Pine Bluff	State prison	Arkansas	324	20
AE0AB3FC	Miller	Southwest Arkansas Community Correction Center	Texarkana	State prison	Arkansas	132	0
64B18FAA	Miller	Texarkana Regional Correction Center	Texarkana	State prison	Arkansas	173	3
AA72EB91	Jefferson	Tucker Unit prison	Tucker	State prison	Arkansas	659	1
4D6E64C8	Lincoln	Varner Supermax Unit prison	Grady	State prison	Arkansas	874	7
7C68181A	Saline	Arkansas Juvenile Assessment and Treatment Center	Alexander	State juvenile detention	Arkansas	63	67
AF49C345	Pulaski	Wrightsville Unit prison	Wrightsville	State prison	Arkansas	1055	19
5DDB1797	Crittenden	East Central Arkansas Community Correction Center-- Women's Unit	West Memphis	State prison	Arkansas	94	3
E7F67CD9	Chicot	Dermott Juvenile Correctional Facility	Dermott	State juvenile detention	Arkansas	0	2
41367DB9	Kings	Avenal State Prison	Avenal	State prison	California	3108	532
C7D46C2A	Kern	California City Correctional Facility	California City	State prison	California	1000	235
004CF496	Imperial	Calipatria State Prison	Calipatria	State prison	California	1123	365
5D1942E3	Lassen	California Correctional Center	Susanville	State prison	California	1366	295
6452DAAD	Kern	California Correctional Institution	Tehachapi	State prison	California	1382	648
349947ED	Madera	Central California Women’s Facility	Chowchilla	State prison	California	821	277
281EA59E	Imperial	California State Prison, Centinela	Imperial	State prison	California	865	426
171135D1	San Joaquin	California Health Care Facility prison	Stockton	State facility	California	644	656
D1937261	San Bernardino	California Institution for Men	Chino	State prison	California	1501	585
9EE4AD94	San Bernardino	California Institution for Women prison	Corona	State prison	California	489	359
98C61AE2	San Luis Obispo	California Men’s Colony prison	San Luis Obispo	State prison	California	2472	527
30BB770C	Solano	Vacaville state medical prison	Vacaville	State facility	California	712	344
C8742A7C	Kings	Corcoran State Prison	Corcoran	State prison	California	1075	735
E156FD9F	Riverside	California Rehabilitation Center prison	Norco	State prison	California	1993	497
550543A1	Monterey	Soledad prison	Soledad	State prison	California	2719	355
9A9CC384	Riverside	Chuckawalla Valley State Prison	Blythe	State prison	California	1783	282
A9C4CC3A	San Joaquin	Deuel Vocational Institution prison	Tracy	State prison	California	545	289
A869BA9E	Sacramento	Folsom prison	Represa	State prison	California	1369	218
988AEE63	Lassen	High Desert State Prison	Susanville	State prison	California	2033	574
368DB6EF	Riverside	Ironwood State Prison	Blythe	State prison	California	1568	382
FBE94D13	Kern	Kern Valley State Prison	Delano	State prison	California	894	558
238D748E	Los Angeles	Los Angeles County state prison	Lancaster	State prison	California	1546	607
9860F4EA	Amador	Mule Creek State Prison	Ione	State prison	California	1846	409
82BCDCB5	Kern	North Kern State Prison	Delano	State prison	California	924	624
936C6466	Del Norte	Pelican Bay State Prison	Crescent City	State prison	California	220	195
D32A83EE	Fresno	Pleasant Valley State Prison	Coalinga	State prison	California	1989	431
F881BD30	San Diego	Richard J. Donovan Correctional Facility	San Diego	State prison	California	1011	518
1AF0942F	Sacramento	California State Prison, Sacramento	Represa	State prison	California	291	322
19DE7187	Kings	Substance Abuse Treatment Facility and State Prison	Corcoran	State prison	California	3011	636
FF0E9360	Tuolumne	Sierra Conservation Center prison	Jamestown	State prison	California	1437	217
962F05CB	Solano	Vacaville state prison	Vacaville	State prison	California	1150	250
8A32C1EF	Marin	San Quentin State Prison	San Quentin	State prison	California	2243	439
B23AB2C6	Monterey	Salinas Valley State Prison	Soledad	State prison	California	684	601
8810FABC	Madera	Valley State Prison	Chowchilla	State prison	California	1731	279
DFE40673	Kern	Wasco State Prison	Wasco	State prison	California	1762	539
42505312	Kern	Golden State Modified Community Correctional Facility	McFarland	State prison	California	0	12
674CCC02	Kern	Shafter Modified Community Correctional Facility	Shafter	State prison	California	0	10
96F7E8B8	Kern	Taft Modified Community Correctional Facility	Taft	State prison	California	0	9
74FCDC0F	Kern	Delano Modified Community Correctional Facility	Delano	State prison	California	0	22
11D68FF4	Kern	McFarland Female Community Reentry Facility	McFarland	State prison	California	0	1
87C8EC0F	Alameda	Work Site - Alameda County	Alameda County	State work camp	California	0	2
21DF5831	Fresno	Work Site – Fresno County	Fresno County	State work camp	California	0	21
A6D7A01A	Humboldt	Work Site - Humboldt County	Humboldt County	State work camp	California	0	1
1FD1AA66	Imperial	Work Site - Imperial County	Imperial County	State work camp	California	0	9
21E85E7B	Kern	Work Site – Kern County	Kern County	State work camp	California	0	25
65D09C69	Los Angeles	Work Site – Los Angeles County	Los Angeles County	State work camp	California	0	90
E3FE8066	Mendocino	Work Site – Mendocino County	Mendocino County	State work camp	California	0	2
F17C9E93	Merced	Work Site - Merced County	Merced County	State work camp	California	0	2
3BC6CE71	Monterey	Work Site – Monterey County	Monterey County	State work camp	California	0	3
1320C6CF	Orange	Work Site -- Orange County	Orange County	State work camp	California	0	14
125FD347	Riverside	Work Site – Riverside County	Riverside County	State work camp	California	0	20
306D4A50	Sacramento	Work Site – Sacramento County	Sacramento	State work camp	California	0	277
1C783C8E	San Bernardino	Work Site – San Bernardino County	San Bernardino	State work camp	California	0	69
C1466578	San Diego	Work Site – San Diego	San Diego	State work camp	California	0	5
547283C2	San Francisco	Work Site - San Francisco County	San Francisco	State work camp	California	0	3
60EAF944	San Joaquin	Work Site – San Joaquin	Stockton	State work camp	California	0	14
A7B54234	San Luis Obispo	Work Site -- San Luis Obispo County	San Luis Obispo County	State work camp	California	0	0
6475CE90	San Mateo	Work Site -- San Mateo County	San Mateo County	State work camp	California	0	1
3359EB8C	Santa Barbara	Work Site – Santa Barbara County	Santa Barbara County	State work camp	California	0	2
2D048E4C	Santa Clara	Work Site – Santa Clara County	Santa Clara County	State work camp	California	0	5
114F8E0F	Solano	Work Site – Solano County	Solano County	State work camp	California	0	4
75D5EC32	Stanislaus	Work Site – Stanislaus County	Stanislaus County	State work camp	California	0	1
D6F9926B	Tulare	Work Site – Tulare County	Tulare County	State work camp	California	0	2
BBDDDAA7	Ventura	Work Site – Ventura County	Ventura County	State work camp	California	0	78
BA489EEB	Yolo	Work Site - Yolo County	Yolo County	State work camp	California	0	2
84E27D8C	Sacramento	California Youth Facilities	Sacramento	State juvenile detention	California	204	193
84EB1D78	Crowley	Arkansas Valley Correctional Facility	Ordway	State prison	Colorado	961	99
A2A88844	Fremont	Arrowhead Correctional Center	Cañon City	State prison	Colorado	360	52
3079583	Bent	Bent County Correctional Facility	Las Animas	State prison	Colorado	1091	95
5057D4F9	Chaffee	Buena Vista Correctional Facility	Buena Vista	State prison	Colorado	523	89
5E8ED28B	Fremont	Centennial Correctional Facility	Cañon City	State prison	Colorado	151	102
7ECC9360	Jefferson	Colorado Correctional Center	Golden	State prison	Colorado	2	0
625A970F	Fremont	Colorado State Penitentiary	Cañon City	State prison	Colorado	156	88
0B0F8192	Fremont	Colorado Territorial Correctional Facility	Cañon City	State prison	Colorado	580	94
BE51D904	Crowley	Crowley County Correctional Facility	Olney Springs	State prison	Colorado	908	45
7B121D46	Delta	Delta Correctional Center	Delta	State prison	Colorado	161	34
E4909F50	Denver	Denver Reception and Diagnostic Center prison	Denver	State prison	Colorado	36	32
F1234BF2	Denver	Denver Women's Correctional Facility	Denver	State prison	Colorado	98	54
6E40CDEE	Fremont	Four Mile Correctional Center	Cañon City	State prison	Colorado	404	35
286372B0	Fremont	Fremont Correctional Facility	Cañon City	State prison	Colorado	786	140
64F3F998	Pueblo	La Vista Correctional Facility	Pueblo	State prison	Colorado	11	33
63B9B9C3	Lincoln	Limon Correctional Facility	Limon	State prison	Colorado	749	84
86859433	Garfield	Rifle Correctional Center	Rifle	State prison	Colorado	4	3
9DE965DF	Pueblo	San Carlos Correctional Facility	Pueblo	State prison	Colorado	14	25
1E4904C2	Fremont	Skyline Correctional Center	Cañon City	State prison	Colorado	0	0
23C68666	Logan	Sterling Correctional Center	Sterling	State prison	Colorado	1517	245
EC7A836B	Las Animas	Trinidad Correctional Facility	Model	State prison	Colorado	326	43
C7BA6216	Pueblo	Youthful Offender System	Pueblo	State juvenile detention	Colorado	142	75
C39C48F8	El Paso	Cheyenne Mountain Re-entry Center	Colorado Springs	State prison	Colorado	2	0
2541DDEC	Adams	Adams Transitional Center	Denver	State prison	Colorado	29	7
D684E69F	Adams	Adams Youth Services Center	Brighton	State juvenile detention	Colorado	3	6
74694D92	Alamosa	Advantage Treatment Center prison-Alamosa	Alamosa	State rehabilitation center	Colorado	23	15
886FDE7B	Logan	Advantage Treatment Center prison-Lamar	Lamar	State rehabilitation center	Colorado	20	8
F5F9658C	Logan	Advantage Treatment Center prison-Logan County	Sterling	State rehabilitation center	Colorado	63	19
4850C98A	Arapahoe	Arapahoe Community Treatment Center	Englewood	State rehabilitation center	Colorado	11	2
0F9E3CDB	Jefferson	Aspire Youth Services Center facility	Golden	State juvenile detention	Colorado	3	12
9678E55E	Arapahoe	Centennial Community Transition Center	Englewood	State prison	Colorado	25	6
F3CE58EA	Adams	Commerce Transitional Center	Commerce City	State prison	Colorado	3	1
5B42E3BC	Denver	Dahlia Facility	Denver	State prison	Colorado	4	2
DEB6CB91	Denver	Fox Facility	Denver	State prison	Colorado	7	2
94481929	Mesa	Gateway Residential Center	Grand Junction	State rehabilitation center	Colorado	6	6
67A60EE0	Denver	Giliam Youth Services Center	Denver	State juvenile detention	Colorado	6	13
D322F3DC	Tarrant	Henderson Transitional Center	Henderson	State prison	Colorado	10	10
739B86D0	Boulder	Intervention Community Corrections Services halfway house	Boulder	State halfway house	Colorado	18	3
979FCA67	Denver	Independence House Pecos	Denver	State halfway house	Colorado	34	8
2231F1E3	Denver	Independence House South Federal	Denver	State halfway house	Colorado	0	3
3B0D3987	Weld	Intervention Community Corrections Services facility	Greeley	State halfway house	Colorado	52	20
F2951DE0	Jefferson	Mount View Youth Services Center facility	Lakewood	State juvenile detention	Colorado	21	36
439264FE	Pueblo	Pueblo Youth Services Center	Pueblo	State juvenile detention	Colorado	6	9
158FF64E	El Paso	Roberts Road Residential Facility	Colorado Springs	State halfway house	Colorado	58	20
B4F0FA71	El Paso	Spring Creek Youth Services Center	Colorado Springs	State juvenile detention	Colorado	26	20
8BBABB5E	Denver	Ulster Facility	Denver	State prison	Colorado	2	1
847CAA63	Weld	Weld County work release	Greeley	Low-security work release	Colorado	16	7
1C2A6411	El Paso	Zebulon Pike Youth Services Center	Colorado Springs	State juvenile detention	Colorado	4	9
B2A02FCE	Fairfield	Bridgeport Correctional Center	Bridgeport	State prison	Connecticut	359	6
D5443A16	Windham	Brookyln Correctional Center	Brooklyn	State prison	Connecticut	157	0
829B3E92	Hartford	Carl Robinson Correctional Institution	Enfield	State prison	Connecticut	399	11
4C3D1A7F	New Haven	Cheshire Correctional Institution	Cheshire	State prison	Connecticut	405	5
34089A08	New London	Corrigan-Radgowski Correctional Center	Uncasville	State prison	Connecticut	418	12
D95ED6FA	Fairfield	Garner Correctional Institution	Newtown	State prison	Connecticut	173	3
7169CA78	Hartford	Hartford Correctional Center	Hartford	State prison	Connecticut	401	16
B608D5C2	Hartford	MacDougall-Walker Correctional Institution	Suffield	State prison	Connecticut	742	3
041B3B4C	Hartford	MacDougall-Walker Infirmary	Suffield	State facility	Connecticut	248	0
DFC01B43	New Haven	Manson Youth Institution	Chesire	State juvenile detention	Connecticut	25	3
29442032	New Haven	New Haven Correctional Center	New Haven	State prison	Connecticut	359	0
CCFA0225	Tolland	Northern Correctional Institution	Somers	State prison	Connecticut	66	1
EFC040FB	Tolland	Osborn Correctional Institution	Somers	State prison	Connecticut	544	1
0B842196	Tolland	Willard-Cybulski Correctional Institution	Enfield	State prison	Connecticut	107	0
C33104D1	New London	York Correctional Institution	Niantic	State prison	Connecticut	252	1
E468D27E	New Castle	James T. Vaughn Correctional Center	Smyrna	State prison	Delaware	676	211
CD644DE6	New Castle	Howard R. Young Correctional Institution	Wilmington	State prison	Delaware	496	126
BB330559	New Castle	Delores J. Baylor Women's Correctional Institution	New Castle	State prison	Delaware	93	27
2314F8D3	Sussex	Sussex Correctional Institution	Georgetown	State prison	Delaware	616	104
4D6B6361	Kent	Morris Community Corrections Center	Dover	State prison	Delaware	20	6
DCF218E3	New Castle	Hazel D. Plant Women's Treatment Facility	New Castle	State prison	Delaware	3	0
1653E69B	New Castle	Plummer Community Corrections Center	Wilmington	State prison	Delaware	80	24
B7173DB0	Sussex	Sussex Community Corrections Center	Georgetown	State prison	Delaware	36	16
AB5FF571	Jackson	Apalachee Correctional Institution	Sneads	State prison	Florida	174	96
85E1DCF9	Polk	Avon Park Correctional Institution	Avon Park	State prison	Florida	230	81
694B0A6E	Baker	Baker Correctional Institution	Sanderson	State prison	Florida	574	83
4043040E	Bay	Bay Correctional Facility	Panama City	State prison	Florida	359	68
763CEDCA	Santa Rosa	Blackwater River Correctional Facility	Milton	State prison	Florida	155	56
A8401B83	Calhoun	Calhoun Correctional Institution	Blountstown	State prison	Florida	195	58
37904D9E	Escambia	Century Correctional Institution	Century	State prison	Florida	776	75
CB9EABA3	Orange	Central Florida Reception Center prison	Orlando	State prison	Florida	286	145
C1102FBD	Charlotte	Charlotte Correctional Institution	Punta Gorda	State prison	Florida	63	55
38E4B078	Columbia	Columbia Correctional Institution	Lake City	State prison	Florida	1369	113
39FC4616	Dixie	Cross City Correctional Institution	Cross City	State prison	Florida	310	89
74E15D35	Miami-Dade	Dade Correctional Institution	Florida City	State prison	Florida	102	215
713A851C	DeSoto	Desoto Annex prison	Arcadia	State prison	Florida	215	64
C666F452	Miami-Dade	Everglades Correctional Institution	Miami	State prison	Florida	414	156
AE7EF219	Bradford	Florida State Prison	Railford	State prison	Florida	154	116
5929C8B6	Marion	Florida Women's Reception Center prison	Ocala	State prison	Florida	502	82
2D4DDBB9	Franklin	Franklin Correctional Institution	Carrabelle	State prison	Florida	323	58
CB65BA05	Gadsden	Gadsden Correctional Facility	Quincy	State prison	Florida	108	50
1C4BF33F	Gadsden	Gadsden Re-Entry Center prison	Havana	State prison	Florida	209	54
C22CC7BE	Jackson	Graceville Correctional Facility	Graceville	State prison	Florida	677	91
6A92F6FC	Gulf	Gulf Correctional Institution	Wewahitchka	State prison	Florida	277	81
63568260	Hamilton	Hamilton Correctional Institution	Jasper	State prison	Florida	362	92
04F8E6F9	Hardee	Hardee Correctional Institution	Bowling Green	State prison	Florida	126	97
EB317BE9	Hernando	Hernando Correctional Institution	Brooksville	State prison	Florida	0	14
81A2F225	Holmes	Holmes Correctional Institution	Bonifay	State prison	Florida	174	55
AC9502F5	Miami-Dade	Homestead Correctional Institution	Homestead	State prison	Florida	317	82
281C9393	Jackson	Jackson Correctional Institution	Malone	State prison	Florida	204	95
E502BD8C	Jefferson	Jefferson Correctional Institution	Monticello	State prison	Florida	260	89
0ABE9382	Lake	Lake Correctional Institution	Clermont	State prison	Florida	106	79
016CFD91	Columbia	Lake City Correctional Facility	Lake City	State prison	Florida	76	45
BAB8E023	Gilchrist	Lancaster Correctional Institution	Trenton	State prison	Florida	108	81
642FD9DE	Bradford	Lawtey Correctional Institution	Lawtey	State prison	Florida	283	75
6DCD6F02	Liberty	Liberty Correctional Institution	Bristol	State prison	Florida	232	95
EF18673F	Marion	Lowell Correctional Institution	Ocala	State prison	Florida	1015	124
12F9A0D5	Madison	Madison Correctional Institution	Madison	State prison	Florida	125	83
9636A1AF	Marion	Marion Correctional Institution	Ocala	State prison	Florida	316	81
652ED779	Martin	Martin Correctional Institution	Indiantown	State prison	Florida	9	50
F6EBDC60	Lafayette	Mayo Correctional Institution Annex	Mayo	State prison	Florida	955	73
101230DC	Glades	Moore Haven Correctional Facility	Moore Haven	State prison	Florida	182	52
5370C7D5	Bradford	New River Correctional Institution	Raiford	State prison	Florida	104	50
2DC6A1E5	Washington	Northwest Florida Reception Center prison	Chipley	State prison	Florida	362	124
B32B69A1	Okaloosa	Okaloosa Correctional Institution	Crestview	State prison	Florida	28	69
F543DC00	Okeechobee	Okeechobee Correctional Institution	Okeechobee	State prison	Florida	142	84
24DE9005	Polk	Polk Correctional Institution	Polk City	State prison	Florida	216	69
41EFB8E0	Putnam	Putnam Correctional Institution	East Palatka	State prison	Florida	110	40
EE41A107	Union	Reception and Medical Center prison	Lake Butler	State facility	Florida	340	210
86571B59	Santa Rosa	Santa Rosa Correctional Institution	Milton	State prison	Florida	809	217
9E28CD00	Miami-Dade	South Florida Reception Center prison	Doral	State prison	Florida	210	201
C83E7D7B	Palm Beach	South Bay Correctional Facility	South Bay	State prison	Florida	456	104
985301C9	Sumter	Sumter Correctional Institution	Bushnell	State prison	Florida	109	86
F3119CD2	Suwannee	Suwannee Correctional Institution	Live Oak	State prison	Florida	884	154
7D742ECA	Taylor	Taylor Correctional Institution	Perry	State prison	Florida	710	54
523CFABC	Volusia	Tomoka Correctional Institution	Daytona Beach	State prison	Florida	183	78
4C67ACEE	Union	Union Correctional Institution	Raiford	State prison	Florida	194	129
867320D5	Wakulla	Wakulla Correctional Institution	Crawfordville	State prison	Florida	288	251
DBDFE143	Walton	Walton Correctional Institution	DeFuniak Springs	State prison	Florida	346	76
228AE758	Pasco	Zephyrhills Correctional Institution	Zephyrhills	State prison	Florida	176	84
2A540CF1	Broward	Broward Regional Juvenile Detention Center	Fort Lauderdale	State juvenile detention	Florida	7	33
22B952FA	Palm Beach	Palm Beach Regional Juvenile Detention Center	West Palm Beach	State juvenile detention	Florida	2	14
E3303E7A	Miami-Dade	Miami-Dade Regional Juvenile Detention Center	Miami	State juvenile detention	Florida	15	38
2F0B08EB	Collier	Collier Regional Juvenile Detention Center	Naples	State juvenile detention	Florida	4	5
47A5FD2F	Manatee	Manatee Regional Juvenile Detention Center	Bradenton	State juvenile detention	Florida	4	9
234AE3A5	Orange	Orange Regional Juvenile Detention Center	Orlando	State juvenile detention	Florida	9	18
9DD19FF6	Pinellas	Pinellas Regional Juvenile Detention Center	Clearwater	State juvenile detention	Florida	8	18
70867FBD	Volusia	Volusia Regional Juvenile Detention Center	Daytona Beach	State juvenile detention	Florida	8	20
CE7F4B93	St. Lucie	Saint Lucie Regional Juvenile Detention Center	Fort Pierce	State juvenile detention	Florida	7	21
28E6A100	Leon	Leon Regional Juvenile Detention Center	Tallahassee	State juvenile detention	Florida	1	16
43D92E67	Brevard	Brevard Regional Juvenile Detention Center	Cocoa	State juvenile detention	Florida	1	8
BAFE9EAE	Lee	Southwest Florida Regional Juvenile Detention Center	Fort Myers	State juvenile detention	Florida	6	11
FAB4E9AB	Duval	Duval Regional Juvenile Detention Center	Jacksonville	State juvenile detention	Florida	16	11
A029DD62	Escambia	Escambia Regional Juvenile Detention Center	Pensacola	State juvenile detention	Florida	1	26
893DBBC3	Okaloosa	Okaloosa Regional Juvenile Detention Center	Crestview	State juvenile detention	Florida	0	7
C5810FCC	Bay	Bay Regional Juvenile Detention Center	Panama City	State juvenile detention	Florida	1	18
D37E4193	Alachua	Alachua Regional Juvenile Detention Center	Gainesville	State juvenile detention	Florida	2	22
F9582AFC	Marion	Marion Regional Juvenile Detention Center	Ocala	State juvenile detention	Florida	2	19
AB25DDA3	Pasco	Pasco Regional Juvenile Detention Center	San Antonio	State juvenile detention	Florida	0	6
A0D147DE	Hillsborough	Hillsborough Regional Juvenile Detention Center	Tampa	State juvenile detention	Florida	0	4
09131F23	Broward	Broward Youth Treatment Center	Pembroke Pines	State juvenile detention	Florida	5	6
291FE566	Hillsborough	Columbus Youth Academy	Tampa	State juvenile detention	Florida	1	11
DDEDBA18	Okaloosa	Crestview Youth Academy	Crestview	State juvenile detention	Florida	5	16
81DB39A0	Miami-Dade	Miami Youth Academy	Miami	State juvenile detention	Florida	6	16
68AFE3CA	Miami-Dade	Miami Girls Academy	Miami	State juvenile detention	Florida	0	6
D8758E94	Jackson	Dove Academy	Graceville	State juvenile detention	Florida	8	23
6FA828A7	Volusia	Daytona Juvenile Residential Facility	Daytona Beach	State juvenile detention	Florida	5	9
63D9D7F7	Palm Beach	Palm Beach Youth Academy	West Palm Beach	State juvenile detention	Florida	28	24
CF7A0FBF	Palm Beach	Palm Beach Youth Academy Substance Abuse	West Palm Beach	State juvenile detention	Florida	15	0
618FF770	Okeechobee	Okeechobee Youth Development Center	Okeechobee	State juvenile detention	Florida	16	5
5.54E+92	Okeechobee	Okeechobee Youth Treatment Center	Okeechobee	State juvenile detention	Florida	0	4
36DB67E5	Okeechobee	Okeechobee Girls Academy	Okeechobee	State juvenile detention	Florida	1	5
59FF1537	Okeechobee	Okeechobee Sex Offender Facility	Okeechobee	State juvenile detention	Florida	2	2
AF4F3A85	Okeechobee	Okeechobee juvenile center	Okeechobee	State juvenile detention	Florida	17	4
C1476E6E	Okeechobee	Okeechobee youth halfway house	Okeechobee	State juvenile detention	Florida	0	2
7A8DA44F	Gadsden	Oak Grove Academy	Jasper	State juvenile detention	Florida	9	15
CB478211	Walton	Walton Academy	DeFuniak Springs	State juvenile detention	Florida	33	22
B398871C	Escambia	Escambia Boys' Base center	Pensacola	State juvenile detention	Florida	8	13
35F3D620	Osceola	Kissimmee Youth Academy	Kissimmee	State juvenile detention	Florida	5	16
787BAFFF	Hillsborough	Lake Academy for juveniles	Tampa	State juvenile detention	Florida	22	6
CBB87533	Union	Redwood Youth Academy	Raiford	State juvenile detention	Florida	16	3
7070BB8B	Okaloosa	Okaloosa Youth Academy	Crestview	State juvenile detention	Florida	23	28
3AA35E4D	Hillsborough	Hillsborough Girls Academy	Tampa	State juvenile detention	Florida	4	7
CC27D73D	Duval	Duval Academy	Jacksonville	State juvenile detention	Florida	3	6
AD3D6356	Broward	Pompano Youth Treatment Center	Pompano Beach	State juvenile detention	Florida	16	14
7EDFCF33	Citrus	Cypress Creek Treatment Center	Lecanto	State juvenile detention	Florida	7	9
81830716	Citrus	Cypress Creek youth center	Lecanto	State juvenile detention	Florida	17	11
8AAB231F	Marion	Marion Youth Academy	Ocala	State juvenile detention	Florida	4	7
D77430D9	Orange	Orange Youth Academy	Orlando	State juvenile detention	Florida	1	14
95E70DE3	Lake	Hope Forest Academy	Paisley	State juvenile detention	Florida	5	7
D0CAC93C	Madison	JoAnn Bridges Academy	Greenville	State juvenile detention	Florida	1	10
26C4BC7C	Liberty	Juvenile Unit for Specialized Treatment	Sumatra	State juvenile detention	Florida	8	8
DBD594DC	St. Johns	Hastings Comprehensive Treatment youth facility	Hastings	State juvenile detention	Florida	12	19
D3142189	St. Johns	Saint John's Youth Academy	St. Augustine	State juvenile detention	Florida	26	4
7.58E+115	Marion	Center for Success and Independence-Ocala for juveniles	Ocala	State juvenile detention	Florida	20	2
21831D9C	Harris	Center for Success and Independence Substance Abuse for juveniles	Ocala	State juvenile detention	Florida	20	24
7713D2BB	Hernando	Brooksville youth center	Brooksville	State juvenile detention	Florida	7	12
6D7AED74	Hillsborough	Les Peters youth center	Tampa	State juvenile detention	Florida	0	10
5E4670FA	Brevard	Melbourne Center for Personal Growth youth center	Melbourne	State juvenile detention	Florida	0	6
B2F1149B	Hillsborough	Tampa residential youth facility	Tampa	State juvenile detention	Florida	1	4
7229BDA2	Pasco	Central Pasco Girls Academy	Land O’Lakes	State juvenile detention	Florida	13	8
0B203771	Polk	Bartow Youth Academy	Bartow	State juvenile detention	Florida	2	1
3F2E6CAB	Hillsborough	Youth Environmental Services center	Wimauma	State juvenile detention	Florida	0	2
D97096F7	Alachua	Alachua youth academy	Gainesville	State juvenile detention	Florida	0	7
6AD411D3	Brevard	Brevard Group Treatment Home youth center	Cocoa	State juvenile detention	Florida	0	3
281F2469	St. Johns	Gulf Academy for juveniles	Hastings	State juvenile detention	Florida	11	3
C4E70D87	Polk	Polk youth halfway house	Bartow	State juvenile detention	Florida	0	4
E1D49F9E	Duval	Jacksonville Youth Academy	Jacksonville	State juvenile detention	Florida	0	7
E4E8FC18	Liberty	Twin Oaks youth center	Bristol	State juvenile detention	Florida	5	0
69488936	Okeechobee	Everglades Youth Academy	Okeechobee	State juvenile detention	Florida	0	3
4677D972	Appling	Appling Integrated Treatment Facility prison	Baxley	State rehabilitation center	Georgia	17	7
A9AD6245	Fulton	Atlanta Transitional Center prison	Atlanta	State prison	Georgia	20	6
086F19B1	Richmond	Augusta State Medical Prison	Wrightsville	State facility	Georgia	264	121
DE138128	Richmond	Augusta Transitional Center prison	Augusta	State prison	Georgia	16	12
FE465BA2	Mitchell	Autry State Prison	Pelham	State prison	Georgia	107	27
4C51719F	Bacon	Bacon Probation Detention Center	Alma	State prison	Georgia	26	17
0772A3DE	Decatur	Bainbridge Probation Sustance Abuse Treatment Center prison	Bainbridge	State rehabilitation center	Georgia	90	27
E192DDA6	Baldwin	Baldwin State Prison	Hardwick	State prison	Georgia	31	51
EE4C16AE	Bleckley	Bleckley Probation Substance Abuse Treatment Center	Cochran	State rehabilitation center	Georgia	66	20
D1E53C62	Bulloch	Bulloch County Correctional Institution	Statesboro	State prison	Georgia	2	0
D3064AA5	Monroe	Burruss Correctional Training Center prison	Forsyth	State prison	Georgia	29	23
BABE76A0	Union	Colwell Probation Detention Center	Blairsville	State prison	Georgia	48	6
72CBD987	Calhoun	Calhoun State Prison	Morgan	State prison	Georgia	59	36
E885CC2D	Carroll	Carroll County Correctional Institution	Carrollton	State prison	Georgia	18	0
19680A3D	Bibb	Central State Prison	Macon	State prison	Georgia	36	52
1537F1CC	Troup	Charles D. Hudson Transitional Center prison	LaGrange	State prison	Georgia	2	3
07429F05	Clarke	Clarke County Correctional Institution	Athens	State prison	Georgia	17	0
8A5A9C67	Clayton	Clayton County prison	Lovejoy	State prison	Georgia	15	0
E51F26C5	Clayton	Clayton Transitional Center prison	Forest Park	State prison	Georgia	7	11
8302E6ED	Chatham	Coastal State Prison	Garden City	State prison	Georgia	128	48
F4525AFF	Coffee	Coffee Correctional Facility	Nicholls	State prison	Georgia	238	0
EEF54F4A	Colquitt	Colquitt County Prison	Moultrie	State prison	Georgia	11	0
4A356422	Muscogee	Columbus Transitional Center prison	Columbus	State prison	Georgia	9	5
351D3A0C	Coweta	Coweta County prison	Newnan	State prison	Georgia	84	0
E9C81957	Decatur	Decatur County Correctional Institution	Bainbridge	State prison	Georgia	2	0
65052EFD	Dodge	Dodge State Prison	Chester	State prison	Georgia	39	33
A3F08AB9	Dooly	Dooly State Prison	Unadilla	State prison	Georgia	80	27
FBD84796	Effingham	Effingham County Correctional Institution	Springfield	State prison	Georgia	49	0
8ED76D67	Emanuel	Emanuel Probation Detention Center	Twin City	State prison	Georgia	12	11
3D088022	Emanuel	Emanuel Women's Facility prison	Swainsboro	State prison	Georgia	30	25
B4C63E8A	Floyd	Floyd County Correctional Institution	Rome	State prison	Georgia	0	0
583CDDE4	Butts	Georgia Diagnostic and Classification Prison Special Management Unit	Jackson	State prison	Georgia	0	12
7BE52E08	Butts	Georgia Diagnostic and Classification prison	Jackson	State prison	Georgia	280	80
98E5A446	Tattnall	Georgia State Prison	Reidsville	State prison	Georgia	33	45
B78426E9	Gwinnett	Gwinnett County Correctional Institution	Lawrenceville	State prison	Georgia	73	0
870406F4	Hall	Hall County Correctional Institution	Gainesville	State prison	Georgia	4	0
627B87BC	Hancock	Hancock State Prison	Sparta	State prison	Georgia	128	24
C7960DF3	Harris	Harris County Correctional Institution	Hamilton	State prison	Georgia	3	0
95E66327	Chattooga	Hays State Prison	Trion	State prison	Georgia	43	40
34EEA463	DeKalb	Helms Facility prison	Atlanta	State prison	Georgia	0	7
61415733	Jackson	Jackson County Correctional Institution	Jefferson	State prison	Georgia	0	0
CF4D0027	Jefferson	Jefferson County Correctional Institution	Louisville	State prison	Georgia	4	0
6165230	Jenkins	Jenkins Correctional Center	Millen	State prison	Georgia	31	0
FB85D93B	Johnson	Johnson State Prison	Wrightsville	State prison	Georgia	131	26
A30EDA5B	Habersham	Lee Arrendale State Prison	Alto	State prison	Georgia	106	48
EBC423FC	Habersham	Lee Arrendale Transitional Center prison	Gainesville	State prison	Georgia	1	3
45CBA8D5	Lee	Lee State Prison	Leesburg	State prison	Georgia	28	48
DC8E43F0	Long	Long State Prison	Ludowici	State prison	Georgia	9	19
7179AEAF	Macon	Macon State Prison	Oglethorpe	State prison	Georgia	36	66
1197E8DB	Bibb	Macon Transitional Center prison	Macon	State prison	Georgia	10	4
8709D807	Houston	McEver Probation Detention Center	Perry	State prison	Georgia	34	16
B1B80A7B	DeKalb	Metro Reentry Facility prison	Atlanta	State prison	Georgia	4	28
D4721EE2	DeKalb	Metro Transitional Center prison	Atlanta	State prison	Georgia	10	12
FADDB870	Mitchell	Mitchell County Correctional Institute	East Camilla	State prison	Georgia	3	0
E7B3C3F1	Montgomery	Montgomery State Prison	Mount Vernon	State prison	Georgia	22	27
ED55B20C	Muscogee	Muscogee County Correctional Institution	Columbus	State prison	Georgia	4	0
B1CBC172	Catoosa	Northwest Residential Substance Abuse Treatment prison	Fort Oglethorpe	State prison	Georgia	18	0
DC5DF811	Lanier	Patten Probation Detention Center	Lakeland	State prison	Georgia	15	13
FA6FC9BE	Paulding	Paulding Residential Substance Abuse Treatment prison	Dallas	State prison	Georgia	51	27
1823CD93	Gwinnett	Phillips State Prison	Buford	State prison	Georgia	112	52
20CB67E4	Gwinnett	Phillips Transitional Center prison	Buford	State prison	Georgia	9	3
A61BDCDF	Pulaski	Pulaski State Prison	Hawkinsville	State prison	Georgia	118	63
7C961632	Richmond	Richmond County Correctional Institution	Augusta	State prison	Georgia	12	0
2F6B73F9	Baldwin	Riverbend Correctional Facility	Milledgeville	State prison	Georgia	18	0
4F145C58	Tattnall	Rogers State Prison	Reidsville	State prison	Georgia	19	28
9D150BA5	Muscogee	Rutledge State Prison	Columbus	State prison	Georgia	26	28
D2234CF9	Screven	Screven County Correctional Institution	Sylvania	State prison	Georgia	0	0
66098D42	Tattnall	Smith State Prison	Glennville	State prison	Georgia	26	22
E58EF15E	Evans	Smith Transitional Center prison	Claxton	State prison	Georgia	10	3
2F630DD4	Spalding	Spalding County Correctional Institution	Griffin	State prison	Georgia	0	0
45E97E0D	Sumter	Sumter County Correctional Institution	Americus	State prison	Georgia	0	0
D224ED0B	Telfair	Telfair State Prison	Helena	State prison	Georgia	81	34
5.52E+76	Terrell	Terrell County Correctional Institution	Dawson	State prison	Georgia	0	0
1F28936E	Treutlen	Treutlen Probation Detention Center	Soperton	State prison	Georgia	65	25
D9796D7C	Turner	Turner Residential Substance Abuse Treatment prison	Sycamore	State rehabilitation center	Georgia	49	19
409D3BBC	Lowndes	Valdosta State Prison	Valdosta	State prison	Georgia	56	93
D45BF0B8	Lowndes	Valdosta Transitional Center prison	Valdosta	State prison	Georgia	6	13
83F483F5	Walker	Walker State Prison	Rock Spring	State prison	Georgia	64	34
A57E2828	Ware	Ware State Prison	Waycross	State prison	Georgia	32	64
BE7CB179	Washington	Washington State Prison	Davisboro	State prison	Georgia	43	9
205D8745	Pike	West Central Integrated Treatment Facility	Zebulon	State rehabilitation center	Georgia	45	28
AD84E306	Wheeler	Wheeler Correctional Facility	Alamo	State prison	Georgia	172	0
6884EB85	Hart	Whitworth Women's Facility prison	Hart County	State prison	Georgia	21	22
67F6A17A	Wilcox	Wilcox State Prison	Abbeville	State prison	Georgia	71	37
44AD6423	Evans	Women's Probation Detention Center	Claxton	State prison	Georgia	29	13
A61381D2	Honolulu	Halawa Correctional Facility	Aiea	State prison	Hawaii	546	81
C6C1483D	Hawaii	Kulani Correctional Facility	Hilo	State prison	Hawaii	0	1
C0B5AE56	Honolulu	Women's Community Correctional Center	Kailua	State prison	Hawaii	0	3
935EE345	Honolulu	Waiawa Correctional Facility	Waipahu	State prison	Hawaii	213	14
A31153F5	Ada	Idaho Maximum Security Institution	Kuna	State prison	Idaho	7	41
235D3428	Clearwater	Idaho Correctional Institution Orofino	Orofino	State prison	Idaho	335	43
F52B9320	Ada	Idaho State Correctional Center	Kuna	State prison	Idaho	1325	93
B8BD791D	Ada	Idaho State Correctional Institution	Kuna	State prison	Idaho	826	101
EA5E6F33	Idaho	North Idaho Correctional Institution	Cottonwood	State prison	Idaho	191	15
4F5ACA19	Bannock	Pocatello Women's Correctional Center	Pocatello	State prison	Idaho	46	9
AD056FD9	Fremont	Saint Anthony Work Camp	St. Anthony	State work camp	Idaho	119	18
CF9D3B3B	Ada	South Boise Women's Correctional Center	Kuna	State prison	Idaho	58	23
A02F000E	Ada	South Idaho Correctional Institution	Kuna	State prison	Idaho	496	31
0115D576	Ada	Correctional Alternative Placement Program facility	Treasure Valley Community Reentry Center	State rehabilitation center	Idaho	267	0
FDFFAC5D	Ada	East Boise Community Work Center	Boise	State prison	Idaho	124	5
7934A762	Bonneville	Treasure Valley Community Reentry Center	Treasure Valley Community Reentry Center	State prison	Idaho	33	1
8080CFAB	Canyon	Nampa Community Reentry Center	Nampa	State prison	Idaho	77	2
FA5323D0	Bonneville	Idaho Falls Community Reentry Center	Idaho Falls	State prison	Idaho	70	5
201C439D	Maverick	Eagle Pass Correctional Facility	Eagle Pass	State prison	Texas	12	0
6D0BE33B	Jefferson	Big Muddy River Correctional Center	Ina	State prison	Illinois	371	105
FC252743	Clinton	Centralia Correctional Center	Centralia	State prison	Illinois	131	146
161CF82A	Cook	Crossroads Adult Transition Center	Chicago	State prison	Illinois	18	2
CF6D0C55	Vermilion	Danville Correctional Center	Danville	State prison	Illinois	968	156
6C94E50C	Macon	Decatur Correctional Center	Decatur	State prison	Illinois	84	50
27B9013F	Lee	Dixon Correctional Center	Dixon	State prison	Illinois	585	281
5405A1CB	Rock Island	East Moline Correctional Center	East Moline	State prison	Illinois	395	86
DED9151A	Cook	Elgin Treatment Center prison	Elgin	State rehabilitation center	Illinois	0	18
12B5DAFC	Kane	Fox Valley Adult Transition Center	Aurora	State prison	Illinois	4	9
D6CA59F2	Montgomery	Graham Correctional Center	Hillsboro	State prison	Illinois	710	183
FD29CCED	Knox	Hill Correctional Center	Galesburg	State prison	Illinois	371	82
84DD1C5E	Fulton	Illinois River Correctional Center	Canton	State prison	Illinois	219	139
6A972AC2	Morgan	Jacksonville Correctional Center	Jacksonville	State prison	Illinois	473	170
8BC80F23	Will	​Joliet Treatment Center	Joliet	State rehabilitation center	Illinois	9	80
C1DFA7A5	Henry	Kewanee Life Skills Re-Entry Center	Kewanee	State prison	Illinois	15	55
1F4015DF	Lawrence	Lawrence Correctional Center	Sumner	State prison	Illinois	1035	221
9452F32E	Logan	Lincoln Correctional Center	Lincoln	State prison	Illinois	275	89
D0F3AB7D	Logan	Logan Correctional Center	Broadwell Township	State prison	Illinois	596	232
8E3241FA	Randolph	Menard Correctional Center	Chester	State prison	Illinois	238	294
11440EAA	Jackson	Murphysboro Life Skills Re-Entry Center	Murphysboro	State prison	Illinois	56	36
C1FCB0B0	Cook	North Lawndale Adult Transition Center	Chicago	State prison	Illinois	7	6
BD05B27E	Peoria	Peoria Adult Transition Center	Peoria	State prison	Illinois	14	35
4C2D1AA1	Perry	Pinckneyville Correctional Center	Pinckneyville	State prison	Illinois	870	174
D8349EAE	Livingston	Pontiac Correctional Center	Pontiac	State prison	Illinois	336	347
268734BC	Crawford	Robinson Correctional Center	Robinson	State prison	Illinois	380	94
5B20BA03	Johnson	Shawnee Correctional Center	Vienna	State prison	Illinois	277	103
F59AFF8B	LaSalle	Sheridan Correctional Center	Sheridan	State prison	Illinois	463	146
37612D35	St. Clair	Southwestern Illinois Correctional Center	East Saint Louis	State prison	Illinois	48	101
B602EBFD	Will	Stateville Correctional Center	Crest Hill	State prison	Illinois	305	190
631D56BA	Will	Stateville Northern Reception and Classification Center	Joliet	State prison	Illinois	343	150
12523AA7	Christian	Taylorville Correctional Center	Taylorville	State prison	Illinois	456	101
6F2D0162	Fayette	Vandalia Correctional Center	Vandalia	State prison	Illinois	497	145
4BEE7574	Johnson	Vienna Correctional Center	Vienna	State prison	Illinois	97	111
8678D36D	Brown	Western Illinois Correctional Center	Mount Sterling	State prison	Illinois	213	113
89681061	Cook	Illinois Youth Center-Chicago	Chicago	State juvenile detention	Illinois	14	25
7E1F25DD	Saline	Illinois Youth Center-Harrisburg	Harrisburg	State juvenile detention	Illinois	5	22
E9938795	Jersey	Illinois Youth Center-Grafton	Grafton	State juvenile detention	Illinois	1	18
1570BEF4	Kane	Illinois Youth Center-Saint Charles	Saint Charles	State juvenile detention	Illinois	15	57
5CE58F4F	DuPage	Illinois Youth Center-Warrenville	Warrenville	State juvenile detention	Illinois	0	11
9E1C1B48	Perry	Branchville Correctional Facility	Branchville	State prison	Indiana	255	66
43AA2897	Noble	Chain O'Lakes Correctional Facility	Albion	State prison	Indiana	83	5
E71543E0	Madison	Correctional Industrial Facility	Pendleton	State prison	Indiana	135	105
80D7AE80	Johnson	Edinburgh Correctional Facility	Edinburgh	State prison	Indiana	16	23
8B3359FE	Hendricks	Heritage Trail Correctional Facility	Plainfield	State prison	Indiana	61	33
C3BC3370	LaPorte	Indiana State Prison	Michigan City	State prison	Indiana	73	109
3E5C5539	Marion	Indiana Women's Prison	Indianapolis	State prison	Indiana	129	45
7FD4BB69	LaPorte	LaPorte Juvenile Correctional Facility	LaPorte	State juvenile detention	Indiana	16	12
A4AAA4E9	Cass	Logansport Juvenile Correctional Facility	Logansport	State juvenile detention	Indiana	13	39
77032F09	Jefferson	Madison Correctional Facility	Madison	State prison	Indiana	134	30
DD7FA723	Miami	Miami Correctional Facility	Bunker Hill	State prison	Indiana	251	97
8511765	Henry	New Castle Correctional Facility	New Castle	State prison	Indiana	367	103
A4312CF3	Madison	Pendleton Correctional Facility	Pendleton	State prison	Indiana	166	87
21BA749E	Madison	Pendleton Juvenile Correctional Facility	Pendleton	State juvenile detention	Indiana	57	62
982F7B05	Hendricks	Plainfield Correctional Facility	Plainfield	State prison	Indiana	140	104
CF5D48DF	Putnam	Putnamville Correctional Facility	Greencastle	State prison	Indiana	280	110
7A6481FD	Hendricks	Reception Diagnostic Center prison	Plainfield	State prison	Indiana	460	81
D31FA669	Parke	Rockville Correctional Facility	Rockville	State prison	Indiana	339	79
7C64388E	St. Joseph	South Bend Community Re-entry Center prison	South Bend	State prison	Indiana	27	6
6EA757C9	Sullivan	Wabash Valley Correctional Facility	Carlisle	State prison	Indiana	289	186
DB11566D	LaPorte	Westville Correctional Facility	Westville	State prison	Indiana	272	189
E39B75D8	Jones	Anamosa State Penitentiary	Anamosa	State prison	Iowa	868	155
18D8D941	Page	Clarinda Correctional Facility	Clarinda	State prison	Iowa	603	62
04D97CE8	Webster	Fort Dodge Correctional Facility	Fort Dodge	State prison	Iowa	563	91
26DA117C	Polk	Iowa Correctional Institution for Women	Mitchellville	State prison	Iowa	23	38
3BCCB9C9	Johnson	Iowa Medical and Classification Center prison	Coralville	State facility	Iowa	527	108
7F78227B	Lee	Iowa State Penitentiary	Fort Madison	State prison	Iowa	229	98
68B01F20	Henry	Mount Pleasant Correctional Facility	Mount Pleasant	State prison	Iowa	789	61
AB2D310A	Jasper	Newton Correctional Facility	Palo Alto Township	State prison	Iowa	825	52
206FD65A	Calhoun	North Central Correctional Facility	Rockwell City	State prison	Iowa	389	34
6146AFEB	Hardin	Boys State Training School	Eldora	State juvenile detention	Iowa	28	56
B0612427	Cherokee	Civil Commitment Unit for Sexual Offenders	Cherokee	State prison	Iowa	91	51
A4B57DBF	Butler	El Dorado Correctional Facility	Prospect Township	State prison	Kansas	975	233
845C71AF	Ellsworth	Ellsworth Correctional Facility	Ellsworth	State prison	Kansas	584	90
0893CE04	Reno	Hutchinson Correctional Facility	Hutchinson	State prison	Kansas	1378	287
A82E8D1B	Leavenworth	Lansing Correctional Facility	Lansing	State prison	Kansas	1009	170
0BAE0B38	Pawnee	Larned Correctional Mental Health Facility	Larned	State prison	Kansas	353	82
0F137B46	Norton	Norton Correctional Facility	Norton	State prison	Kansas	766	127
057B25C8	Shawnee	Topeka Correctional Facility	Topeka	State prison	Kansas	522	108
943E65DA	Cowley	Winfield Correctional Facility	Winfield	State prison	Kansas	430	87
F4C40C15	Sedgwick	Wichita Work Release Facility prison	Wichita	Low-security work release	Kansas	81	25
9B978304	Shawnee	Kansas Juvenile Correctional Complex	Topeka	State juvenile detention	Kansas	20	71
3C707508	Bell	Bell County Forestry Camp	Bell County	State work camp	Kentucky	190	30
F0895EDA	Fayette	Blackburn Correctional Complex	Fayette County	State prison	Kentucky	229	37
425499A8	Morgan	Eastern Kentucky Correctional Complex	Morgan County	State prison	Kentucky	1162	181
073691D7	Muhlenberg	Green River Correctional Complex	Central City	State prison	Kentucky	368	72
45F36DD0	Shelby	Kentucky Correctional Institution for Women	Pewee Valley	State prison	Kentucky	403	67
D7C32128	Lyon	Kentucky State Penitentiary	Lyon County	State prison	Kentucky	680	102
F4FE2E00	Oldham	Kentucky State Reformatory prison	LaGrange	State prison	Kentucky	534	86
A808F441	Lee	Lee Adjustment Center prison	Beattyville	State prison	Kentucky	702	66
D25B9407	Elliott	Little Sandy Correctional Complex	Elliott County	State prison	Kentucky	576	59
88EB6067	Oldham	Luther Luckett Correctional Complex	LaGrange	State prison	Kentucky	987	102
F609F133	Boyle	Northpoint Training Center prison	Burgin	State prison	Kentucky	936	104
BAA6F18F	Oldham	Roederer Correctional Complex	LaGrange	State prison	Kentucky	703	75
57430E9F	Floyd	Southeast State Correctional Complex	Wheelwright	State prison	Kentucky	65	30
8FBACC3D	Lyon	Western Kentucky Correctional Complex	Fredonia	State prison	Kentucky	363	73
FB72C1CB	Allen	Allen Correctional Center	Kinder	State prison	Louisiana	266	39
1D67B3C2	East Feliciana	Dixon Correctional Institute	Jackson	State prison	Louisiana	903	96
C82C6F22	Claiborne	David Wade Correctional Center	Claiborne Parish	State prison	Louisiana	93	90
F3EE14B3	Iberville	Elayn Hunt Correctional Center	Saint Gabriel	State prison	Louisiana	232	117
F05AE943	Iberville	Louisiana Correctional Institute for Women	Saint Gabriel	State prison	Louisiana	354	98
8175973D	West Feliciana	Louisiana State Penitentiary	Angola	State prison	Louisiana	599	278
78A96594	Washington	B.B. Rayburn Correctional Center	Washington Parish	State prison	Louisiana	159	103
6E1E20F7	Avoyelles	Raymond Laborde Correctional Center	Avoyelles Parish	State prison	Louisiana	595	104
EF746640	Knox	Maine State Prison	Warren	State prison	Maine	15	7
F4D62E99	Cumberland	Maine Correctional Center	Windam	State prison	Maine	147	17
7634779	Penobscot	Mountain View Correctional Facility	Charleston	State prison	Maine	7	7
83DB762A	Knox	Bolduc Correctional Facility	Warren	State prison	Maine	0	1
E1F8954A	Cumberland	Southern Maine Womens Reentry Center	Windam	State prison	Maine	0	0
98B5415E	Washington	Downeast Correctional Facility	Machiasport	State prison	Maine	0	0
CFED4577	Kennebec	Maine Juvenile Dentention System	Augusta	State juvenile detention	Maine	1	13
DA67A111	Baltimore City	Baltimore City Correctional Center	Baltimore	State prison	Maryland	119	39
72A034D6	Baltimore City	Chesapeake Detention Facility	Baltimore	State prison	Maryland	185	85
A790C92E	Baltimore City	Maryland Reception, Diagnostic and Classification Center prison	Baltimore	State prison	Maryland	115	92
8AD051D4	Baltimore City	Metropolitan Transition Center prison	Baltimore	State prison	Maryland	240	151
DE88C375	Baltimore City	Youth Detention Center	Baltimore	State prison	Maryland	18	38
13E2CCD7	Somerset	Eastern Correctional Institution	Westover	State prison	Maryland	1082	228
C6732BC2	Queen Anne's	Eastern Pre-Release Unit	Church Hill	State prison	Maryland	3	5
9D19AFD3	Washington	Maryland Correctional Institution - Hagerstown	Hagerstown	State prison	Maryland	141	105
7A4BB7F0	Washington	Maryland Correctional Training Center	Hagerstown	State prison	Maryland	225	167
A015542D	Washington	Roxbury Correctional Institution	Hagerstown	State prison	Maryland	275	118
7D499762	Carroll	Central Maryland Correctional Facility	Baltimore	State prison	Maryland	124	34
E2D8DECA	Anne Arundel	Dorsey Run Correctional Facility	Jessup	State prison	Maryland	95	70
2B1C23B4	Anne Arundel	Jessup Correctional Institution	Jessup	State prison	Maryland	356	136
3B08C01C	Anne Arundel	Maryland Correctional Institution - Jessup	Jessup	State prison	Maryland	234	74
C4FE9200	Anne Arundel	Maryland Correctional Institution for Women	Jessup	State prison	Maryland	61	108
437A0731	Howard	Patuxent Institution	Jessup	State prison	Maryland	69	119
02479ED2	Charles	Southern Maryland Pre-Release Unit	Charlotte Hall	State prison	Maryland	23	9
8F429DF5	Allegany	North Branch Correctional Institution	Cumberland	State prison	Maryland	382	164
9BF5611B	Allegany	Western Correctional Institution	Cumberland	State prison	Maryland	281	139
DFE7C549	Howard	Correctional Mental Health Center	Jessup	State rehabilitation center	Maryland	0	0
4604C099	Baltimore City	Baltimore Pretrial Complex	Baltimore	State facility	Maryland	0	1
10495FE4	Baltimore City	Baltimore City Juvenile Justice Center	Baltimore	State juvenile detention	Maryland	20	69
A2673C35	Prince George's	Cheltenham Youth Detention Center	Cheltenham	State juvenile detention	Maryland	10	23
C8BDE1F7	Baltimore	Hickey School	Baltimore	State juvenile detention	Maryland	1	35
9760F92E	Wicomico	Lower Eastern Shore Children's Center	Salisbury	State juvenile detention	Maryland	2	14
C3BBFC66	Kent	Carter juvenile center	Chestertown	State juvenile detention	Maryland	1	0
F1444E0E	Montgomery	Alfred D. Noyes Children's Center	Rockville	State juvenile detention	Maryland	2	14
DAAC54F5	Anne Arundel	Thomas J.S. Waxter Children's Center	Baltimore	State juvenile detention	Maryland	4	31
A51F3BE1	Washington	Western Maryland Children's Center	Hagerstown	State juvenile detention	Maryland	10	21
414EDCD9	Garrett	Backbone Mountain Youth Center	Swanton	State juvenile detention	Maryland	0	18
6A428984	Penobscot	Mountain View juvenile correctional facility	Charleston	State juvenile detention	Maryland	3	10
18C49FC1	Garrett	Garrett Children's Center	Lonaconing	State juvenile detention	Maryland	0	14
AAD17A2B	Allegany	Green Ridge Youth Center	Flintstone	State juvenile detention	Maryland	2	12
C3081B1F	Garrett	Meadow Mountain Youth Center	Grantsville	State juvenile detention	Maryland	0	0
2B0449B3	Frederick	Victor Cullen juvenile center	Sabillasville	State juvenile detention	Maryland	0	24
59AB714F	Plymouth	Massachusetts Alcohol and Substance Abuse Center	Plymouth	State prison	Massachusetts	68	7
DAB6ED8B	Suffolk	Boston Pre-Release Center	Roslindale	State prison	Massachusetts	1	12
3055113B	Norfolk	Massachusetts Correctional Institution- Norfolk	Norfolk	State prison	Massachusetts	501	68
6080C552	Worcester	North Central Correctional Institution	Gardner	State prison	Massachusetts	846	48
01E89DE7	Plymouth	Bridgewater State prison hospital	Bridgewater	State facility	Massachusetts	45	3
5829334D	Plymouth	Old Colony Correctional Center	Bridgewater	State prison	Massachusetts	247	56
07D3365E	Norfolk	Massachusetts Correctional Institution-Cedar Junction	Walpole	State prison	Massachusetts	137	95
731851C2	Middlesex	Massachusetts Correctional Institution-Concord	Concord	State prison	Massachusetts	297	72
D2CF6453	Middlesex	Northeastern Correctional Center	West Concord	State prison	Massachusetts	23	18
97A2359E	Norfolk	Pondville Correctional Center	Norfolk	State prison	Massachusetts	2	14
ECE64FA9	Middlesex	Massachusetts Correctional Institution- Framingham	Framingham	State prison	Massachusetts	95	33
66FE752A	Middlesex	Massachusetts Correctional Institution-Shirley	Shirley	State prison	Massachusetts	519	88
8AB90607	Plymouth	Massachusetts Treatment Center prison	Bridgewater	State rehabilitation center	Massachusetts	189	50
D0A4E6B3	Middlesex	South Middlesex Correctional Center	Framingham	State prison	Massachusetts	12	10
6775EC4D	Suffolk	Lemuel Shattuck Hospital Correctional Unit	Jamaica Plain	State facility	Massachusetts	8	10
57E3C8BB	Worcester	Souza Baranowski Correctional Center	Shirley	State prison	Massachusetts	28	45
308BAC59	Alger	Alger Correctional Facility	Munising	State prison	Michigan	151	26
AD12CAD1	Baraga	Baraga Correctional Facility	Baraga	State prison	Michigan	171	85
156C3564	Ionia	Bellamy Creek Correctional Facility	Ionia	State prison	Michigan	939	146
2A09AA9D	Montcalm	Carson City Correctional Facility	Carson City	State prison	Michigan	2118	270
69C79FAF	Gratiot	Central Michigan Correctional Facility	St. Louis	State prison	Michigan	2053	248
88B85472	Jackson	Charles Egeler Reception & Guidance Center prison	Jackson	State prison	Michigan	2394	224
26D00BCB	Chippewa	Chippewa Correctional Facility	Kinross	State prison	Michigan	1815	208
E629C283	Jackson	Cooper Street Correctional Facility	Jackson	State prison	Michigan	1287	154
2794CD73	Wayne	Detroit Detention Center	Detroit	State prison	Michigan	0	20
631A0BA9	Wayne	Detroit Reentry Center prison	Detroit	State prison	Michigan	56	34
7E9477B0	Jackson	Duane Waters prison hospital	Jackson	State facility	Michigan	33	0
B8DB522A	Muskegon	Earnest C. Brooks Correctional Facility	Muskegon Heights	State prison	Michigan	1011	109
4C8A9F0F	Jackson	G. Robert Cotton Correctional Facility	Jackson	State prison	Michigan	956	130
1CCC8C1D	Lenawee	Gus Harrison Correctional Facility	Adrian	State prison	Michigan	1466	190
3B776551	Ionia	Ionia Correctional Facility	Ionia	State prison	Michigan	324	126
B8E14D67	Chippewa	Kinross Correctional Facility	Kincheloe	State prison	Michigan	1304	143
BD89B5BE	Branch	Lakeland Correctional Facility	Coldwater	State prison	Michigan	849	104
6F048359	Macomb	Macomb Correctional Facility	Lenox Township	State prison	Michigan	439	136
DA527675	Marquette	Marquette Branch Prison	Marquette	State prison	Michigan	852	183
22323DA0	Ionia	Michigan Reformatory	Ionia	State prison	Michigan	952	128
763A9A8C	Muskegon	Muskegon Correctional Facility	Muskegon	State prison	Michigan	1115	101
0777F49C	Luce	Newberry Correctional Facility	Pentland Township	State prison	Michigan	857	71
05FFA491	Manistee	Oaks Correctional Facility	Manistee	State prison	Michigan	771	119
63962CB0	Jackson	Parnall Correctional Facility	Jackson	State prison	Michigan	544	114
F20047BF	Ionia	Richard A. Handlon Correctional Facility	Ionia	State prison	Michigan	800	115
53CFD167	Saginaw	Saginaw Correctional facility	Saginaw	State prison	Michigan	1137	141
A053A48C	Gratiot	Saint Louis Correctional Facility	Saint Louis	State prison	Michigan	840	124
5948069F	Lapeer	Thumb Correctional Facility	Lapeer	State prison	Michigan	524	81
93F7EE54	Washtenaw	Women's Huron Valley Correctional Facility	Ypsilanti	State prison	Michigan	419	123
ED16A64E	Livingston	Woodland Center Correctional Facility	Whitmore Lake	State prison	Michigan	51	87
28C95310	Oakland	Oakland County Children's Village	Pontiac	State juvenile detention	Michigan	15	23
799DCC84	Rice	Minnesota Correctional Facility – Faribault	Faribault	State prison	Minnesota	1196	157
A10ADDA5	Anoka	Minnesota Correctional Facility – Lino Lakes	Lino Lakes	State prison	Minnesota	357	92
F251F4D0	Gray	Rufe Jordan Unit prison	Pampa	State prison	Texas	501	97
6D170ED7	Carlton	Minnesota Correctional Facility – Moose Lake	Moose Lake	State prison	Minnesota	188	91
54969A5A	Washington	Minnesota Correctional Facility – Oak Park Heights	Oak Park Heights	State prison	Minnesota	98	86
53C4858B	Goodhue	Minnesota Correctional Facility – Red Wing	Red Wing	State prison	Minnesota	1	24
F5D4C4E8	Chisago	Minnesota Correctional Facility – Rush City	Rush City	State prison	Minnesota	216	81
71C814CB	Scott	Minnesota Correctional Facility – Shakopee	Shakopee	State prison	Minnesota	25	55
7F476FE6	Sherburne	Minnesota Correctional Facility – St. Cloud	St. Cloud	State prison	Minnesota	881	162
4E7D51FE	Washington	Minnesota Correctional Facility – Stillwater	Stillwater	State prison	Minnesota	989	209
330A7B08	Itasca	Minnesota Correctional Facility – Togo	Togo	State prison	Minnesota	8	4
120C4673	Pine	Minnesota Correctional Facility – Willow River	Willow River	State prison	Minnesota	83	7
FF0A583B	Goodhue	Minnesota Correctional Facility – Red Wing	Red Wing	State juvenile detention	Minnesota	0	0
F295E53A	Sunflower	Mississippi State Penitentiary	Parchman	State prison	Mississippi	109	0
170F23B3	Rankin	Central Mississippi Correctional Facility	Pearl	State prison	Mississippi	103	0
E17D0325	Greene	South Mississippi Correctional Institution	Leakesville	State prison	Mississippi	395	0
679D95F8	Lauderdale	East Mississippi Correctional Facility	Meridian	State prison	Mississippi	43	0
C49902A8	Marshall	Marshall County Correctional Facillity	Holly Springs	State prison	Mississippi	94	0
1861583C	Wilkinson	Wilkinson County Correctional Facility	Woodville	State prison	Mississippi	9	0
8DC651E0	Alcorn	Alcorn County Regional Correctional Facility	Corinth	State prison	Mississippi	0	0
A071EF1F	Bolivar	Bolivar County Correctional Facility	Cleveland	State prison	Mississippi	2	0
AF1704D6	Carroll	Carroll-Montgomery County/Regional Correctional Facility	Vaiden	State prison	Mississippi	123	0
A501B3D6	Chickasaw	Chickasaw County Regional Correctional Facility	Houston	State prison	Mississippi	20	0
DB74C000	George	George-Greene County/Regional Correctional Facility	Lucedale	State prison	Mississippi	235	0
0FCBF0B6	Holmes	Holmes-Humphreys County/Regional Correctional Facility	Lexington	State prison	Mississippi	0	0
5C9F926F	Issaquena	Issaquena County Regional Correctional Facility	Mayersville	State prison	Mississippi	52	0
D8994DCF	Jefferson	Jefferson-Franklin County/Regional Correctional Facility	Fayette	State prison	Mississippi	0	0
C2308EFD	Kemper	Kemper-Neshoba County/Regional Correctional Facility	DeKalb	State prison	Mississippi	2	0
EEDAFFAE	Leake	Leake County Correctional Facility	Carthage	State prison	Mississippi	74	0
D592FDB9	Marion	Marion-Walthall County/Regional Correctional Facility	Columbia	State prison	Mississippi	15	0
063DABC6	Stone	Stone County Correctional Facility	Wiggins	State prison	Mississippi	12	11
0AC03377	Washington	Washington County/Regional Correctional Facility	Greenville	State prison	Mississippi	85	0
A1B03C26	Winston	Winston-Choctaw County/Regional Correctional Facility	Louisville	State prison	Mississippi	18	0
4DB76972	Yazoo	Yazoo County Correctional Facility	Yazoo City	State prison	Mississippi	27	0
776A0D8E	Forrest	Forrest County Community Work Center	Hattiesburg	State prison	Mississippi	0	0
026C23CE	Harrison	Harrison County  Community Work Center	Gulfport	State prison	Mississippi	0	0
A13F34A3	Leflore	Leflore County Technical Violation Center	Greenwood	State prison	Mississippi	0	0
157AFF27	Forrest	Madison County  Community Work Center	Canton	State prison	Mississippi	0	0
6648C823	Noxubee	Noxubee County Community Work Center	Macon	State prison	Mississippi	0	0
F09DF66F	Pike	Pike County Community Work Center	Magnolia	State prison	Mississippi	0	0
60D26736	Quitman	Quitman County Community Work Center	Lambert	State prison	Mississippi	0	0
33D675FF	Wilkinson	Wilkinson County Community Work Center	Woodville	State prison	Mississippi	0	0
64DD6F6E	Hinds	Flowood Community Work Center/Restitution Center	Flowood	State prison	Mississippi	0	0
FCD4D029	Leflore	Greenwood Restitution Center	Greenwood	State prison	Mississippi	0	0
9B9D94E2	Hinds	Hinds County Restitution Center	Jackson	State prison	Mississippi	0	0
DE89E81A	Jackson	Pascagoula Restitution Center	Pascagoula	State prison	Mississippi	0	0
7E59D221	Leflore	Delta Correctional Facility	Greenwood	State prison	Mississippi	4	0
1C49236A	Tallahatchie	Tallahatchie County Correctional Facility	Tutwiler	State prison	Mississippi	47	0
FF9F235C	George	George County State Work Program	Lucedale	Low-security work release	Mississippi	1	0
A257E3F2	Cole	Algoa Correctional Center	Jefferson City	State prison	Missouri	143	65
43ADFAC1	Cooper	Boonville Correctional Center	Boonville	State prison	Missouri	160	93
FF27C2E3	Livingston	Chillicothe Correctional Center	Chillicothe	State prison	Missouri	300	120
6FD9BD15	DeKalb	Crossroads Correctional Center	Cameron	State prison	Missouri	1	0
9407D234	Callaway	Cremer Therapeutic Community Center	Fulton	State prison	Missouri	27	14
BCD3543B	St. Francois	Eastern Reception, Diagnostic and Correctional Center	Bonne Terre	State prison	Missouri	574	489
1771B361	St. Francois	Farmington Correctional Center	Farmington	State prison	Missouri	538	219
341C2583	Callaway	Fulton Reception and Diagnostic Center prison	Fulton	State prison	Missouri	804	105
E86AF798	Cole	Jefferson City Correctional Center	Jefferson City	State prison	Missouri	353	142
912A6122	Jackson	Kansas City Reentry Center prison	Kansas City	State prison	Missouri	29	21
7B341E96	Randolph	Moberly Correctional Center	Moberly	State prison	Missouri	235	88
06AA4D0F	St. Louis	Missouri Eastern Correctional Center	Pacific	State prison	Missouri	197	109
55A39923	Nodaway	Maryville Treatment Center prison	Maryville	State rehabilitation center	Missouri	51	48
E16D6C46	Pike	Northeast Correctional Center	Bowling Green	State prison	Missouri	109	133
BA21C3DB	Webster	Ozark Correctional Center	Fordland	State prison	Missouri	160	50
CD078ABD	Washington	Potosi Correctional Center	Mineral Point	State prison	Missouri	144	129
E6160AF1	Texas	South Central Correctional Center	Licking	State prison	Missouri	135	89
358705C0	Mississippi	Southeast Correctional Center	Charleston	State prison	Missouri	270	125
48E4B073	Moniteau	Tipton Correctional Center	Tipton	State prison	Missouri	171	67
FAB6EB12	St. Louis City	Transition Center of Saint Louis prison	Saint Louis	State prison	Missouri	4	43
069FE2BC	Audrain	Women's Eastern Reception, Diagnostic and Correctional Center prison	Vandalia	State prison	Missouri	570	85
692EB762	DeKalb	Western Missouri Correctional Center	Cameron	State prison	Missouri	216	160
1C861B3D	Buchanan	Western Reception, Diagnostic and Correctional Center prison	Saint Joseph	State prison	Missouri	371	140
4D5CCFE4	Lincoln	Camp Avery Park Camp	Troy	State juvenile detention	Missouri	3	6
B632B64C	Greene	Community Learning Center	Springfield	State juvenile detention	Missouri	4	4
7092F9C1	Boone	Cornerstone Group Home	Columbia	State juvenile detention	Missouri	0	1
61F60C48	Greene	Datema House	Springfield	State juvenile detention	Missouri	0	1
48070DD9	Callaway	Fulton Youth Treatment Center	Fulton	State juvenile detention	Missouri	10	6
5705DC44	Texas	Gentry Residential Treatment Center	Cabool	State juvenile detention	Missouri	1	3
14C65E47	Cape Girardeau	Girardot Center	Cape Girardeau	State juvenile detention	Missouri	0	3
161E41B2	Jefferson	Hillsboro Treatment Center	Hillsboro	State juvenile detention	Missouri	0	3
0E7FE81C	St. Louis City	Hogan Street Youth Center	Saint Louis	State juvenile detention	Missouri	32	24
4373E04C	St. Louis	Lewis and Clark Hall	Saint Louis	State juvenile detention	Missouri	0	0
57ED3551	St. Louis City	Missouri Hills Youth Center	Saint Louis	State juvenile detention	Missouri	25	33
A30E63A5	Montgomery	Montgomery Youth Center	Montgomery City	State juvenile detention	Missouri	6	2
ABDC2C73	Lawrence	Mount Vernon Treatment Center	Mount Vernon	State juvenile detention	Missouri	0	8
62FC8313	Clay	Northwest Regional Youth Center	Kansas City	State juvenile detention	Missouri	28	21
FA5C0E8B	Bates	Rich Hill Youth Development Center	Rich Hill	State juvenile detention	Missouri	0	0
B710355B	Buchanan	Riverbend Treatment Center	Saint Joseph	State juvenile detention	Missouri	6	10
3341AFCA	Butler	Sears Youth Center	Poplar Bluff	State juvenile detention	Missouri	14	21
8BDB9967	Butler	Sierra Osage Treatment Center	Poplar Bluff	State juvenile detention	Missouri	1	5
7C7C8B2A	Clay	Watkins Mill Park Camp	Lawson	State juvenile detention	Missouri	0	6
B9DEFA47	Lafayette	Waverly Youth Center	Waverly	State juvenile detention	Missouri	13	13
1FA083E8	Greene	Wilson Creek	Springfield	State juvenile detention	Missouri	0	2
B539E933	Powell	Montana State Prison	Deer Lodge	State prison	Montana	487	182
0D08776C	Yellowstone	Montana Women's Prison	Billings	State prison	Montana	119	22
6FC68C47	Jefferson	Riverside Special Needs Unit	Boulder	State prison	Montana	8	1
115F7BA5	Custer	Pine Hills Correctional Facility	Miles City	State prison	Montana	19	20
2A880312	Toole	Crossroads Correctional Center	Shelby	State prison	Montana	299	34
6A30D418	Dawson	Dawson County Correctional Facility	Glendive	State prison	Montana	37	0
E7106547	Cascade	Great Falls Regional Prison	Great Falls	State prison	Montana	11	0
1AA65B71	Missoula	Missoula Assessment & Sanction Center	Missoula	State prison	Montana	0	0
20AC1CA8	Yellowstone	Alpha House prison	Billings	State prison	Montana	25	2
70004D6A	Silver Bow	Butte Prerelease Center prison	Butte	State prison	Montana	0	0
13E0997F	Silver Bow	Connections Corrections Program East - Butte	Butte	State prison	Montana	20	5
271DBB55	Deer Lodge	Connections Corrections Program West and Warm Springs Addiction Treatment and Change West	Warm Springs	State prison	Montana	2	4
236100C8	Jefferson	Elkhorn Treatment Center	Boulder	State prison	Montana	0	0
BB24B969	Gallatin	Gallatin Reentry Program center	Bozeman	State prison	Montana	2	2
90572893	Cascade	Great Falls Transition Center	Great Falls	State prison	Montana	2	0
24C2BB88	Lewis and Clark	Helena Prerelease Center	Helena	State prison	Montana	0	0
0AF07275	Missoula	Missoula Prerelease Center	Missoula	State prison	Montana	3	0
6C10D7F9	Fergus	Nexus Treatment center	Lewistown	State rehabilitation center	Montana	14	0
47035EE4	Yellowstone	Passages center	Billings	State rehabilitation center	Montana	38	0
D7AEDCE8	Deer Lodge	Assessment and Transition prison	Anaconda	State rehabilitation center	Montana	68	7
E89BE876	Dawson	Warm Springs Addiction Treatment and Change East - Glendive	Glendive	State rehabilitation center	Montana	0	0
A563766F	Lancaster	Nebraska State Penitentiary	Lincoln	State prison	Nebraska	139	95
4289FAA1	Lancaster	Community Corrections Center - Lincoln	Lincoln	State prison	Nebraska	2	18
F2BECDF3	Douglas	Community Corrections Center - Omaha	Omaha	State prison	Nebraska	7	8
96EE9DB8	Lancaster	Diagnostic & Evaluation Center prison	Lincoln	State prison	Nebraska	63	34
6220620E	Lancaster	Lincoln Correctional Center	Lincoln	State prison	Nebraska	9	34
B479A304	York	Nebraska Correctional Center for Women	York	State prison	Nebraska	27	26
A158033A	Douglas	Nebraska Correctional Youth Facility	Omaha	State juvenile detention	Nebraska	13	9
E3D2EF21	Douglas	Omaha Correctional Center	Omaha	State prison	Nebraska	112	39
FE252A98	Johnson	Tecumseh State Correctional Institution	Tecumseh	State prison	Nebraska	70	101
6CC7AE53	Red Willow	Work Ethic Camp	McCook	State work camp	Nebraska	11	1
D9572328	White Pine	Ely State Prison	Ely	State prison	Nevada	213	85
6B850A93	Elko	Carlin Conservation Camp	Carlin	State work camp	Nevada	84	5
EE83B38C	Clark	High Desert State Prison	Indian Springs	State prison	Nevada	515	284
F0AF38D8	Clark	Casa Grande Transitional prison housing	Las Vegas	State prison	Nevada	170	30
E3714060	Clark	Florence McClure Women's Correctional Center	North Las Vegas	State prison	Nevada	72	54
44BCEC5C	Humboldt	Humboldt Conservation Camp prison	Winnemucca	State work camp	Nevada	95	9
72AC98B7	Washoe	Lake's Crossing Center prison	Sparks	State prison	Nevada	0	10
BCEC8B2A	Pershing	Lovelock Correctional Center	Lovelock	State prison	Nevada	766	101
4791E36D	Carson City	Northern Nevada Correctional Center	Carson City	State prison	Nevada	936	135
8FA9AEF1	Clark	Southern Desert Correctional Center	Indian Springs	State prison	Nevada	556	129
7A935EBA	Carson City	Warm Springs Correctional Center	Carson City	State prison	Nevada	481	67
048ED05F	Washoe	Northern Nevada transitional prison housing	Reno	State prison	Nevada	63	0
B1FFE609	Lincoln	Pioche Conservation Camp	Pioche	State work camp	Nevada	96	14
D2982803	Clark	Three Lakes Valley Conservation Camp prison	Indian Springs	State work camp	Nevada	220	8
4E75092E	Clark	Jean Conservation Camp prison	Jean	State work camp	Nevada	55	7
993676BD	Carson City	Stewart Training Facility prison	Carson City	State work camp	Nevada	241	52
6ADA1DDF	Nye	Tonopah Conservation Camp prison	Tonopah	State work camp	Nevada	3	2
75531DED	Clark	Muri Stein prison hospital	Las Vegas	State facility	Nevada	3	23
13B1EF88	Elko	Wells Conservation Camp prison	Wells	State work camp	Nevada	76	3
CBF3C7A4	Merrimack	New Hampshire Correctional Facility for Women	Concord	State prison	New Hampshire	26	12
0484D57E	Coos	Northern New Hampshire Corrections Facility	Berlin	State prison	New Hampshire	133	31
9E35106E	Merrimack	New Hampshire State Prison for Men	Concord	State prison	New Hampshire	276	95
E58A7836	Merrimack	State Transition Centers	Concord	State prison	New Hampshire	22	17
1FA518B1	Middlesex	Adult Diagnostic and Treatment Center prison	Avenel	State prison	New Jersey	410	153
CD7C0141	Cumberland	Bayside State Prison	Maurice River Township	State prison	New Jersey	562	131
3658E1C3	Mercer	Central Reception and Assignment Facility prison	Trenton	State prison	New Jersey	368	143
74FECE2E	Middlesex	East Jersey State Prison	Rahway	State prison	New Jersey	203	187
3F8D9197	Hunterdon	Edna Mahan Correctional Facility for Women	Clinton	State prison	New Jersey	157	150
45EDF90D	Burlington	Garden State Youth Correctional Facility	Burlington County	State juvenile detention	New Jersey	555	190
2D6AD365	Burlington	Mid-State Correctional Facility	Wrightstown	State prison	New Jersey	88	101
27B4A1E8	Mercer	New Jersey State Prison	Trenton	State prison	New Jersey	231	244
0A4A98A8	Essex	Northern State Prison	Newark	State prison	New Jersey	310	273
556AA71A	Cumberland	South Woods State Prison	Cumberland County	State prison	New Jersey	1127	252
A7A58CA6	Cumberland	Southern State Correctional Facility	Maurice River Township	State prison	New Jersey	295	168
0420BFB2	Hunterdon	William H. Fauver Youth Correctional Facility	Clinton Township	State juvenile detention	New Jersey	247	127
D222D5A5	Mercer	Bo Robinson Assessment and Treatment center prison	Mercer County	State halfway house	New Jersey	52	0
6E389A1E	Mercer	Clinton House	Mercer County	State halfway house	New Jersey	0	0
6D89BA78	Burlington	Columbus House	Mercer County	State halfway house	New Jersey	6	0
2.98E+43	Hudson	CURA treatment house	Secaucus	State rehabilitation center	New Jersey	1	0
9EF6D993	Passaic	Fenwick House	Pasaic County	State halfway house	New Jersey	1	0
72B73F16	Camden	Fletcher House	Camden County	State halfway house	New Jersey	1	0
B374C83D	Camden	Garrett House	Camden County	State halfway house	New Jersey	4	0
14CA42DE	Camden	Hope Hall	Camden	State halfway house	New Jersey	13	0
92C12578	Essex	James A. Hemm House	Newark	State halfway house	New Jersey	1	0
99047F52	Cumberland	Kintock Bridgeton House 1	Bridgeton	State halfway house	New Jersey	10	0
5F4219F5	Cumberland	Kintock Bridgeton House 2	Bridgeton	State halfway house	New Jersey	15	0
67D49810	Essex	Kintock Newark House	Newark	State halfway house	New Jersey	10	0
97BC1897	Passaic	The Harbor House	Essex County	State halfway house	New Jersey	9	0
7DC5E4E7	Union	Tully House	Essex County	State halfway house	New Jersey	8	0
343DDDA2	Valencia	Central New Mexico Correctional Facility	Los Lunas	State prison	New Mexico	292	174
285F16F0	Santa Fe	Penitentiary of New Mexico	Santa Fe	State prison	New Mexico	217	144
F60A2EA2	Chaves	Roswell Correctional Center	Hagerman	State prison	New Mexico	230	47
27A319BD	Colfax	Springer Correctional Center	Springer	State prison	New Mexico	151	35
A14839C0	Union	Northeast New Mexico Correctional Facility	Clayton	State prison	New Mexico	167	52
667D1870	Cibola	Northwest New Mexico Correctional Center	Grants	State prison	New Mexico	126	73
BAA57D8D	Dona Ana	Southern New Mexico Correctional Facility	Las Cruces	State prison	New Mexico	230	115
56F6BD11	Cibola	Western New Mexico Correctional Facility	Grants	State prison	New Mexico	226	30
D3271771	Guadalupe	Guadalupe County Correctional Facility	Santa Rosa	State prison	New Mexico	253	62
BE8BF132	Lea	Lea County Correctional Facility	Hobbs	State prison	New Mexico	759	138
3DDD1785	Essex	Adirondack Correctional Facility	Ray Brook	State prison	New York	2	0
0D9A2643	Orleans	Albion Correctional Facility	Albion	State prison	New York	28	0
BBD4648A	Clinton	Altona Correctional Facility	Altona	State prison	New York	9	0
90A2BA71	Wyoming	Attica Correctional Facility	Attica	State prison	New York	281	0
8C2DEAFF	Cayuga	Auburn Correctional Facility	Auburn	State prison	New York	126	0
FAD4E3B5	Franklin	Bare Hill Correctional Facility	Malone	State prison	New York	233	0
44C6E66B	Westchester	Bedford Hills Correctional Facility	Bedford	State prison	New York	85	0
2.18E+20	Jefferson	Cape Vincent Correctional Facility	Cape Vincent	State prison	New York	5	0
CAC759A1	Cayuga	Cayuga Correctional Facility	Moravia	State prison	New York	182	0
026B765D	Clinton	Clinton Correctional Facility	Village of Dannemora	State prison	New York	378	0
2862049	Erie	Collins Correctional Facility	Town of Collins	State prison	New York	122	0
0D0413F1	Greene	Coxsackie Correctional Facility	Coxsackie	State prison	New York	173	0
91355867	Dutchess	Downstate Correctional Facility	Fishkill	State prison	New York	52	0
C14B2B48	Ulster	Eastern Correctional Facility	Napanoch	State prison	New York	73	0
32C10FFB	New York	Edgecombe Residential Treatment Facility	New York	State prison	New York	2	0
C6AC177D	Chemung	Elmira Correctional Facility	Elmira	State prison	New York	626	0
8E756FB7	Dutchess	Fishkill Correctional Facility	Fishkill	State prison	New York	156	0
054120AD	Seneca	Five Points Correctional Facility	Romulus	State prison	New York	26	0
6CA0D521	Franklin	Franklin Correctional Facility	Malone	State prison	New York	333	0
15CE766A	St. Lawrence	Gouverneur Correctional Facility	Gouverneur	State prison	New York	205	0
B9B98E23	Erie	Gowanda Correctional Facility	Collins	State prison	New York	132	0
591B9BCA	Washington	Great Meadow Correctional Facility	Comstock	State prison	New York	163	0
D7D62E40	Dutchess	Green Haven Correctional Facility	Beekman	State prison	New York	167	0
2115603B	Greene	Greene Correctional Facility	Coxsackie	State prison	New York	224	0
88C2ACB6	Livingston	Groveland Correctional Facility	Groveland	State prison	New York	187	0
CA2FB18B	Fulton	Hale Creek Correctional Facility	Johnstown	State prison	New York	65	0
D8EBC283	Columbia	Hudson Correctional Facility	Hudson	State prison	New York	32	0
431FE39A	Chautauqua	Lakeview Shock Incarceration Correctional Facility	Brocton	State prison	New York	65	0
38FD3ECC	Oneida	Marcy Correctional Facility	Marcy	State prison	New York	21	0
F17D3A6A	Oneida	Mid-State Correctional Facility	Marcy	State prison	New York	148	0
A8A73C3F	Oneida	Mohawk Correctional Facility	Rome	State prison	New York	171	0
DC5ECD4E	Essex	Moriah Shock Incarceration Correctional Facility	Mineville	State prison	New York	15	0
F3C97739	St. Lawrence	Ogdensburg Correctional Facility	Ogdensburg	State prison	New York	92	0
97EB1AAE	Orleans	Orleans Correctional Facility	Albion	State prison	New York	68	0
7B833158	Orange	Otisville Correctional Facility	Mount Hope	State prison	New York	70	0
373ED73C	Queens	Queensboro Correctional Facility	Long Island City	State prison	New York	23	0
79995806	St. Lawrence	Riverview Correctional Facility	Ogdensburg	State prison	New York	160	0
0255D843	Monroe	Rochester Correctional Facility	Rochester	State prison	New York	0	0
B58BE217	Ulster	Shawangunk Correctional Facility	Shawangunk	State prison	New York	103	0
5CFA24FA	Westchester	Sing Sing Correctional Facility	Ossining	State prison	New York	66	0
0ACE9882	Chemung	Southport Correctional Facility	Southport	State prison	New York	83	0
0F6A8267	Sullivan	Sullivan Correctional Facility	Fallsburg	State prison	New York	99	0
2628BFF3	Westchester	Taconic Correctional Facility	Bedford Hills	State prison	New York	6	0
6AAB1538	Ulster	Ulster Correctional Facility	Napanoch	State prison	New York	60	0
788253CE	Franklin	Upstate Correctional Facility	Malone	State prison	New York	34	0
D687E542	Ulster	Wallkill Correctional Facility	Wallkill	State prison	New York	75	0
6E9CC96B	Washington	Washington Correctional Facility	Comstock	State prison	New York	69	0
8F7A5DAC	Jefferson	Watertown Correctional Facility	Watertown	State prison	New York	73	0
A2A08DC6	Erie	Wende Correctional Facility	Alden	State prison	New York	190	0
64201496	Seneca	Willard Drug Treatment Campus	Willard	State rehabilitation center	New York	35	0
8547B4B1	Sullivan	Woodbourne Correctional Facility	Woodbourne	State prison	New York	244	0
5E027B4A	Wyoming	Wyoming Correctional Facility	Attica	State prison	New York	297	0
2C0185E4	Stanly	Albemarle Correctional Institution	New London	State prison	North Carolina	446	0
85543E1A	Alexander	Alexander Correctional Institution	Taylorsville	State prison	North Carolina	327	0
BEF1E96E	Anson	Anson Correctional Institution	Polkton	State prison	North Carolina	149	0
84426FC5	Avery	Avery Mitchell Correctional Institution	Ingalls	State prison	North Carolina	329	0
D86AD7B4	Bertie	Bertie Correctional Institution	Windsor	State prison	North Carolina	101	0
51C4D2CA	Anson	Brown Creek Correctional Institution	Polkton	State prison	North Carolina	0	0
E6AD4CBB	Burke	Burke Confinement in Response to Violation Center	Morganton	State prison	North Carolina	0	0
4EB9D0EB	Caldwell	Caldwell Correctional Center	Lenoir	State prison	North Carolina	48	0
DBA26EA4	Halifax	Caledonia Correctional Institution	Halifax	State prison	North Carolina	226	0
47CFFC3E	Carteret	Carteret Correctional Center	Newport	State prison	North Carolina	79	0
B414D997	Caswell	Caswell Correctional Center	Blanch	State prison	North Carolina	113	0
94882599	Catawba	Catawba Correctional Center	Newton	State prison	North Carolina	43	0
5BFD488F	Wake	Central Prison	Raleigh	State prison	North Carolina	158	0
5CB86314	Columbus	Columbus Correctional Institution	Whiteville	State prison	North Carolina	170	0
5EF50D04	Buncombe	Craggy Correctional Center	Asheville	State prison	North Carolina	187	0
CBA99639	Craven	Craven Correctional Institution	Vanceboro	State prison	North Carolina	555	0
8E140880	Caswell	Dan River Prison Work Farm	Blanch	State work camp	North Carolina	118	0
576E46BA	Wayne	Dart Cherry Residential Treatment Facility	Goldsboro	State rehabilitation center	North Carolina	0	0
26A71FE1	Davidson	Davidson Correctional Center	Lexington	State prison	North Carolina	17	0
0DAAE95D	Greene	Eastern Correctional Institution	Maury	State prison	North Carolina	99	0
1A8757DC	Burke	Foothills Correctional Institution	Morganton	State prison	North Carolina	103	0
29F4E193	Forsyth	Forsyth Correctional Center	Winston-Salem	State prison	North Carolina	128	0
62A91188	Franklin	Franklin Correctional Center	Bunn	State prison	North Carolina	154	0
C66ED47B	Gaston	Gaston Correctional Center	Dallas	State prison	North Carolina	76	0
F1FE1A27	Greene	Greene Correctional Institution	Maury	State prison	North Carolina	120	0
C29E21F7	Harnett	Harnett Correctional Institution	Lillington	State prison	North Carolina	53	0
300513DF	Hoke	Hoke Correctional Institution	Raeford	State prison	North Carolina	0	0
193C821A	Hyde	Hyde Correctional Institution	Swanquarter	State prison	North Carolina	203	0
9FDE977D	Johnston	Johnston Correctional Institution	Smithfield	State prison	North Carolina	131	0
4EC76F2E	Lincoln	Lincoln Correctional Center	Lincolnton	State prison	North Carolina	14	0
FB96AEA8	Robeson	Lumberton Correctional Institution	Lumberton	State prison	North Carolina	281	0
28165D96	McDowell	Marion Correctional Institution	Marion	State prison	North Carolina	116	0
FE9FEE18	Greene	Maury Correctional Institution	Maury	State prison	North Carolina	147	0
66CA8517	Richmond	Morrison Correctional Institution	Hoffman	State prison	North Carolina	108	0
E47C3F56	Avery	Mountain View Correctional Institution	Spruce Pine	State prison	North Carolina	183	0
0D2A4D28	Nash	Nash Correctional Institution	Nashville	State prison	North Carolina	539	0
C269555C	Wake	North Carolina Correctional Institution for Women Medical Facility	Raleigh	State facility	North Carolina	565	0
3BAE3BA2	Wayne	Neuse Correctional Institution	Goldsboro	State prison	North Carolina	495	13
9EF840FE	New Hanover	New Hanover Correctional Center	Wilmington	State prison	North Carolina	146	0
66D52B41	Davidson	North Piedmont Confinement in Response to Violation Center	Lexington	State prison	North Carolina	2	0
E3D56FD1	Orange	Orange Correctional Center	Hillsborough	State prison	North Carolina	72	0
0A62960D	Pamlico	Pamlico Correctional Institution	Bayboro	State prison	North Carolina	105	2
6C98CDE5	Pasquotank	Pasquotank Correctional Institution	Elizabeth City	State prison	North Carolina	80	0
7704CD14	Pender	Pender Correctional Institution	Burgaw	State prison	North Carolina	325	0
D5BB38F0	Rowan	Piedmont Correctional Institution	Salisbury	State prison	North Carolina	370	0
1675FDF4	Granville	Polk Correctional Institution	Butner	State prison	North Carolina	208	0
5961F3A9	Randolph	Randolph Correctional Center	Asheboro	State prison	North Carolina	0	0
4A053CE3	Wake	Raleigh Correctional Center for Women	Raleigh	State prison	North Carolina	0	0
4B86DEA6	Robeson	Robeson prison	Lumberton	State prison	North Carolina	84	0
F0E05535	Rutherford	Rutherford Correctional Center	Spindale	State prison	North Carolina	112	0
23D1496D	Sampson	Sampson Correctional Institution	Clinton	State prison	North Carolina	198	0
E99F4D04	Lee	Sanford Correctional Center	Sanford	State prison	North Carolina	21	0
DE8B6AF0	Scotland	Scotland Correctional Institution	Laurinburg	State prison	North Carolina	463	0
E52DD92C	Montgomery	Southern Correctional Institution	Troy	State prison	North Carolina	54	0
A04DD770	Buncombe	Swannanoa Correctional Center for Women	Black Mountain	State prison	North Carolina	53	0
AA3E2AF5	Columbus	Tabor Correctional Institution	Tabor City	State prison	North Carolina	566	0
97BB88DA	Tyrrell	Tyrrell Prison Work Farm	Columbia	State work camp	North Carolina	26	0
EB33D51F	Wake	Wake Correctional Center	Raleigh	State prison	North Carolina	144	0
DB3E4BBD	Warren	Warren Correctional Institution	Manson	State prison	North Carolina	379	0
742CB7CD	Wilkes	Wilkes Correctional Center	North Wilkesboro	State prison	North Carolina	14	0
4F5CA3F4	Alexander	Alexander Juvenile Detention Center	Taylorsville	State juvenile detention	North Carolina	2	0
56B924A4	Cabarrus	Cabarrus Juvenile Detention Center	Concord	State juvenile detention	North Carolina	4	0
AA3F821C	Cumberland	Cumberland Juvenile Detention Center	Fayetteville	State juvenile detention	North Carolina	0	0
E433B540	Granville	Dillon Juvenile Detention Center	Butner	State juvenile detention	North Carolina	1	0
2B8F5622	Lenoir	Dobbs/Lenior Juvenile Detention Center	Kinston	State juvenile detention	North Carolina	2	0
81BC850C	New Hanover	New Hanover Juvenile Detention Center	Castle Hayne	State juvenile detention	North Carolina	1	0
32355A94	Pitt	Pitt Juvenile Detention Center	Greenville	State juvenile detention	North Carolina	4	0
60E2BF0D	Wake	Wake Juvenile Detention Center	Raleigh	State juvenile detention	North Carolina	5	0
250726AE	Chatham	Chatham Youth Development Center	Siler City	State juvenile detention	North Carolina	0	0
D942BA42	Edgecombe	Edgecombe Youth Development Center	Rocky Mount	State juvenile detention	North Carolina	6	0
252FDF11	Lenoir	Lenoir Youth Development Center	Kinston	State juvenile detention	North Carolina	0	0
E10E1443	Cabarrus	Cabarrus Youth Development Center	Concord	State juvenile detention	North Carolina	17	0
9F3C5D74	Montgomery	Eckerd Connects Boys Residential Academy at Candor	Candor	State juvenile detention	North Carolina	13	5
8AA4625A	Wilkes	Eckerd Connects Boys Residential Academy at Boomer	Boomer	State juvenile detention	North Carolina	8	7
FB61F31E	Wilkes	Eckerd Connects Girls Residential Academy at Kerr Lake	Manson	State juvenile detention	North Carolina	0	1
07D67EB2	Burleigh	North Dakota State Penitentiary	Bismarck	State prison	North Dakota	195	112
205EBA6B	Stutsman	James River Correctional Center	Jamestown	State prison	North Dakota	346	97
674B33C1	Burleigh	Missouri River Correctional Center	Bismarck	State prison	North Dakota	82	19
351C869A	Hettinger	Dakota Women's Correctional and Rehabilitation Center	New England	State prison	North Dakota	10	15
7424478F	Morton	Youth Correctional Center	Mandan	State juvenile detention	North Dakota	6	43
9F8CFEDA	Cass	Division of Juvenile Services	Mandan	State juvenile detention	North Dakota	0	10
25764603	Allen	Allen Oakwood Correctional Institution	Lima	State prison	Ohio	244	189
BFD3D7FE	Belmont	Belmont Correctional Institution	Saint Clairsville	State prison	Ohio	134	194
ED5BD6E2	Ross	Chillicothe Correctional Institution	Chillicothe	State prison	Ohio	295	166
70DF3C28	Pickaway	Correctional Reception Center	Orient	State prison	Ohio	1246	191
D28A56CD	Montgomery	Dayton Correctional Institution	Dayton	State prison	Ohio	86	121
9FDE7843	Franklin	Franklin Medical Center prison hospital	Columbus	State facility	Ohio	275	259
2A419D61	Lorain	Grafton Correctional Institution	Grafton	State prison	Ohio	136	186
70CDE6D3	Ashtabula	Lake Erie Correctional Institution	Conneaut	State prison	Ohio	59	93
FC5660BA	Warren	Lebanon Correctional Institution	Lebanon	State prison	Ohio	95	201
EA26A9FF	Madison	London Correctional Institution	London	State prison	Ohio	104	128
B319EDD8	Lorain	Lorain Correctional Institution	Lorain	State prison	Ohio	128	157
9B960DCA	Madison	Madison Correctional Institution	London	State prison	Ohio	331	227
05D92744	Richland	Mansfield Correctional Institution	Mansfield	State prison	Ohio	156	257
ED89A25B	Marion	Marion Correctional Institution	Marion	State prison	Ohio	2262	228
2E9A6201	Marion	North Central Correctional Complex	Marion	State prison	Ohio	162	105
E9D7FF61	Noble	Noble Correctional Institution	Caldwell	State prison	Ohio	176	138
124DE173	Mahoning	Northeast Ohio Correctional Center	Youngstown	State prison	Ohio	86	197
09B27A96	Cuyahoga	Northeast Reintegration Center prison	Cleveland	State prison	Ohio	24	32
273ABF02	Union	Ohio Reformatory for Women	Marysville	State prison	Ohio	323	155
A96E8B4D	Mahoning	Ohio State Penitentiary	Youngstown	State prison	Ohio	45	109
5433B430	Pickaway	Pickaway Correctional Institution	Scioto Township	State prison	Ohio	1680	175
4EC1748A	Ross	Ross Correctional Institution	Chillicothe	State prison	Ohio	43	146
53F46C00	Richland	Richland Correctional Institution	Mansfield	State prison	Ohio	118	147
FB86D091	Fairfield	Southeastern Correctional Institution	Hocking Township	State prison	Ohio	124	128
16D9FCB2	Scioto	Southern Ohio Correctional Facility	Lucasville	State prison	Ohio	103	334
CEA23199	Trumbull	Trumbull Correctional Institution	Leavittsburg	State prison	Ohio	98	142
ECBE5FDA	Lucas	Toledo Correctional Institution	Toledo	State prison	Ohio	124	206
10C60D6A	Warren	Warren Correctional Institution	Lebanon	State prison	Ohio	22	172
603B6B50	Woods	Johnson Correctional Center	Alvin	State prison	Oklahoma	257	9
E181CDCB	Payne	Cimarron Correctional Facility	Cushing	State prison	Oklahoma	54	0
BC2C1781	Oklahoma	Clara Waters Community Corrections Center	Oklahoma City	State prison	Oklahoma	160	2
3C63F845	Hughes	Davis Correctional Facility	Holdenville	State prison	Oklahoma	92	0
3831EE08	Osage	Dick Conner Correctional Center	Hominy	State prison	Oklahoma	450	24
5826E907	Muskogee	Dr. Eddie Warrior Correctional Center	Taft	State prison	Oklahoma	782	22
A03F674B	Garfield	Enid Community Corrections Center	Enid	State prison	Oklahoma	54	0
B6E5B9CE	Atoka	Howard McLeod Correctional Center	Atoka	State prison	Oklahoma	235	4
794D6A70	Pittsburg	Jackie Brannon Correctional Center	McAlester	State prison	Oklahoma	304	10
8A68214F	Alfalfa	James Crabtree Correctional Center	Helena	State prison	Oklahoma	599	5
92C565C2	Muskogee	Jess Dunn Correctional Center	Taft	State prison	Oklahoma	820	5
8122D356	Le Flore	Jim E. Hamilton Correctional Center	Hodgen	State prison	Oklahoma	42	17
8ED748A8	Okfuskee	John H. Lilley Correctional Center	Boley	State prison	Oklahoma	526	4
C8AEEEE7	Cleveland	Joseph Harp Correctional Center	Lexington	State prison	Oklahoma	303	25
77520D5E	Oklahoma	Kate Barnard Correctional Center	Oklahoma City	State prison	Oklahoma	2	6
83905458	Comanche	Lawton Correctional Facility	Lawton	State prison	Oklahoma	111	0
AACCCDEE	Comanche	Lawton Community Corrections Center	Lawton	State prison	Oklahoma	27	0
554BF211	Cleveland	Lexington Assessment and Reception Center prison	Lexington	State prison	Oklahoma	175	41
885990AE	Pottawatomie	Mabel Bassett Correctional Center	McLoud	State prison	Oklahoma	297	35
AE4C61FB	Atoka	Mack Alford Correctional Center	Stringtown	State prison	Oklahoma	122	13
CDDA46AF	Craig	Northeast Oklahoma Correctional Center	Vinita	State prison	Oklahoma	307	43
6A246294	Beckham	North Fork Correctional Center	Sayre	State prison	Oklahoma	395	29
E1A3ACBC	Beckham	North Fork Correctional Center - J Unit	Sayre	State prison	Oklahoma	25	0
33A40CCC	Pittsburg	Oklahoma State Penitentiary	McAlester	State prison	Oklahoma	37	4
72A101B4	Greer	Oklahoma State Reformatory	Granite	State prison	Oklahoma	24	22
242ECCBA	Oklahoma	Oklahoma City Community Corrections Center	Oklahoma City	State prison	Oklahoma	14	4
65E6CB8D	Canadian	Union City Community Corrections Center	Union City	State prison	Oklahoma	52	0
B40D78F9	Woodward	William S. Key Correctional Center	Fort Supply	State prison	Oklahoma	915	20
CCD21989	Oklahoma	Bridgeway halfway house	Ponca City	State halfway house	Oklahoma	14	0
61591FAF	Oklahoma	Carver Transitional Center	Oklahoma City	State halfway house	Oklahoma	17	0
2EB4F867	Oklahoma	OKC Transitional Center	Oklahoma City	State halfway house	Oklahoma	0	0
57D051F7	Tulsa	Tulsa Transitional Center	Tulsa	State halfway house	Oklahoma	3	0
53E81090	Washington	Coffee Creek Correctional Facility	Wilsonville	State prison	Oregon	325	54
D6B20DF4	Multnomah	Columbia River Correctional Institution	Portland	State prison	Oregon	258	25
B1249EAE	Jefferson	Deer Ridge Correctional Institution	Madras	State prison	Oregon	283	45
5FD6930B	Umatilla	Eastern Oregon Correctional Institution	Pendleton	State prison	Oregon	459	76
C08939DC	Marion	Mill Creek Correctional Facility	Salem	State prison	Oregon	39	15
C5EFB9E4	Marion	Oregon State Correctional Institution	Salem	State prison	Oregon	250	42
E4DF1FDF	Marion	Oregon State Penitentiary	Salem	State prison	Oregon	386	123
AC5F9E0D	Baker	Powder River Correctional Facility	Baker City	State prison	Oregon	69	20
BADCF526	Coos	Shutter Creek Correctional Institution	North Bend	State prison	Oregon	27	7
C2ADB50C	Marion	Santiam Correctional Institution	Salem	State prison	Oregon	119	34
067F341D	Tillamook	South Fork Forest Camp	Tillamook	State work camp	Oregon	4	0
158FA02A	Malheur	Snake River Correctional Institution	Ontario	State prison	Oregon	488	230
375DB7FE	Umatilla	Two Rivers Correctional Institution	Umatilla	State prison	Oregon	775	127
E8FC4EFE	Lake	Warner Creek Correctional Facility​	Lakeview	State prison	Oregon	94	13
2F99AEC4	Marion	Oregon Youth Authority	Salem	State juvenile detention	Oregon	41	46
CA998142	Saline	Saline County jail	Benton	Jail	Arkansas	34	3
37154997	Erie	State Correctional Institution at Albion	Albion	State prison	Pennsylvania	308	173
E6F1E8F2	Centre	State Correctional Institution at Benner Township	Bellafonte	State prison	Pennsylvania	217	169
C01B3266	Crawford	State Correctional Institution at Cambridge Springs	Cambridge Springs	State prison	Pennsylvania	1187	84
2886A9F6	Cumberland	State Correctional Institution at Camp Hill	Camp Hill	State prison	Pennsylvania	360	244
7D5FD49E	Delaware	State Correctional Institution at Chester	Chester	State prison	Pennsylvania	216	171
2E558AA9	Northumberland	State Correctional Institution at Coal Township	Coal Township	State prison	Pennsylvania	401	138
C579558C	Luzerne	State Correctional Institution at Dallas	Dallas	State prison	Pennsylvania	1283	255
A8910670	Fayette	State Correctional Institution at Fayette	LaBelle	State prison	Pennsylvania	51	154
D81F5A60	Forest	State Correctional Institution at Forest	Marienville	State prison	Pennsylvania	940	136
D01EB4F7	Schuylkill	State Correctional Institution at Frackville	Frackville	State prison	Pennsylvania	91	156
4554374C	Greene	State Correctional Institution at Greene	Waynesburg	State prison	Pennsylvania	153	198
09D26137	Clearfield	State Correctional Institution at Houtzdale	Houtzdale	State prison	Pennsylvania	226	147
73097B09	Huntingdon	State Correctional Institution at Huntingdon	Huntington	State prison	Pennsylvania	237	169
D3E6E06E	Somerset	State Correctional Institution at Laurel Highlands	Somerset	State prison	Pennsylvania	533	178
B7906DF2	Schuylkill	State Correctional Institution at Mahanoy	Mahanoy	State prison	Pennsylvania	430	202
2A895BA5	Mercer	State Correctional Institution at Mercer	Mercer	State prison	Pennsylvania	150	88
3B1C531E	Lycoming	State Correctional Institution at Muncy	Muncy	State prison	Pennsylvania	433	162
3C6300C0	Montgomery	State Correctional Institution at Phoenix	Collegeville	State prison	Pennsylvania	236	276
50A5862E	Indiana	State Correctional Institution at Pine Grove	Pine Grove	State prison	Pennsylvania	158	94
5.66E+67	Clearfield	Quehanna Motivational Boot Camp	Karthaus	State prison	Pennsylvania	209	69
C3D9C2EC	Luzerne	State Correctional Institution at Retreat	Hunlock Creek	State prison	Pennsylvania	13	4
CD746F32	Centre	State Correctional Institution at Rockview	Benner Township,	State prison	Pennsylvania	144	208
D7B730FC	Huntingdon	State Correctional Institution at Smithfield	Huntingdon	State prison	Pennsylvania	560	204
826A5966	Somerset	State Correctional Institution at Somerset	Somerset	State prison	Pennsylvania	843	188
553503D9	Wayne	State Correctional Institution at Waymart	Waymart	State prison	Pennsylvania	812	223
7A7CA460	Providence	Anthony P. Travisono Intake Service Center prison	Cranston	State prison	Rhode Island	437	99
1C35C2DB	Providence	High Security Center prison	Cranston	State prison	Rhode Island	10	22
4138490D	Providence	Maximum Security prison	Cranston	State prison	Rhode Island	333	62
882C9078	Providence	John J. Moran prison	Cranston	State prison	Rhode Island	355	84
147DC384	Providence	Minimum Security prison	Cranston	State prison	Rhode Island	13	23
96A00149	Providence	Gloria McDonald prison	Cranston	State prison	Rhode Island	46	32
DD4A59B0	Allendale	Allendale Correctional Institute	Allendale	State prison	South Carolina	29	33
76D1F5BF	Richland	Broad River Correctional Institute	Columbia	State prison	South Carolina	416	100
D9404249	Richland	Camille Graham Correctional Institute	Columbia	State prison	South Carolina	102	46
9BFB5C31	Marlboro	Evans Correctional Institution	Bennettsville	State prison	South Carolina	79	41
25844DD1	Richland	Goodman Correctional Institution	Columbia	State prison	South Carolina	83	15
C0839252	Lancaster	Kershaw Correctional Institution	Kershaw	State prison	South Carolina	115	37
76FEDAAC	Richland	Kirkland Correctional Institution	Columbia	State prison	South Carolina	550	127
AE17C639	Greenwood	Leath Correctional Institution	Greenwood	State prison	South Carolina	21	14
6B372F26	Lee	Lee Correctional Institution	Bishopville	State prison	South Carolina	82	50
1F901B01	Dorchester	Lieber Correctional Institution	Ridgeville	State prison	South Carolina	143	36
EFA3DBA6	Spartanburg	Livesay Correctional Institution	Spartanburg	State prison	South Carolina	222	27
7C4715D6	Berkeley	MacDougall Correctional Institution	Ridgeville	State prison	South Carolina	360	37
4635BA71	Richland	Manning Correctional Institution	Columbia	State prison	South Carolina	168	36
52A0065C	McCormick	McCormick Correctional Institute	McCormick	State prison	South Carolina	46	35
0222223F	Florence	Palmer Correctional Facility	Florence	State prison	South Carolina	0	7
94652565	Greenville	Perry Correctional Facility	Pelzer	State prison	South Carolina	173	81
2B261C6C	Jasper	Ridgeland Correctional Facility	Ridgeland	State prison	South Carolina	70	28
4CFD596E	Edgefield	Trenton Correctional Facility	Trenton	State prison	South Carolina	83	46
7EC5B5AB	Clarendon	Turbeville Correctional Facility	Turbeville	State prison	South Carolina	30	77
F504D781	Spartanburg	Tyger River Correctional Facility	Enoree	State prison	South Carolina	482	58
53A7BA75	Sumter	Wateree River Correctional Facility	Rembert	State prison	South Carolina	0	22
57D31290	Minnehaha	South Dakota State Penitentiary	Sioux Falls	State prison	South Dakota	540	75
545F75F3	Minnehaha	Jameson Annex	Sioux Falls	State prison	South Dakota	210	25
992BAD43	Minnehaha	Sioux Falls Community Work Center prison	Sioux Falls	State prison	South Dakota	123	0
51FB467D	Bon Homme	Mike Durfee State Prison	Springfield	State prison	South Dakota	816	49
A2FF64CC	Pennington	Rapid City Community Work Center	Rapid City	State prison	South Dakota	232	8
1CC819BD	Yankton	Yankton Community Work Center	Yankton	State prison	South Dakota	187	9
A7FD25CD	Hughes	South Dakota Women's Prison	Pierre	State prison	South Dakota	79	16
40272756	Hughes	South Dakota Women's Prison Unit E	Pierre	State prison	South Dakota	54	0
7702C105	Hughes	Pierre Community Work Release Center	Pierre	State prison	South Dakota	113	8
DE547D60	Bledsoe	Bledsoe County Correctional Complex	Pikeville	State prison	Tennessee	852	181
C87FF29D	Morgan	Morgan County Correctional Complex	Wartburg	State prison	Tennessee	111	159
BFD22F1C	Johnson	Northeast Correctional Complex	Mountain City	State prison	Tennessee	376	174
20D5B179	Davidson	Lois M. DeBerry Special Needs Facility prison	Nashville	State prison	Tennessee	173	77
1115417F	Davidson	Riverbend Maximum Security Institution	Nashville	State prison	Tennessee	111	58
34E6F8D9	Davidson	Debra K. Johnson Rehabilitiation Center prison	Nashville	State prison	Tennessee	322	58
AD4EA084	Wayne	Turney Center Industrial prison complex	Clifton	State prison	Tennessee	128	95
3FAF8330	Wayne	Turney Center Industrial prison Complex-Annex	Clifton	State prison	Tennessee	9	0
37FBB91E	Shelby	Mark Luttrell Transition Center prison	Memphis	State prison	Tennessee	62	36
6C0824A5	Lake	Northwest Correctional Complex	Tiptonville	State prison	Tennessee	999	150
7D8F8660	Lauderdale	West Tennessee State Penitentiary	Henning	State prison	Tennessee	276	194
5407C189	Lauderdale	Women's Therapeutic Residential Center prison	Henning	State prison	Tennessee	140	0
873E28BD	Hardeman	Hardeman County Correctional Facility	Whiteville	State prison	Tennessee	315	0
CAEB0B79	Wayne	South Central Correctional Facility	Clifton	State prison	Tennessee	1253	0
BC0259CA	Trousdale	Trousdale Turner Correctional Center	Hartsville	State prison	Tennessee	1413	0
4E5C80A0	Hardeman	Whiteville Correctional Facility	Whiteville	State prison	Tennessee	97	0
229553AD	Wichita	James V. Allred Unit prison	Iowa Park	State prison	Texas	701	238
EB995E29	Gray	Baten Sanction Facility prison	Pampa	State prison	Texas	5	14
0286F90B	Liberty	Oliver J. Bell Unit prison	Cleveland	State prison	Texas	89	18
63877760	Anderson	George Beto Unit prison	Tennessee Colony	State prison	Texas	497	174
772D5BFB	Freestone	William R. Boyd Unit prison	Teague	State prison	Texas	206	48
619B2C3C	Rusk	James Bradshaw State Jail	Henderson	State prison	Texas	177	1
12FFED3B	Wise	Bridgeport Correctional Center	Bridgeport	State prison	Texas	89	17
9BABE9F6	Frio	Dolph Briscoe Unit prison	Dilley	State prison	Texas	90	71
1663EFAD	Walker	James Byrd Unit prison	Huntsville	State prison	Texas	237	51
4FC8F506	Galveston	Carole S. Young prison medical facility	Dickinson	State facility	Texas	113	68
6F35013C	Brazoria	Clemens Unit prison	Brazoria	State prison	Texas	97	55
68076464	Potter	William Clements Unit prison	Amarillo	State prison	Texas	620	276
3FADC8E0	Anderson	Coffield Unit prison	Tennessee Colony	State prison	Texas	1305	149
5E5D8C59	Fannin	Buster Cole State Jail	Bonham	State prison	Texas	119	50
E9022842	Karnes	Connally Unit prison	Kenedy	State prison	Texas	340	91
0B2F4593	La Salle	Cotulla prison transfer facility	Cotulla	State facility	Texas	268	58
F93D7A3A	Coryell	Christina Melton Crain Unit prison	Gatesville	State prison	Texas	371	152
CB71CAAE	Hartley	Dalhart Unit prison	Dalhart	State prison	Texas	77	51
2A0CB584	Scurry	Price Daniel Unit prison	Snyder	State prison	Texas	257	54
C685192A	Brazoria	Darrington Unit prison	Rosharon	State prison	Texas	342	91
30458EB8	Angelina	Diboll Correctional Center	Diboll	State prison	Texas	47	23
AB4C1132	Bexar	Fabian Dale Dominguez State Jail	San Antonio	State prison	Texas	590	87
1F78E038	Angelina	Rufus H. Duncan Geriatric Facility prison	Diboll	State prison	Texas	279	66
8EEBC208	Rusk	East Texas Multi-Use Facility prison	Henderson	State prison	Texas	292	74
DAEFF856	Houston	Eastham Unit prison	Lovelady	State prison	Texas	369	98
F12D9B8E	Walker	Ellis Unit prison	Huntsville	State prison	Texas	334	105
8B599B5D	Walker	Estelle Unit prison	Huntsville	State prison	Texas	889	205
82077554	Johnson	Estes Unit prison	Venus	State prison	Texas	371	40
7F64CDDC	Madison	Jim Ferguson Unit prison	Midway	State prison	Texas	562	150
8487A2D7	Hale	Formby State Jail	Plainview	State prison	Texas	209	103
BAD4BD20	Pecos	Fort Stockton Transfer Facility prison	Fort Stockton	State facility	Texas	113	26
749284A3	Bee	Garza East Transfer Facility prison	Beeville	State facility	Texas	119	30
D47A599A	Bee	Garza West Transfer Facility prison	Beeville	State facility	Texas	153	129
79C24FA4	Jefferson	Larry Gist State Jail	Beaumont	State prison	Texas	407	77
85357431	Duval	Ernestine Glossbrenner Unit prison	San Diego	State prison	Texas	51	30
B990F856	Jasper	Glen Ray Goodman Transfer Facility prison	Jasper	State facility	Texas	222	64
69E877E1	Walker	Thomas Goree Unit prison	Huntsville	State prison	Texas	290	83
80FF7CAC	Anderson	Joe F. Gurney Transfer Facility prison	Palestine	State facility	Texas	257	74
45670E2C	Burnet	Ellen Halbert Unit prison	Burnet	State prison	Texas	120	22
B16CFA09	Brazos	J. W. Hamilton Unit prison	Bryan	State prison	Texas	240	47
6.72E+13	Brown	Thomas R. Havins Unit prison	Brownwood	State prison	Texas	286	37
C083498A	Liberty	Dempsie Henley State Jail	Dayton	State prison	Texas	12	30
74920F3F	Liberty	L.V. Hightower Unit prison	Denley	State prison	Texas	282	61
C7461010	Coryell	Hilltop Unit prison	Gatesville	State prison	Texas	67	63
78F11FB2	Falls	William P. Hobby Unit prison	Marlin	State prison	Texas	349	101
9BAC7D23	Cherokee	Jerry H. Hodge Unit prison	Rusk	State prison	Texas	185	2
E9D596BC	Walker	Reverend C.A. Holliday Transfer Facility prison	Huntsville	State facility	Texas	302	88
41FD2656	Galveston	Galveston prison hospital	Galveston	State facility	Texas	124	76
F827EEC6	Coryell	Alfred D. Hughes Unit prison	Gatesville	State prison	Texas	910	237
5AA6B7EE	Walker	Huntsville Unit prison	Huntsville	State prison	Texas	548	66
88571835	Dallas	Hutchins State Jail	Dallas	State prison	Texas	94	91
B5C76A4C	Fort Bend	Beauford H. Jester I Unit prison	Richmond	State prison	Texas	34	9
2B0DC963	Fort Bend	Beauford H. Jester III Unit prison	Richmond	State prison	Texas	514	71
4240765F	Fort Bend	Beauford H. Jester IV Unit prison	Richmond	State prison	Texas	44	61
52225F8F	Wood	Clyde M. Johnston Unit prison	Winnsboro	State prison	Texas	61	29
46D4DF75	Harris	Joe Kegans State Jail	Houston	State prison	Texas	69	27
6E8EE43F	Hays	Kyle Correctional Center	Kyle	State prison	Texas	14	27
6B93E970	Jefferson	Richard P. LeBlanc Unit prison	Beaumont	State prison	Texas	239	38
00C0441C	Tyler	Gib Lewis Unit prison	Woodville	State prison	Texas	194	87
7DBABA41	Jack	John R. Lindsey State Jail	Jacksboro	State prison	Texas	75	37
AE497D4F	Caldwell	Lockhart Correctional Facility	Lockhart	State prison	Texas	116	27
9847874A	Hidalgo	Reynoldo V. Lopez State Jail	Edinburg	State prison	Texas	572	89
240F8787	Grimes	O.L. Luther Unit prison	Navasota	State prison	Texas	115	68
F8AACB11	Harris	Pam Lychner State Jail	Humble	State prison	Texas	366	74
B00782C3	Pecos	James Lynaugh Unit	Fort Stockton	State prison	Texas	105	55
1FC55916	Falls	Marlin Transfer Facility	Marlin	State facility	Texas	113	51
D5A8B917	Bee	William G. McConnell Unit prison	Beeville	State prison	Texas	492	186
14344937	Anderson	Michael Unit prison	Tennessee Colony	State prison	Texas	577	139
0DC93AAC	Jones	John Middleton Transfer Facility prison	Abilene	State facility	Texas	405	90
D567112C	Lubbock	Montford Unit prison	Lubbock	State prison	Texas	281	280
672B8896	Rusk	Billy Moore Correctional Center	Overton	State prison	Texas	36	20
99ED5FA1	Fannin	Choice Moore Transfer Facility	Bonham	State facility	Texas	245	69
2677046A	Coryell	Mountain View Unit prison	Gatesville	State prison	Texas	87	80
342F8B95	Coryell	Dr. Lane Murray Unit prison	Gatesville	State prison	Texas	162	82
49BC151B	Potter	Neal Unit prison	Amarillo	State prison	Texas	1021	153
F89DAD8C	Medina	Joe Ney State Jail	Hondo	State prison	Texas	204	21
404039D6	Grimes	Wallace Pack Unit prison	Navasota	State prison	Texas	458	107
1C8EB5A1	Liberty	Lucile Plane State Jail	Dayton	State prison	Texas	323	65
FA5D78F7	Polk	Polunsky Unit prison	Livingston	State prison	Texas	748	132
AECA1316	Anderson	Louis C. Powledge Unit	Palestine	State prison	Texas	395	70
2203E381	Brazoria	Ramsey Unit prison	Rosharon	State prison	Texas	352	95
C74BC226	Childress	Roach Unit prison	Childress	State prison	Texas	727	82
3A23225B	Jones	French Robertson Unit prison	Abilene	State prison	Texas	1216	249
347BD0E3	Terry	Jim Rudd Transfer Facility prison	Brownfield	State facility	Texas	117	74
2D2D398D	San Saba	San Saba Transfer Facility	San Saba	State facility	Texas	139	27
EE0FB2B8	El Paso	Rogelio Sanchez State Jail	El Paso	State prison	Texas	266	101
8843007F	Stephens	Walker Sayle Unit prison	Breckenridge	State prison	Texas	151	46
B25CF5B3	Brazoria	Scott Unit prison	Angleton	State prison	Texas	127	28
04ADF772	Hidalgo	Segovia Unit prison	Edinburg	State prison	Texas	349	80
FF4A2B79	Cherokee	Skyview Unit prison	Rusk	State prison	Texas	106	148
CB527ACA	Dawson	Smith Unit prison	Lamesa	State prison	Texas	535	139
BD841D4D	Brazoria	Southern Regional Transportation Unit	Rosharon	State facility	Texas	0	1
F9007CAC	DeWitt	Stevenson Unit prison	Cuero	State prison	Texas	85	50
706A9B98	Jefferson	Stiles Unit prison	Beaumont	State prison	Texas	729	169
B6383E96	Brazoria	Stringfellow Unit prison	Rosharon	State prison	Texas	214	100
20897FFA	Bowie	Telford Unit prison	New Boston	State prison	Texas	239	127
C45BC10F	Brazoria	Terrell Unit prison	Rosharon	State prison	Texas	471	84
E6A7B303	Medina	Torres Unit prison	Hondo	State prison	Texas	263	60
BC9CD750	Travis	Travis County State Jail	Austin	State prison	Texas	335	55
73BF4EA2	Swisher	Tulia Transfer Facility	West Tulia	State facility	Texas	9	28
9D831788	Fort Bend	Vance Unit prison	Richmond	State prison	Texas	75	15
FBCF28C0	Mitchell	Daniel Webster Wallace Unit prison	Colorado City	State prison	Texas	538	55
59E41A60	Hale	J.B. Wheeler State Jail	Plainview	State prison	Texas	93	40
E7A7640A	Willacy	Willacy County State Jail	Raymondville	State prison	Texas	33	40
4ADBBE41	Coryell	Linda Woodman State Jail	Gatesville	State prison	Texas	138	61
D9D7D203	Walker	Wynne Unit prison	Huntsville	State prison	Texas	489	133
04F960B2	Lubbock	West Texas Regional Medical Facility	Lubbock	State facility	Texas	0	0
AAB243A9	Hidalgo	Evins Regional Juvenile Center	Edinburg	State juvenile detention	Texas	45	92
C530081C	Cooke	Gainesville State School	Gainesville	State juvenile detention	Texas	13	39
6A7891CD	Lee	Giddings State School	Giddings	State juvenile detention	Texas	107	96
DF035DDB	McLennan	McLennan County State Juvenile Correctional Facility	Mart	State juvenile detention	Texas	108	110
18D9B6ED	Brown	Ron Jackson State Juvenile Correctional Complex	Brownwood	State juvenile detention	Texas	31	87
F3025EC9	Travis	Juvenile Halfway Houses	Austin	State juvenile detention	Texas	22	45
6DFDFE3F	Sanpete	Central Utah Correctional Facility	Gunnison	State prison	Utah	1108	0
11AEC442	Salt Lake	UDC inmates housed at a county jail	Salt Lake City	State prison	Utah	442	0
350EAC67	Salt Lake	Atherton Community Treatment Center	West Valley City	State prison	Utah	14	0
B5EAAC1F	Salt Lake	Bonneville Community Correctional Center	Salt Lake City	State prison	Utah	12	0
02A709DD	Salt Lake	Fortitute Treatment Center	Salt Lake City	State rehabilitation center	Utah	63	0
1F34021D	Weber	Northern Utah Community Correctional Center	Ogden	State prison	Utah	28	0
D0C80E96	Salt Lake	Orange Street Community Correctional Center	Salt Lake City	State prison	Utah	12	0
864FCF96	Salt Lake	Utah State Prison	Draper	State prison	Utah	1764	0
59428E9F	Chittenden	Chittenden Regional Correctional Facility	South Burlington	State prison	Vermont	5	11
8EBD13D6	Rutland	Marble Valley Correctional Facility	Rutland	State prison	Vermont	8	4
D56ACD6B	Caledonia	Northeast Correctional Complex	Saint Johnsbury	State prison	Vermont	2	11
62BAB000	Orleans	Northern State Correctional Facility	Newport	State prison	Vermont	179	24
B9E947DB	Franklin	Northwest State Correctional Facility	Swanton	State prison	Vermont	74	29
E5EB047B	Windsor	Southern State Correctional Facility	Springfield	State prison	Vermont	4	10
26F3C8CE	Tallahatchie	Tallahatchie County Correctional Facility	Tutwiler	State prison	Mississippi	185	0
4EBA7502	Russell	Appalachian Men's Detention Center	Honaker	State prison	Virginia	50	7
89A7BA92	Augusta	Augusta Correctional Center	Craigsville	State prison	Virginia	585	70
32445138	Mecklenburg	Baskerville Correctional Center	Baskerville	State prison	Virginia	250	9
7A427DA1	Bland	Bland Correctional Center	Bland	State prison	Virginia	191	43
DC5D2037	Brunswick	Brunswick Men's Community Corrections Alternative Program	Brunswick	State prison	Virginia	0	1
0AE6EAFC	Buckingham	Buckingham Correctional Center	Dillwyn	State prison	Virginia	649	19
CD1F5BBF	Caroline	Caroline Correctional Unit	Hanover	State prison	Virginia	6	1
C91151AF	Chesterfield	Central Virginia Correctional Unit #13	Chesterfield	State prison	Virginia	58	3
A41C86AC	Culpeper	Coffeewood Correctional Center	Mitchells	State prison	Virginia	674	33
FF23DB4A	Augusta	Cold Springs Community Corrections Alternative Program	Greenville	State prison	Virginia	31	4
164FD9B0	Augusta	Cold Springs Correctional Unit #10	Greenville	State prison	Virginia	64	10
4BDCFB3E	Southampton	Deerfield Correctional Center	Capron	State prison	Virginia	837	35
AD1702C8	Buckingham	Dillwyn Correctional Center	Dillwyn	State prison	Virginia	567	16
9DB45F9D	Fluvanna	Fluvanna Correctional Center for Women	Troy	State prison	Virginia	653	44
0D825F78	Pittsylvania	Green Rock Correctional Center	Chatham	State prison	Virginia	233	19
A02D76B3	Greensville	Greensville Correctional Center	Jarratt	State prison	Virginia	722	60
153F0C67	Halifax	Halifax Correctional Unit	South Boston	State prison	Virginia	131	14
3A15A327	Harrisonburg City	Harrisonburg Men’s Community Corrections Alternative Program	Harrisonburg	State prison	Virginia	26	3
D31BB97B	Richmond	Haynesville Correctional Center	Haynesville	State prison	Virginia	480	16
6BB09503	Richmond	Haynesville Correctional Unit #17	Haynesville	State prison	Virginia	5	1
EE28443C	Chesapeake City	Indian Creek Correctional Center	Chesapeake	State prison	Virginia	104	6
0E3DACEE	Buchanan	Keen Mountain Correctional Center	Oakwood	State prison	Virginia	16	8
2CCB6F8B	Brunswick	Lawrenceville Correctional Center	Lawrenceville	State prison	Virginia	101	14
4493DE07	Lunenburg	Lunenburg Correctional Center	Victoria	State prison	Virginia	119	5
370B4EFD	Smyth	Marion Correctional Treatment Center	Marion	State prison	Virginia	89	31
A674C46B	Nottoway	Nottoway Correctional Center	Burkeville	State prison	Virginia	539	32
4DFA331B	Henry	Patrick Henry Correctional Unit	Ridgeway	State prison	Virginia	60	12
5D0EE0F8	Tazewell	Pocahontas State Correctional Center	Pocahontas	State prison	Virginia	245	23
7F0333FC	Wise	Red Onion State Prison	Pound	State prison	Virginia	61	23
42323281	Grayson	River North Correctional Center	Independence	State prison	Virginia	2	8
21EEA46B	Campbell	Rustburg Correctional Unit	Rustburg	State prison	Virginia	29	6
CC399D9E	Chesapeake City	Saint Brides Correctional Center	Chesapeake	State prison	Virginia	459	15
15280A79	Stafford	Stafford Men’s Community Corrections Alternative Program	Stafford	State prison	Virginia	8	8
09DED5EA	Powhatan	State Farm Correctional Complex	State Farm	State prison	Virginia	493	43
E254698F	Sussex	Sussex I State Prison	Waverly	State prison	Virginia	178	15
0255C0E3	Sussex	Sussex II State Prison	Waverly	State prison	Virginia	188	13
86E0F929	Goochland	Virginia Correctional Center for Women	Goochland	State prison	Virginia	72	28
82678320	Wise	Wallens Ridge State Prison	Big Stone Gap	State prison	Virginia	20	15
261F957C	Wise	Wise Correctional Unit	Coeburn	State prison	Virginia	24	9
3614AD1D	Chesterfield	Bon Air Juvenile Correctional Center	Richmond	State juvenile detention	Virginia	37	62
FFA45687	Spokane	Airway Heights Corrections Center	Airway Heights	State prison	Washington	1671	215
E9B62C0F	Thurston	Cedar Creek Corrections Center	Littlerock	State prison	Washington	0	5
4B0124FE	Clallam	Clallam Bay Corrections Center	Clallam Bay	State prison	Washington	0	16
C10B1FCF	Franklin	Coyote Ridge Corrections Center	Connell	State prison	Washington	400	179
658CEC3D	Clark	Larch Corrections Center	Yacolt	State prison	Washington	281	25
9DDC5B4B	Mason	Mission Creek Corrections Center for Women	Belfair	State prison	Washington	0	0
7F0A6E1C	Snohomish	Monroe Correctional Center	Monroe	State prison	Washington	551	141
B0D0BB92	Jefferson	Olympic Corrections Center	Forks	State prison	Washington	0	4
56A9533C	Grays Harbor	Stafford Creek Corrections Center	Aberdeen	State prison	Washington	1204	89
3EF1A634	Mason	Washington Corrections Center	Shelton	State prison	Washington	976	105
F3D3E0E1	Pierce	Washington Corrections Center for Women	Gig Harbor	State prison	Washington	18	33
BAB335AF	Walla Walla	Washington State Penitentiary	Walla Walla	State prison	Washington	985	182
BF575B71	Whatcom	Bellingham Work Release facility	Bellingham	Low-security work release	Washington	16	0
D7DEAFB3	King	Bishop Lewis Work Release facility	Seattle	Low-security work release	Washington	36	4
D2A54667	Spokane	Brownstone Work Release facility	Spokane	Low-security work release	Washington	3	1
358F51EB	Spokane	Eleanor Chase House Work Release facility	Spokane	Low-security work release	Washington	0	5
783D1333	King	Helen B. Ratcliff Work Release facility	Seattle	Low-security work release	Washington	8	2
7BDEAE76	Cowlitz	Longview Work Release facility	Longview	Low-security work release	Washington	1	3
F393D95C	Thurston	Olympia Work Release facility	Olympia	Low-security work release	Washington	1	1
167B3ABB	Benton	Peninsula Work Release facility	Kennewick	Low-security work release	Washington	2	2
54B4A597	Pierce	Progress House Work Release facility	Tacoma	Low-security work release	Washington	16	1
A65FB12F	King	Reynolds Work Release facility	Seattle	Low-security work release	Washington	9	2
E8AE4393	Okaloosa	Okaloosa County jail	Crestview	Jail	Florida	193	45
B9A0EFBA	Benton	Tri-Cities Work Release facility	Kennewick	Low-security work release	Washington	1	0
E9E158E1	Greenbrier	Anthony Correctional Center	White Sulphur Springs	State prison	West Virginia	0	0
D94F80BF	Pocahontas	Denmar Correctional Center	Hillsboro	State prison	West Virginia	61	0
4704A2B8	Randolph	Huttonsville Correctional Center	Huttonsville	State prison	West Virginia	128	1
1F7E4E2E	Mason	Lakin Correctional Center	West Columbia	State prison	West Virginia	261	0
ADC8FE7B	Berkeley	Martinsburg Correctional Center	Martinsburg	State prison	West Virginia	12	0
DD81214B	Fayette	Mount Olive Correctional Center	Mount Olive	State prison	West Virginia	205	0
BDE35778	Marshall	Northern Correctional Facility	Moundsville	State prison	West Virginia	128	0
2F281A87	Ohio	Ohio County Correctional Center	Wheeling	State prison	West Virginia	19	0
99E2AD7D	Taylor	Pruntytown Correctional Center	Grafton	State prison	West Virginia	54	0
EC4D7281	Doddridge	Salem Correction Center	Industrial	State prison	West Virginia	4	0
58EA59DE	Pleasants	Saint Marys Correctional Center	Saint Marys	State prison	West Virginia	380	0
7163AF78	McDowell	Stevens Correctional Center/McDowell County Corrections	Welch	State prison	West Virginia	266	0
568B9A09	Raleigh	Beckley Community Corrections facility	Beckley	State prison	West Virginia	0	0
2A92C06D	Kanawha	Charleston Community Corrections facility	Charleston	State prison	West Virginia	0	0
5C594624	Wood	Parkersburg Community Corrections facility	Parkersburg	State prison	West Virginia	43	0
85E52294	Boone	Donald R. Kuhn Juvenile Center	Julian	State juvenile detention	West Virginia	1	0
8AE91BDA	Fayette	Gene Spadaro Juvenile Center	Mount Hope	State juvenile detention	West Virginia	2	0
D6D98AAC	Hampshire	J.M. "Chick" Buckabee Juvenile Center	Augusta	State juvenile detention	West Virginia	1	0
F7696D71	Tucker	Kenneth "Honey" Robenstein Juvenile Center	Davis	State juvenile detention	West Virginia	0	0
36D95DBE	Wood	Lorrie Yeager Jr. Juvenile Center	Parkersburg	State juvenile detention	West Virginia	1	0
60F5FAD1	Cabell	Robert L. Shell Juvenile Center	Barboursville	State juvenile detention	West Virginia	2	0
C2FB69FF	Mercer	Sam Purdue Juveniile Center	Princeton	State juvenile detention	West Virginia	4	0
E23B54E2	Kanawha	James H. "Tiger" Morton Juvenile Center	Dunbar	State juvenile detention	West Virginia	0	0
7055C5E6	Berkeley	Vicki V. Douglas Juvenile Center	Martinsburg	State juvenile detention	West Virginia	2	0
B7252578	Ohio	Ronald Mulholland Juvenile Center	Wheeling	State juvenile detention	West Virginia	2	0
D960CCC7	Jackson	Black River Correctional Center	Black River	State prison	Wisconsin	42	10
ABD6DF03	Chippewa	Chippewa Valley Correctional Treatment Facility	Chippewa Falls	State prison	Wisconsin	296	37
B840B39F	Columbia	Columbia Correctional Institution	Portage	State prison	Wisconsin	281	83
3020F47E	Lincoln	Copper Lake School and Lincoln Hills School	Irma	State juvenile detention	Wisconsin	24	27
2D7FE62D	Dodge	Dodge Correctional Institution	Waupun	State prison	Wisconsin	778	180
E529EAA1	Winnebago	Drug Abuse Correctional Center	Oshkosh	State prison	Wisconsin	83	27
24B3A78E	Milwaukee	Felmers O. Chaney Correctional Center	Milwaukee	State prison	Wisconsin	40	6
4EA3E0E6	Sawyer	Flambeau Correctional Center	Winter	State prison	Wisconsin	14	6
4227A32C	Dodge	Fox Lake Correctional Institution	Fox Lake	State prison	Wisconsin	906	147
355C5A03	Douglas	Gordon Correctional Center	Gordon	State prison	Wisconsin	48	11
0D44658E	Brown	Green Bay Correctional Institution	Allouez	State prison	Wisconsin	482	140
F77D6182	Kenosha	The Grow Academy	Oregon	State juvenile detention	Wisconsin	0	0
FE2FF0C6	Jackson	Jackson Correctional Institution	Black River Falls	State prison	Wisconsin	605	84
88B45BED	Dodge	John C. Burke Correctional Center	Waupun	State prison	Wisconsin	40	20
A166DF78	Kenosha	Kenosha Correctional Center	Kenosha	State prison	Wisconsin	8	7
E2E419AC	Sheboygan	Kettle Moraine Correctional Institution	Plymouth	State prison	Wisconsin	886	149
CCFFCB98	Milwaukee	Marshall E. Sherrer Correctional Center	Milwaukee	State prison	Wisconsin	9	15
944CFFD2	Oneida	McNaughton Correctional Center	Tomahawk	State prison	Wisconsin	71	9
8031EDBD	Milwaukee	Milwaukee Secure Detention Facility	Milwaukee	State prison	Wisconsin	150	80
7B6F5835	Milwaukee	Milwaukee Women's Correctional Center	Milwaukee	State prison	Wisconsin	30	14
41D323E8	Juneau	New Lisbon Correctional Institution	New Lisbon	State prison	Wisconsin	552	91
78991EF0	Dane	Oakhill Correctional Institution	Oregon	State prison	Wisconsin	424	60
ED10DC4A	Dane	Oakhill Correctional Institution	Fitchburg	State prison	Wisconsin	1	2
5A51E46A	Winnebago	Oshkosh Correctional Institution	Oshkosh	State prison	Wisconsin	1033	129
C7EA8F79	Crawford	Prairie du Chien Correctional Institution	Prairie du Chien	State prison	Wisconsin	414	75
D1EC902C	Racine	Racine Correctional Institution/Sturtevant Transitional Facility	Sturtevant	State prison	Wisconsin	1179	137
642BC3DD	Racine	Racine Youthful Offender Correctional Facility	Racine	State juvenile detention	Wisconsin	138	58
29B01F0E	Waushara	Redgranite Correctional Institution	Redgranite	State prison	Wisconsin	362	88
450ECC3B	Racine	Robert E. Ellsworth Correctional Center	Union Grove	State prison	Wisconsin	242	39
7385AFE0	Outagamie	Sanger B. Powers Correctional Center	Oneida	State prison	Wisconsin	63	2
2090B4A0	St. Croix	Saint Croix Correctional Center	New Richmond	State prison	Wisconsin	1	7
372B6EB9	Chippewa	Stanley Correctional Institution	Stanley	State prison	Wisconsin	421	135
5ED136DC	Dane	Thompson Correctional Center	Deerfield	State prison	Wisconsin	40	8
9D67B049	Dodge	Waupun Correctional Institution	Waupun	State prison	Wisconsin	722	129
69FCFF34	Winnebago	Winnebago Correctional Center	Winnebago	State prison	Wisconsin	78	14
803939F0	Grant	Wisconsin Secure Program Facility	Boscobel	State prison	Wisconsin	3	45
A139CF64	Niobrara	Wyoming Women’s Center	Lusk	State prison	Wyoming	3	17
69B6A651	Weston	Wyoming Honor Conservation Camp	Newcastle	State prison	Wyoming	182	35
0D595E91	Fremont	Wyoming Honor Farm	Riverton	State prison	Wyoming	203	34
F5A119E0	Goshen	Wyoming Medium Correctional Institution	Torrington	State prison	Wyoming	71	96
B81A114F	Carbon	Wyoming State Penitentiary	Rawlins	State prison	Wyoming	420	114
0C467D77	Pinal	Saguaro Correctional Center	Eloy	State prison	Arizona	956	0
D5357D8C	Charlton	D. Ray James federal prison	Folkston	Federal prison	Georgia	197	0
B1BF5700	Charlton	Folkston ICE Processing Center	Folkston	Detention center	Georgia	104	0
8429115D	Polk	Polk County Jail	Des Moines	Jail	Iowa	292	74
A648964D	Polk	Polk County ICE facility	Des Moines	Detention center	Iowa	15	0
5F066C3D	Chase	Chase County jail	Cottonwood Falls	Jail	Kansas	0	0
FE719C1C	Chase	Chase County ICE facility	Cottonwood Falls	Detention center	Kansas	84	0
ADF0DEF0	Bristol	Bristol County jail	North Dartmouth	Jail	Massachusetts	97	155
CA22F36D	Bristol	Bristol County ICE facility	North Dartmouth	Detention center	Massachusetts	9	0
CD05E8D8	Franklin	Franklin County jail	Greenfield	Jail	Massachusetts	12	10
1DAFFD64	Franklin	Franklin County ICE facility	Greenfield	Detention center	Massachusetts	9	0
16542AB9	Lincoln	Lincoln County jail	Troy	Jail	Missouri	34	5
85150576	Lincoln	Lincoln County ICE facility	Troy	Detention center	Missouri	1	0
F686E539	Douglas	Douglas County jail	Omaha	Jail	Nebraska	225	214
00C7C0E4	Douglas	Douglas County ICE facility	Omaha	Detention center	Nebraska	1	0
DEF999EE	Bergen	Bergen County Jail	Hackensack	Jail	New Jersey	53	67
5B89F4EA	Bergen	Bergen County ICE facility	Hackensack	Detention center	New Jersey	24	1
070CA1A7	Essex	Essex County jail	Newark	Jail	New Jersey	37	186
037531F2	Essex	Essex County ICE facility	Newark	Detention center	New Jersey	24	1
F2CCCAEE	Hudson	Hudson County jail	Kearny	Jail	New Jersey	113	150
8871DB34	Hudson	Hudson County ICE facility	Kearny	Detention center	New Jersey	14	1
3B8D5611	Cibola	Cibola County Correctional Center	Milan	Jail	New Mexico	445	82
96BAECA1	Cibola	Cibola County ICE facility	Milan	Detention center	New Mexico	1	0
747D5FB0	Otero	Otero County correctional facilities	Chaparral	Federal prison	New Mexico	916	25
7B1E70AA	Morrow	Morrow County jail	Mount Gilead	Jail	Ohio	51	5
0468276F	Morrow	Morrow County ICE facility	Mount Gilead	Detention center	Ohio	51	0
2A556AE7	Tulsa	Tulsa County jail	Tulsa	Jail	Oklahoma	390	6
7656B11F	Tulsa	David L. Moss Criminal Justice Center	Tulsa	Detention center	Oklahoma	0	0
6AF291DE	Pike	Pike County jail	Lords Valley	Jail	Pennsylvania	67	24
E0118D55	Pike	Pike County ICE facility	Lords Valley	Detention center	Pennsylvania	38	0
7EA44414	York	York County jail	York	Jail	Pennsylvania	718	67
FBAE83F0	York	York County ICE facility	York	Detention center	Pennsylvania	279	0
C9D57B8A	Burnet	Burnet County Jail	Burnet	Jail	Texas	247	26
AF29DE71	Burnet	Burnet County ICE detention center	Burnet	Detention center	Texas	0	0
85C642D2	Webb	Webb County jail	Laredo	Jail	Texas	439	96
97C1DFEE	Bottineau	Webb County ICE facility	Laredo	Detention center	Texas	134	0
3C39E371	Washington	Purgatory Correctional Facility	Hurricane	Jail	Utah	239	44
08E6878A	Washington	Purgatory ICE facility	Hurricane	Detention center	Utah	6	0
0579FD33	Weber	Weber County jail	Ogden	Jail	Utah	315	17
0E95CFF1	James City	Virginia Peninsula Regional ICE detention center	Williamsburg	Detention center	Virginia	0	0
4AE1B10B	Kanawha	South Central Regional ICE facility	Charleston	Detention center	West Virginia	2	0
B80C2E1E	Kenosha	Kenosha County jail	Kenosha	Jail	Wisconsin	202	60
20246B38	Kenosha	Kenosha County Detention Center	Kenosha	Detention center	Wisconsin	0	0
7AFEDAB1	Baldwin	Baldwin County jail	Bay Minette	Jail	Alabama	37	10
39C32CC4	DeKalb	DeKalb County Jail	Fort Payne	Jail	Alabama	53	34
3C0AA7FB	Jefferson	Jefferson County jails	Birmingham	Jail	Alabama	91	2
C032495A	Lauderdale	Lauderdale County Jail	Florence	Jail	Alabama	13	19
D113AA95	Lee	Lee County jail	Opelika	Jail	Alabama	3	5
5AE4B040	Mobile	Mobile County Metro Jail	Mobile	Jail	Alabama	232	60
B3D0C18F	Montgomery	Montgomery City Jail	Montgomery	Jail	Alabama	15	20
6941F532	Montgomery	Montgomery County jail	Montgomery	Jail	Alabama	21	18
16EA198E	Shelby	Shelby County Jail	Columbiana	Jail	Alabama	10	10
FF84BDF7	Tuscaloosa	Tuscaloosa County Jail	Tuscaloosa	Jail	Alabama	214	25
1987CCDC	Cochise	Cochise County jails	Bisbee	Jail	Arizona	33	26
D7611DC0	Coconino	Coconino County jails	Flagstaff	Jail	Arizona	188	35
76C2FE3D	Maricopa	Maricopa County jails	Phoenix	Jail	Arizona	2661	495
19A9E74A	Mohave	Mohave County jail	Kingman	Jail	Arizona	70	17
4A175F73	Pima	Pima County jails	Tucson	Jail	Arizona	654	139
ED481B90	Pinal	Pinal County jail	Florence	Jail	Arizona	85	0
AE337192	Yavapai	Yavapai County jail	Camp Verde	Jail	Arizona	15	60
B515CF86	Yuma	Yuma County jail	Yuma	Jail	Arizona	165	95
AECDAE4C	Benton	Benton County jail	Bentonville	Jail	Arkansas	189	15
0509615C	Craighead	Craighead County jail	Jonesboro	Jail	Arkansas	28	0
2ACB660B	Crawford	Crawford County jail	Van Buren	Jail	Arkansas	41	0
AA2A7D93	Faulkner	Faulkner County Detention Center	Conway	Jail	Arkansas	22	0
2D73E9A2	Greene	Greene County jail	Paragould	Jail	Arkansas	35	0
2FB5C3BE	Johnson	Johnson County Detention Center	Clarksville	Jail	Arkansas	1	3
29FB876D	Lawrence	Lawrence County jail	Walnut Ridge	Jail	Arkansas	1	0
2071BDE6	Miller	Miller County Jail	Texarkana	Jail	Arkansas	0	0
8C8A2A07	Poinsett	Poinsett County jail	Harrisburg	Jail	Arkansas	0	1
01CAB56F	Pulaski	Pulaski County Regional Detention Facility	Little Rock	Jail	Arkansas	12	11
314D6A84	Sebastian	Sebastian County jail	Fort Smith	Jail	Arkansas	62	7
A51D071A	Washington	Washington County jail	Fayetteville	Jail	Arkansas	301	55
70D8F2DC	Alameda	Santa Rita Jail	Dublin	Jail	California	562	109
44F8AF9D	Butte	Butte County Jail	Oroville	Jail	California	326	35
970EEF54	Contra Costa	Contra Costa County Jail	Martinez	Jail	California	239	72
046ADCE7	Fresno	Fresno County jail	Fresno	Jail	California	3814	171
E911646B	Humboldt	Humboldt County jail	Eureka	Jail	California	8	6
BFDC381F	Imperial	Imperial County jail	El Centro	Jail	California	54	65
B961A39E	Kern	Kern County jail	Bakersfield	Jail	California	208	142
AFEBC9D3	Los Angeles	Nidorf Juvenile Hall	Sylmar	Jail	California	67	76
50579201	Los Angeles	Central Juvenile Hall	Los Angeles	Jail	California	107	51
DAF2EA1F	Los Angeles	Century Regional Detention Facility	Lynwood	Jail	California	256	75
1B335BEA	Los Angeles	Men's Central Jail	Los Angeles	Jail	California	827	204
6B866F6C	Los Angeles	North County jail	Castaic	Jail	California	1443	121
11D3E7F1	Los Angeles	Pitchess Detention Center	Castaic	Jail	California	539	114
AEF17928	Los Angeles	Twin Towers jail	Los Angeles	Jail	California	950	352
96019454	Mendocino	Mendocino County Jail	Ukiah	Jail	California	132	15
4DF675F2	Monterey	Monterey County Jail	Salinas	Jail	California	368	0
C3CB2EF7	Plumas	Plumas County Correctional Facility	Quincy	Jail	California	28	16
E6D357E6	Sacramento	Sacramento County jails	Sacramento	Jail	California	1795	166
9B92971F	San Diego	San Diego County Jail	San Diego	Jail	California	336	0
CC01B87E	San Diego	George Bailey Jail	San Diego	Jail	California	443	0
92CDD34F	San Diego	Vista Detention Facility	Vista	Jail	California	172	0
9B7934C3	San Diego	South Bay Detention Facility	Chula Vista	Jail	California	108	0
939106A8	San Diego	Facility 8 Detention Facility	San Diego	Jail	California	1	0
A1CF71C1	San Diego	East Mesa Reentry Facility	San Diego	Jail	California	121	0
A6A73E32	San Diego	Las Colinas Detention and Re-Entry Facility	Santee	Jail	California	82	0
2281353C	San Francisco	San Francisco County jail	San Francisco	Jail	California	136	73
2422606F	San Joaquin	San Joaquin County Jail	French Camp	Jail	California	202	11
93D515D2	San Luis Obispo	San Luis Obispo County Jail	San Luis Obispo	Jail	California	95	31
96236397	Santa Barbara	Santa Barbara County jail	Santa Barbara	Jail	California	215	118
068836FC	Santa Clara	Santa Clara County Jails	San Jose	Jail	California	590	235
23B5A929	Santa Cruz	Santa Cruz County jail	Santa Cruz	Jail	California	29	24
D808C34E	Siskiyou	Siskiyou County Jail	Yreka	Jail	California	2	2
9786F0A9	Sonoma	Sonoma County jail	Santa Rosa	Jail	California	162	22
D540B2FD	Stanislaus	Stanislaus County Jail	Modesto	Jail	California	183	101
DA17A690	Tulare	Tulare County jail	Visalia	Jail	California	198	71
61B716C3	Tuolumne	Tuolumne County jails	Sonora	Jail	California	11	8
F1DFA14A	Ventura	Ventura County jails	Ventura	Jail	California	240	4
13CF87C2	Adams	Adams County jail	Brighton	Jail	Colorado	167	3
7646CBB3	Boulder	Boulder County Jail	Boulder	Jail	Colorado	62	13
AB34CA5C	Broomfield	Broomfield Detention Center	Broomfield	Jail	Colorado	20	7
180EEF52	Adams	Commerce Transitional Center	Commerce City	Jail	Colorado	3	1
B2F30469	Denver	Adams Transitional Center jail	Denver	Jail	Colorado	29	7
8FA0E43F	Denver	Denver County jail	Denver	Jail	Colorado	142	20
74381749	Denver	Van Cise-Simonet Detention Center	Denver	Jail	Colorado	1095	86
8DA6CEE8	Douglas	Douglas County Jail	Castle Rock	Jail	Colorado	12	2
FAEA99FA	El Paso	El Paso County jail	Colorado Springs	Jail	Colorado	1158	187
B74A5E6B	Jefferson	Jefferson County Detention Facility	Golden	Jail	Colorado	83	16
51DA39E9	Larimer	Larimer County Jail	Fort Collins	Jail	Colorado	34	74
EC2E9B49	Mesa	Mesa County Jail	Grand Junction	Jail	Colorado	151	21
B473AB59	Pueblo	Pueblo County Jail	Pueblo	Jail	Colorado	423	113
DC40CCA2	Saguache	Saguache County Jail	Saguache	Jail	Colorado	5	5
43B24629	Washington	Washington County Justice Center	Akron	Jail	Colorado	116	9
33706629	District of Columbia	Central Detention Facility	Washington	Jail	District of Columbia	254	197
6C3661CE	District of Columbia	D.C. youth detention centers	Washington	Juvenile detention at jail	District of Columbia	44	72
6E32CDC4	Alachua	Alachua County jail	Gainesville	Jail	Florida	137	67
EE3C7C32	Bay	Bay County Jail	Panama City	Jail	Florida	123	72
1175558D	Brevard	Brevard County jail	Cocoa	Jail	Florida	82	64
DA041B57	Broward	Broward County jails	Fort Lauderdale	Jail	Florida	381	327
FEE83DA9	Charlotte	Charlotte County Jail	Punta Gorda	Jail	Florida	19	20
AA762329	Citrus	Citrus County Detention Facility	Lecanto	Jail	Florida	147	19
49B5384C	Clay	Clay County Jail	Green Cove Springs	Jail	Florida	228	39
3628062D	Collier	Collier County jails	Naples	Jail	Florida	89	32
2479CEFF	Escambia	Escambia County Jail	Pensacola	Jail	Florida	246	0
5C463459	Flagler	Flagler County jail	Bunnell	Jail	Florida	10	15
7F4F90BC	Hendry	Hendry County Jail	LaBelle	Jail	Florida	64	6
7F788B15	Hillsborough	Hillsborough County jails	Tampa	Jail	Florida	344	149
3E62EB35	Duval	Jacksonville jails	Jacksonville	Jail	Florida	560	240
4851AF09	Lake	Lake County Jail	Taveres	Jail	Florida	210	53
DC679528	Leon	Leon County jail	Tallahassee	Jail	Florida	318	34
2195D46C	Levy	Levy County jail	Bronson	Jail	Florida	21	19
C60867F6	Manatee	Manatee County Jail	Palmetto	Jail	Florida	57	55
04427F71	Marion	Marion County Jail	Ocala	Jail	Florida	286	53
C403C282	Miami-Dade	Miami-Dade County jails	Miami	Jail	Florida	1864	846
17D66AA7	Monroe	Monroe County jails	Key West	Jail	Florida	103	24
661F519F	Nassau	Nassau County jail	Yulee	Jail	Florida	75	8
40D3C7DC	Orange	Orange County Jail	Orlando	Jail	Florida	470	270
BEF5A26C	Palm Beach	Palm Beach County jails	West Palm Beach	Jail	Florida	333	176
E45FF84E	Pasco	Land O' Lakes Detention Center	Land O' Lakes	Jail	Florida	234	0
FD63BC21	Pinellas	Pinellas County Jail	Clearwater	Jail	Florida	250	0
3156B8B3	St. Lucie	Saint Lucie County Jail	Fort Pierce	Jail	Florida	176	43
67E84A6D	Sarasota	Sarasota County Jail	Sarasota	Jail	Florida	163	48
F6E03F28	Seminole	John E. Polk Correctional Facility	Sanford	Jail	Florida	224	58
459560C9	Volusia	Volusia County jails	Daytona Beach	Jail	Florida	298	49
49CD8E58	Walton	Walton County Jail	DeFuniak Springs	Jail	Florida	92	25
D011B829	Bartow	Bartow County jail	Cartersville	Jail	Georgia	76	11
B3401E8B	Bibb	Bibb County jail	Macon	Jail	Georgia	15	28
5C897512	Burke	Burke County Detention Center	Waynesboro	Jail	Georgia	35	10
543EC7EE	Richmond	Charles B. Webster Detention Center	Augusta	Jail	Georgia	55	75
D920166A	Chattooga	Chattooga County jail	Summerville	Jail	Georgia	12	14
1A5D6049	Chatham	Chatham County jail	Savannah	Jail	Georgia	135	101
9DAB927B	Clarke	Athens-Clarke County jail	Athens	Jail	Georgia	86	38
4E253592	Clayton	Clayton County jail	Jonesboro	Jail	Georgia	32	13
F6BC0BA8	Crawford	Crawford County jail	Knoxville	Jail	Georgia	10	12
7D1C14D4	DeKalb	DeKalb County jail	Decatur	Jail	Georgia	275	120
A6DB6CFE	Dougherty	Dougherty County jail	Albany	Jail	Georgia	64	50
3C558C68	Elbert	Elbert County Detention Center	Elberton	Jail	Georgia	15	18
10A821E0	Floyd	Floyd County jail	Rome	Jail	Georgia	26	43
1FDCFECD	Forsyth	Forsyth County jail	Cumming	Jail	Georgia	32	13
8724929D	Newton	Newton County jail	Covington	Jail	Georgia	23	16
2B1C3226	Fulton	Fulton County jails	Fulton County	Jail	Georgia	340	85
8DA1CD40	Gwinnett	Gwinnett County jail	Lawrenceville	Jail	Georgia	24	175
5F60D5CA	Glynn	Glynn County Detention Center	Brunswick	Jail	Georgia	160	20
43A26176	Hall	Hall County Jail	Gainesville	Jail	Georgia	53	60
DC5D6240	Henry	Henry County jail	McDonough	Jail	Georgia	93	73
79240095	Houston	Houston County Detention Center	Perry	Jail	Georgia	65	34
A117DF38	Jasper	Jasper County jail	Monticello	Jail	Georgia	1	1
1CF20834	Liberty	Liberty County jail	Hinesville	Jail	Georgia	33	15
94CC3BBC	Lowndes	Lowndes County jail	Valdosta	Jail	Georgia	7	22
E587607A	Muscogee	Muscogee County jail	Columbus	Jail	Georgia	148	54
199C3ADF	Peach	Peach County jail	Fort Valley	Jail	Georgia	4	9
DF3BD624	Rockdale	Rockdale County jail	Conyers	Jail	Georgia	16	45
E76B5D2B	Hawaii	Hawaii Community Correctional Center	Hilo	Jail	Hawaii	1	1
ED9681A5	Maui	Maui Community Correctional Center	Wailuku	Jail	Hawaii	94	2
2FEE0DEE	Honolulu	Oahu Community Correctional Center	Oahu	Jail	Hawaii	457	108
26799790	Ada	Ada County Jail	Boise	Jail	Idaho	431	22
D98BD18E	Bannock	Bannock County jail	Pocatello	Jail	Idaho	39	9
7110EC25	Bingham	Bingham County Jail	Blackfoot	Jail	Idaho	84	21
D0F14DE6	Bonneville	Bonneville County Jail	Idaho Falls	Jail	Idaho	67	24
64EE2DA5	Kootenai	Kootenai County Jail	Coeur d'Alene	Jail	Idaho	52	32
E708D01D	Twin Falls	Twin Falls County jail	Twin Falls	Jail	Idaho	262	22
2.64E+76	Adams	Adams County Jail	Quincy	Jail	Illinois	1	13
30614A83	Champaign	Champaign County Satellite Jail	Urbana	Jail	Illinois	29	0
39E04FBE	Coles	Coles County Jail	Charleston	Jail	Illinois	6	4
AD4E1235	Cook	Cook County jail	Chicago	Jail	Illinois	1491	1178
BD8B83D7	Cook	Cook County juvenile hall	Chicago	Juvenile detention at jail	Illinois	83	102
5B806977	Grundy	Grundy County Jail	Morris	Jail	Illinois	14	10
B81BAC82	Kane	Kane County jail	St. Charles	Jail	Illinois	238	58
166EAC91	Kane	Kane County Juvenile Justice Center	St. Charles	Jail	Illinois	6	13
0AAFB43B	Kankakee	Jerome Combs Detention Center	Kankakee	Jail	Illinois	173	0
22F2EDDE	Kankakee	Kankakee County Detention Center	Kankakee	Jail	Illinois	32	0
79D675DE	Kendall	Kendall County Jail	Yorkville	Jail	Illinois	26	10
0DD5D276	Lake	Lake County jail	Waukegan	Jail	Illinois	71	50
464B242D	LaSalle	LaSalle County Jail	Ottawa	Jail	Illinois	37	0
AF8485EA	Logan	Logan County Jail	Lincoln	Jail	Illinois	11	2
A1266C1A	Macon	Macon County Jail	Decatur	Jail	Illinois	37	8
EB7CB462	Madison	Madison County Jail	Edwardsville	Jail	Illinois	101	0
FE82ED25	McHenry	McHenry County Jail	Woodstock	Jail	Illinois	55	16
E79B1718	McLean	McLean County jail	Bloomington	Jail	Illinois	7	13
6E41C710	Morgan	Morgan County Jail	Jacksonville	Jail	Illinois	15	9
90CDB51F	Peoria	Peoria County Jail	Peoria	Jail	Illinois	103	26
51F15F51	Randolph	Randolph County Jail	Chester	Jail	Illinois	18	5
527B30FA	Sangamon	Sangamon County Jail	Springfield	Jail	Illinois	18	33
D9715F12	Schuyler	Schuyler County Jail	Rushville	Jail	Illinois	1	1
0021E1F5	St. Clair	Saint Clair County Jail	Belleville	Jail	Illinois	200	37
EC5C6FCA	Tazewell	Tazewell County jail	Pekin	Jail	Illinois	46	19
55849EE1	Will	Will County jail	Joliet	Jail	Illinois	38	82
8D060672	Winnebago	Winnebago County Jail	Rockford	Jail	Illinois	58	40
585B5392	Bartholomew	Bartholomew County jail	Columbus	Jail	Indiana	119	14
8360246	Cass	Cass County jail	Logansport	Jail	Indiana	70	10
94D8662D	Dearborn	Dearborn County Law Enforcement Center	Lawrenceburg	Jail	Indiana	89	0
FE2D761D	Gibson	Gibson County jail	Princeton	Jail	Indiana	57	6
449E3A36	Howard	Howard County jail	Kokomo	Jail	Indiana	325	33
A4608A9F	Johnson	Johnson County jail	Franklin	Jail	Indiana	128	9
8597C4D3	Lake	Lake County jail	Crown Point	Jail	Indiana	91	39
4D52115C	LaPorte	La Porte County jail	La Porte	Jail	Indiana	110	16
AD706FC7	Madison	Madison County jail	Anderson	Jail	Indiana	23	5
FED4A093	Marion	Marion County Jail 1	Indianapolis	Jail	Indiana	169	91
6F2765D5	Marion	Marion County Jail 2	Indianapolis	Jail	Indiana	164	58
3E0694D9	Marion	Marion County Community Corrections Residential Center	Indianapolis	Jail	Indiana	0	18
0D50A894	Marshall	Marshall County jail	Plymouth	Jail	Indiana	131	8
78524A1B	Monroe	Monroe County jail	Bloomington	Jail	Indiana	21	27
884CC3B6	Porter	Porter County jail	Valparaiso	Jail	Indiana	45	26
988E4C86	St. Joseph	Saint Joseph County jail	South Bend	Jail	Indiana	346	36
1E7046EC	Tippecanoe	Tippecanoe County jail	Lafayette	Jail	Indiana	115	18
E8F065BE	Noble	Noble County jail	Albion	Jail	Indiana	38	11
F05CAE95	Vigo	Vigo County jails	Terre Haute	Jail	Indiana	115	13
319A948D	Dallas	Dallas County Jail	Adel	Jail	Iowa	1	12
076DBD62	Dubuque	Dubuque County Jail	Dubuque	Jail	Iowa	69	13
C49E1D72	Linn	Linn County Jail	Cedar Rapids	Jail	Iowa	46	32
9A9794FF	Muscatine	Muscatine County Jail	Muscatine	Jail	Iowa	14	15
DF26F121	Scott	Scott County Jail	Davenport	Jail	Iowa	10	7
BA29569E	Pottawattamie	Pottawattamie County Jail	Council Bluffs	Jail	Iowa	38	44
D24404C8	Story	Story County Jail	Nevada	Jail	Iowa	0	7
36993AFD	Webster	Webster County Jail	Fort Dodge	Jail	Iowa	11	9
322C2E9C	Woodbury	Woodbury County Jail	Sioux City	Jail	Iowa	86	29
0DF6072B	Atchison	Atchison County Jail	Atchison	Jail	Kansas	28	2
1683Feb9	Butler	Butler County jail	El Dorado	Jail	Kansas	50	21
E676531D	Cherokee	Cherokee County jail	Columbus	Jail	Kansas	3	4
746AD356	Dickinson	Dickinson County jail	Abilene	Jail	Kansas	4	9
915B8453	Douglas	Douglas County Jail	Lawrence	Jail	Kansas	11	9
FC11169C	Ellis	Ellis County Jail	Hays	Jail	Kansas	17	5
60A6E538	Finney	Finney County Jail	Garden City	Jail	Kansas	69	9
8240168A	Greenwood	Greenwood County Jail	Eureka	Jail	Kansas	20	1
54F2EA5C	Harvey	Harvey County Jail	Newton	Jail	Kansas	16	8
DF6B0D8E	Labette	Labette County Jail	Oswego	Jail	Kansas	37	7
6A5C43B3	Reno	Reno County Correctional Facility	Reno	Jail	Kansas	28	13
3A1E8B67	Riley	Riley County Correctional Facility	Manhattan	Jail	Kansas	4	5
9B1921CB	Saline	Saline County Jail	Salina	Jail	Kansas	11	24
2083BC50	Sedgwick	Sedgwick County jail	Wichita	Jail	Kansas	955	59
4FACE397	Shawnee	Shawnee County Department of Corrections	Topeka	Jail	Kansas	97	33
E949B6A7	Adair	Adair County Regional Jail	Columbia	Jail	Kentucky	18	3
B99BB712	Allen	Allen County jail	Scottsville	Jail	Kentucky	35	4
DB3A0B74	Barren	Barren County jail	Glasgow	Jail	Kentucky	114	18
38C63FA7	Bourbon	Bourbon County jail	Paris	Jail	Kentucky	93	8
BA7A8E02	Boyd	Boyd County jail	Catlettsburg	Jail	Kentucky	259	17
727AD256	Boyle	Boyle County Jail	Danville	Jail	Kentucky	123	11
912E531C	Butler	Butler County Jail	Morgantown	Jail	Kentucky	46	34
E132058D	Breckinridge	Breckinridge County Jail	Hardinsburg	Jail	Kentucky	7	3
6B0BA610	Caldwell	Caldwell County Jail	Princeton	Jail	Kentucky	4	2
1B76E48C	Calloway	Calloway County Jail	Murray	Jail	Kentucky	36	11
E1FA18DE	Carroll	Carroll County jail	Carrollton	Jail	Kentucky	57	0
B4CA4719	Carter	Carter County jail	Grayson	Jail	Kentucky	28	3
5E53DD5A	Clay	Clay County jail	Manchester	Jail	Kentucky	67	13
A7F87FF2	Crittenden	Crittenden County jail	Marion	Jail	Kentucky	1	0
1E5886DF	Fayette	Fayette County jail	Lexington	Jail	Kentucky	622	86
B5983959	Floyd	Floyd County Jail	Prestonsburg	Jail	kentucky	60	10
74F991FF	Franklin	Franklin County Regional Jail	Frankfort	Jail	Kentucky	103	10
908D5E61	Grayson	Grayson County jail	Leitchfield	Jail	Kentucky	26	8
0C07BEF5	Graves	Graves County Jail	Mayfield	Jail	Kentucky	0	1
3F2A455C	Greenup	Greenup County jail	Greenup	Jail	Kentucky	15	7
A2BEE47D	Hardin	Hardin County jail	Elizabethtown	Jail	Kentucky	56	12
33D59648	Harlan	Harlan County jail	Evarts	Jail	Kentucky	2	0
A6860922	Hart	Hart County jail	Munfordville	Jail	Kentucky	107	8
FFA9830B	Henderson	Henderson County jail	Henderson	Jail	Kentucky	6	4
1AFFF9FA	Hopkins	Hopkins County jail	Madisonville	Jail	Kentucky	0	8
B46022F5	Jessamine	Jessamine County jail	Nicholasville	Jail	Kentucky	3	1
EA19165A	Johnson	Big Sandy Regional jail	Paintsville	Jail	Kentucky	33	1
0E2095CB	Kenton	Kenton County jail	Covington	Jail	Kentucky	84	26
90DE4368	Perry	Kentucky River Regional jail	Hazard	Jail	Kentucky	23	3
0DCEDC97	Knox	Knox County jail	Barbourville	Jail	Kentucky	1	3
A4E9CFFA	Laurel	Laurel County jail	London	Jail	Kentucky	27	1
91AEE6EA	Larue	LaRue County jail	Hodgenville	Jail	Kentucky	104	7
9A3CCC8C	Letcher	Letcher County Jail	Whitesburg	Jail	Kentucky	3	1
25D49B73	Leslie	Leslie County jail	Hyden	Jail	Kentucky	35	0
9C12EE45	Lincoln	Lincoln County Regional Jail	Stanford	Jail	Kentucky	16	2
6F5B5587	Logan	Logan County Jail	Russellville	Jail	Kentucky	19	3
A9FE91B8	Jefferson	Louisville jail	Louisville	Jail	Kentucky	370	177
77C97383	Madison	Madison County jail	Richmond	Jail	Kentucky	60	12
32995D2D	Marion	Marion County jail	Lebanon	Jail	Kentucky	180	33
D6F5BFBE	Mason	Mason County jail	Maysville	Jail	Kentucky	0	1
659A5F73	McCracken	McCracken County Jail	Paducah	Jail	Kentucky	21	5
9252E7A6	Meade	Meade County jail	Brandenburg	Jail	Kentucky	9	5
383E6497	Montgomery	Montgomery County Regional Jail	Mount Sterling	Jail	Kentucky	15	1
B7D5AAB4	Muhlenberg	Muhlenberg jail	Greenville	Jail	Kentucky	1	1
894DD529	Nelson	Nelson County Jail	Bardstown	Jail	Kentucky	56	14
C621DF1E	Daviess	Daviess County jail	Owensboro	Jail	Kentucky	170	22
7621D165	Oldham	Oldham County jail	La Grange	Jail	Kentucky	4	4
A320CCCA	Ohio	Ohio County jail	Hartford	Jail	Kentucky	1	0
46D8B0F0	Pike	Pike County jail	Pikeville	Jail	Kentucky	20	14
48E0DAEF	Powell	Powell County jail	Stanton	Jail	Kentucky	80	8
7D0786D7	Pulaski	Pulaski County jail	Somerset	Jail	Kentucky	24	11
88B05C13	Scott	Scott County jail	Georgetown	Jail	Kentucky	22	7
C0B7FACC	Shelby	Shelby County jail	Shelbyville	Jail	Kentucky	0	1
DBAF41A3	Simpson	Simpson County jail	Franklin	Jail	Kentucky	46	7
AD3C6B92	Taylor	Taylor County jail	Campbellsville	Jail	Kentucky	15	1
43119EC1	Lee	Three Forks jail	Beattyville	Jail	Kentucky	5	2
0DE8C831	Warren	Warren County Regional Jail	Bowling Green	Jail	Kentucky	321	16
19CAA4EC	Wayne	Wayne County jail	Monticello	Jail	Kentucky	65	10
A4ABAB57	Webster	Webster County jail	Dixon	Jail	Kentucky	45	1
9447110D	Whitley	Whitley County jail	Williamsburg	Jail	Kentucky	8	3
D3B32272	Woodford	Woodford County jail	Versailles	Jail	Kentucky	8	4
8945535	Bienville	Bienville Parish jail	Arcadia	Jail	Louisiana	18	3
8A25FD81	East Baton Rouge	East Baton Rouge Parish jail	Baton Rouge	Jail	Louisiana	95	57
901D528E	Iberville	Iberville Parish jail	Plaquemine	Jail	Louisiana	1	0
F54533A9	Lafayette	Lafayette Parish jail	Lafayette	Jail	Louisiana	196	0
D871DF5F	Livingston	Livingston Parish jail	Livingston	Jail	Louisiana	166	26
CD75E5A6	Orleans	Orleans Parish jails	New Orleans	Jail	Louisiana	358	103
BB16D409	St. Charles	Saint Charles Parish jail	Killona	Jail	Louisiana	218	24
C6FF21D0	St. Landry	Saint Landry Parish jail	Opelousas	Jail	Louisiana	10	0
638E975F	St. Tammany	Saint Tammany Parish jail	Covington	Jail	Louisiana	141	0
FC7955B3	Vermilion	Vermilion Parish jail	Abbeville	Jail	Louisiana	101	13
60E02CD8	Penobscot	Penobscot County Jail	Bangor	Jail	Maine	14	12
0FBDF4C2	York	York County Jail	Alfred	Jail	Maine	52	21
B0388EEF	Allegany	Allegany County jail	Cumberland	Jail	Maryland	49	30
0F4B496B	Anne Arundel	Jennifer Road jail	Annapolis	Jail	Maryland	16	36
3C6D19FD	Anne Arundel	Ordnance Road jail	Glen Burnie	Jail	Maryland	75	44
2B92AA2D	Baltimore City	Baltimore Central Booking and Intake Center	Baltimore	Jail	Maryland	295	261
E8CB3F20	Baltimore	Baltimore County jail	Towson	Jail	Maryland	78	81
CE2D0407	Caroline	Caroline County jail	Denton	Jail	Maryland	2	11
B4F55102	Carroll	Carroll County jail	Westminster	Jail	Maryland	19	11
4EC10BC5	Cecil	Cecil County jail	Elkton	Jail	Maryland	120	29
4.88E+59	Charles	Charles County jail	La Plata	Jail	Maryland	1	3
60616C7D	Frederick	Frederick County jail	Frederick	Jail	Maryland	22	10
C43BBD11	Harford	Harford County jail	Bel Air	Jail	Maryland	19	14
D3F190EB	Howard	Howard County jail	Jessup	Jail	Maryland	41	22
5E1150B3	Kent	Kent County jail	Chestertown	Jail	Maryland	1	3
95298347	Prince George's	Prince George's County jail	Upper Marlboro	Jail	Maryland	36	121
42021CEB	Somerset	Somerset County jail	Westover	Jail	Maryland	0	0
A7743B01	St. Mary's	Saint Mary's County jail	Leonardtown	Jail	Maryland	2	5
85529F43	Talbot	Talbot County jail	Easton	Jail	Maryland	1	1
C0A85CA9	Washington	Washington County jail	Hagerstown	Jail	Maryland	159	41
9B66B2A2	Wicomico	Wicomico County jail	Salisbury	Jail	Maryland	14	6
7FD1F30D	Worcester	Worcester County Jail	Snow Hill	Jail	Maryland	36	50
2F123B2F	Barnstable	Barnstable County jail	Bourne	Jail	Massachusetts	0	10
1F3FBE73	Berkshire	Berkshire County jail	Pittsfield	Jail	Massachusetts	1	17
54DB726C	Bristol	Ash Street jail	New Bedford	Jail	Massachusetts	4	15
6884879E	Essex	Women in Transition treatment center	Salisbury	Jail	Massachusetts	5	0
110483C6	Franklin	Franklin County jail	Greenfield	Jail	Massachusetts	12	10
5D402915	Hampden	Hampden County jail	Ludlow	Jail	Massachusetts	268	98
AED1FAF2	Hampden	Western Massachusetts Regional Women's jail	Chicopee	Jail	Massachusetts	2	23
A385C9A1	Hampden	Mill Street treatment center	Springfield	Jail	Massachusetts	17	10
29ACE902	Hampshire	Hampshire County jail	Northampton	Jail	Massachusetts	21	6
2ACF12E2	Middlesex	Middlesex jail	Billerica	Jail	Massachusetts	75	88
50AD74FE	Norfolk	Norfolk County jail	Dedham	Jail	Massachusetts	223	48
F1B13E47	Plymouth	Plymouth County jail	Plymouth	Jail	Massachusetts	211	127
A41E230B	Suffolk	Nashua Street Jail	Boston	Jail	Massachusetts	70	43
834DE23F	Worcester	Worcester County jail	West Boylston	Jail	Massachusetts	61	59
61888F71	Calhoun	Calhoun County Jail	Battle Creek	Jail	Michigan	114	28
CB70F2BE	Genesee	Genesee County Jail	Flint	Jail	Michigan	178	55
27782471	Ingham	Ingham County jail	Mason	Jail	Michigan	138	20
30054C8E	Kent	Kent County Jail	Grand Rapids	Jail	Michigan	79	0
8CC113C3	Macomb	Macomb County jail	Mount Clemens	Jail	Michigan	143	0
9730BB7F	Oakland	Oakland County Jail	Pontiac	Jail	Michigan	151	60
78B03B59	Saginaw	Saginaw County Jail	Saginaw	Jail	Michigan	73	17
76A79C3B	Sanilac	Sanilac County Jail	Sandusky	Jail	Michigan	15	12
FA0199D6	Tuscola	Tuscola County Jail	Caro	Jail	Michigan	12	0
E12ABE9E	Wayne	Wayne County jails	Detroit	Jail	Michigan	102	226
59AB1BD0	Washtenaw	Washtenaw County Jail	Ann Arbor	Jail	Michigan	0	0
D652A23E	Grand Traverse	Grand Traverse County jail	Traverse City	Jail	Michigan	6	9
36824199	Hennepin	Hennepin County jail	Minneapolis	Jail	Minnesota	359	0
4FC6DEA5	Kandiyohi	Kandiyohi County Jail	Willmar	Jail	Minnesota	79	29
E54CE229	Ramsey	Ramsey County jails	Saint Paul	Jail	Minnesota	72	0
26EE3775	DeSoto	DeSoto County jail	Hernando	Jail	Mississippi	56	0
4F5C9DA6	Harrison	Harrison County jail	Gulfport	Jail	Mississippi	106	32
278B24D9	Jackson	Jackson County jail	Pascagoula	Jail	Mississippi	20	0
8F85D441	Hinds	Hinds County jail	Raymond	Jail	Mississippi	36	82
C729D450	Audrain	Audrain County jail	Mexico	Jail	Missouri	1	3
1F1B2834	Boone	Boone County jail	Columbia	Jail	Missouri	46	10
A04FB960	Cooper	Cooper County jail	Boonville	Jail	Missouri	1	4
67D02D04	Greene	Greene County jail	Springfield	Jail	Missouri	159	124
7981DA79	Jackson	Jackson County jail	Kansas City	Jail	Missouri	107	25
866239BF	Jefferson	Jefferson County jail	Hillsboro	Jail	Missouri	34	26
9F5CAEDE	Newton	Newton County jail	Neosho	Jail	Missouri	6	2
321C2E49	Ray	Ray County jail	Henrietta	Jail	Missouri	4	3
B1DEE371	St. Clair	Saint Clair County jail	Osceola	Jail	Missouri	51	12
1078B69B	St. Louis City	Saint Louis city jails	Saint Louis	Jail	Missouri	83	0
32BD09D6	St. Louis	Saint Louis County jail	Clayton	Jail	Missouri	119	17
02B82F40	Big Horn	Big Horn County jail	Billings	Jail	Montana	33	0
3CF54413	Cascade	Cascade County Detention Facility	Great Falls	Jail	Montana	307	37
05D3813B	Lewis and Clark	Lewis and Clark County Jail	Helena	Jail	Montana	26	58
31D13690	Missoula	Missoula County jail	Missoula	Jail	Montana	38	3
1024F58D	Yellowstone	Yellowstone County Detention Facility	Billings	Jail	Montana	108	23
22227027	Douglas	Douglas County Youth Center	Omaha	Juvenile detention at jail	Nebraska	6	42
4F25F2DE	Lancaster	Lancaster County jail	Lincoln	Jail	Nebraska	36	37
C891199D	Scotts Bluff	Scotts Bluff County Jail	Gering	Jail	Nebraska	113	47
9449C982	Elko	Elko County jail	Elko	Jail	Nevada	47	10
D71154C7	Clark	Clark County jail	Las Vegas	Jail	Nevada	1089	339
622D46CD	Clark	Las Vegas jail	Las Vegas	Jail	Nevada	138	40
2729C2CE	Nye	Pahrump jail	Pahrump	Jail	Nevada	109	0
1E27A71B	Nye	Tonopah jail	Tonopah	Jail	Nevada	8	0
EEDE97E0	Washoe	Washoe County jail	Reno	Jail	Nevada	162	0
E2E17E9E	Hillsborough	Valley Street Jail	Manchester	Jail	New Hampshire	108	42
528049F3	Rockingham	Rockingham County Jail	Brentwood	Jail	New Hampshire	22	8
EE470EAB	Strafford	Strafford County House of Corrections	Dover	Jail	New Hampshire	126	22
BBDF0880	Burlington	Burlington County Jail	Mount Holly	Jail	New Jersey	15	69
709F2EB9	Camden	Camden County jail	Camden	Jail	New Jersey	138	134
253167CE	Cumberland	Cumberland County Jail	Bridgeton	Jail	New Jersey	72	41
3BD5A8BD	Mercer	Mercer County jail	Hopewell Township	Jail	New Jersey	295	86
F7476BB6	Morris	Morris County Correctional Facility	Morristown	Jail	New Jersey	34	47
ED7F80A9	Passaic	Passaic County Jail	Paterson	Jail	New Jersey	340	128
A8B6A479	Bernalillo	Metropolitan Detention Center	Albuquerque	Jail	New Mexico	911	209
F76B8029	Bernalillo	Bernalillo County Youth Services Center	Albuquerque	Juvenile detention at jail	New Mexico	17	8
83D260E8	Catron	Catron County Detention Center	Reserve	Jail	New Mexico	0	0
AE89E836	Chaves	Chaves County Detention Center	Roswell	Jail	New Mexico	110	62
FD505E89	Curry	Curry County Adult Detention Centers	Clovis	Jail	New Mexico	131	9
BA34E490	De Baca	De Baca County Detention Center	Fort Sumner	Jail	New Mexico	3	0
64FEC46E	Dona Ana	Doña Ana County Adult Detention Center	Las Cruces	Jail	New Mexico	507	84
6E249DA1	Dona Ana	Doña Ana County Juvenile Detention Center	Las Cruces	Juvenile detention at jail	New Mexico	7	0
83021DBC	Eddy	Eddy County Detention Center	Carlsbad	Jail	New Mexico	59	23
302377B9	Grant	Grant County Detention Center	Silver City	Jail	New Mexico	21	5
00D4079A	Hidalgo	Hidalgo County Detention Center	Lordsburg	Jail	New Mexico	30	5
33F328C3	Dona Ana	J. Paul Taylor Youth Center	Las Cruces	Jail	New Mexico	0	3
2ECC5B0E	Lea	Lea County Detention Center	Lovington	Jail	New Mexico	16	28
6B9286FF	Lea	Lea County Juvenile Detention	Lovington	Juvenile detention at jail	New Mexico	3	0
D8E614ED	Lincoln	Lincoln County Detention Center	Carrizozo	Jail	New Mexico	80	21
D1BB36E4	Los Alamos	Los Alamos jail	Los Alamos	Jail	New Mexico	0	2
828C21C4	Luna	Luna County Detention Center	Deming	Jail	New Mexico	180	19
286CC98D	McKinley	McKinley County Adult Detention Center	Gallup	Jail	New Mexico	94	17
D7868075	Cibola	Pueblo of Acoma Detention Center	Acoma	Jail	New Mexico	0	1
26FC8AE0	Quay	Quay County Detention Center	Tucumcari	Jail	New Mexico	2	2
5637510A	Rio Arriba	Rio Arriba County Detention Center	Amarilla	Jail	New Mexico	5	1
7A54D8D5	Roosevelt	Roosevelt County Detention Center	Portales	Jail	New Mexico	6	9
5D9E65D1	San Juan	San Juan County Detention Center	Farmington	Jail	New Mexico	667	58
9F6CCB73	San Juan	San Juan County Alternative Sentencing	Farmington	Jail	New Mexico	7	4
F8600B9D	San Juan	San Juan County Juvenile Services Center	Farmington	Juvenile detention at jail	New Mexico	8	5
5C787679	San Miguel	San Miguel County Detention Center	Las Vegas	Jail	New Mexico	12	0
AFBDA5C0	Sandoval	Sandoval County Jail	Bernalillo	Jail	New Mexico	46	30
66748294	Santa Fe	Santa Fe County Adult Correctional Facility	Santa Fe	Jail	New Mexico	94	56
5943EFF9	Sierra	Sierra County Detention Facility	Truth or Consequences	Jail	New Mexico	0	5
EBA70C58	Socorro	Socorro County Detention Center	Socorro	Jail	New Mexico	1	1
19DBF5D5	Taos	Taos County Adult Detention Center	Taos	Jail	New Mexico	24	2
56DAFE2B	Valencia	Valencia County Adult Detention Center	Los Lunas	Jail	New Mexico	112	15
2E291D42	Colfax	Vigil-Maldonado Detention Center	Raton	Jail	New Mexico	2	2
C2EA1242	Albany	Albany County jail	Albany	Jail	New York	138	104
F9BA5908	Broome	Broome County jail	Binghamton	Jail	New York	65	43
6BEFCD18	Cattaraugus	Cattaraugus County Jail	Little Valley	Jail	New York	67	19
1A99AE4C	Cayuga	Cayuga County Jail	Auburn	Jail	New York	30	9
69FF22B1	Chautauqua	Chautauqua County Jail	Mayville	Jail	New York	91	25
B7E58B37	Chemung	Chemung County Jail	Elmira	Jail	New York	8	16
3479E80F	Dutchess	Dutchess County Jail	Poughkeepsie	Jail	New York	17	62
C004A47E	Erie	Erie County jail	Alden	Jail	New York	200	0
45680E2E	Monroe	Monroe County Jail	Rochester	Jail	New York	434	171
698AAF61	Monroe	Monroe County Children's Center	Rush	Juvenile detention at jail	New York	6	9
A6835E36	Nassau	Nassau County jail	East Meadow	Jail	New York	166	317
916F73DE	New York	New York City jails	New York City	Jail	New York	577	1718
AB8A166F	Niagara	Niagara County jail	Lockport	Jail	New York	122	29
5C6A8388	Oneida	Oneida County jail	Oriskany	Jail	New York	15	44
E0019257	Onondaga	Onondaga County jail	Syracuse	Jail	New York	136	78
4BD789D7	Oswego	Oswego County jail	Oswego	Jail	New York	19	17
7DD8E1A0	Schenectady	Schenectady County jail	Schenecdaty	Jail	New York	16	55
56CD7934	Steuben	Steuben County Jail	Bath	Jail	New York	36	0
A5193DFA	Suffolk	Suffolk County jails	Riverhead	Jail	New York	52	148
52484DBB	Sullivan	Sullivan County Jail	Monticello	Jail	New York	32	14
74127F0E	Ulster	Ulster County Jail	Kingston	Jail	New York	25	33
DCF62258	Westchester	Westchester County jail	Valhalla	Jail	New York	94	233
15D941B6	Wyoming	Wyoming County Jail	Warsaw	Jail	New York	15	17
443C797F	Alamance	Alamance County Detention Center	Graham	Jail	North Carolina	198	18
B69ED108	Avery	Avery County Detention Center	Newland	Jail	North Carolina	2	0
40766041	Beaufort	Beaufort County Detention Center	Washington	Jail	North Carolina	22	4
DBCC9E54	Bladen	Bladen County Detention Center	Elizabethtown	Jail	North Carolina	8	7
FC8211ED	Brunswick	Brunswick County Detention Center	Bolivia	Jail	North Carolina	0	3
F97408B8	Buncombe	Buncombe County Detention Facility	Asheville	Jail	North Carolina	9	30
8EC50F9A	Caldwell	Caldwell County Detention Center	Lenoir	Jail	North Carolina	2	3
FD8EC816	Carteret	Carteret County Detention Center	Beaufort	Jail	North Carolina	8	9
D04BE034	Catawba	Catawba County Detention Facility	Newton	Jail	North Carolina	18	31
FC00291B	Cherokee	Cherokee County Detention Center	Murphy	Jail	North Carolina	29	6
593A801D	Cleveland	Cleveland County Detention Center	Shelby	Jail	North Carolina	30	3
D02D726D	Cleveland	Cleveland County Jail Annex	Shelby	Jail	North Carolina	17	5
4B9C7F25	Columbus	Columbus County Detention Center	Whiteville	Jail	North Carolina	4	3
AE24CE44	Craven	Craven County Jail	New Bern	Jail	North Carolina	38	6
2E76F5A7	Cumberland	Cumberland County Jail	Fayetteville	Jail	North Carolina	128	13
15F205CA	Davidson	Davidson County Jail	Lexington	Jail	North Carolina	5	3
666F4E66	Dare	Dare County Detention Center	Manteo	Jail	North Carolina	10	12
4091A06C	Duplin	Duplin County Jail	Kenansville	Jail	North Carolina	8	16
D7584334	Durham	Durham County jail	Durham	Jail	North Carolina	40	20
110AA621	Edgecombe	Edgecombe County jail	Tarboro	Jail	North Carolina	43	8
8C478262	Edgecombe	Edgecombe Youth Development Center	Rocky Mount	Jail	North Carolina	0	2
5065E569	Forsyth	Forsyth County Detention Center	Winston-Salem	Jail	North Carolina	263	54
F34AA7A1	Franklin	Franklin County jail	Louisburg	Jail	North Carolina	34	9
9EB0C527	Gaston	Gaston County Jail	Gastonia	Jail	North Carolina	56	7
77F7D8D8	Halifax	Halifax County Detention Center	Halifax	Jail	North Carolina	24	0
31920875	Harnett	Harnett County Detention Center	Lillington	Jail	North Carolina	95	5
93705115	Haywood	Haywood County Detention Center	Waynesville	Jail	North Carolina	8	0
5DC8ECCA	Iredell	Iredell County Jail	Statesville	Jail	North Carolina	9	11
BC7012A2	Johnston	Johnston County Jail	Smithfield	Jail	North Carolina	5	18
F6EC532C	Lee	Lee County Jail	Sanford	Jail	North Carolina	6	0
B210C59E	Lincoln	Lincoln County Detention Center	Lincolnton	Jail	North Carolina	4	7
C9CCD142	McDowell	McDowell County Jail	Marion	Jail	North Carolina	27	10
34BFFD96	Mecklenburg	Mecklenburg County jail	Charlotte	Jail	North Carolina	463	171
9A218C6F	Montgomery	Montgomery County Jail	Troy	Jail	North Carolina	23	7
5B0AC9BD	Moore	Moore County Detention Center	Carthage	Jail	North Carolina	13	17
C8A50BA6	Nash	Nash County Detention Center	Nashville	Jail	North Carolina	63	5
32F595B1	New Hanover	New Hanover County Detention Facility	Castle Hayne	Jail	North Carolina	50	51
34F55017	Onslow	Onslow County Detention Center	Jacksonville	Jail	North Carolina	34	25
3B01B98A	Orange	Orange County Detention Center	Hillsborough	Jail	North Carolina	1	3
4BD44BBF	Pamlico	Pamlico County Detention Center	Bayboro	Jail	North Carolina	0	3
100CDA4B	Pasquotank	Albemarle District Jail	Elizabeth City	Jail	North Carolina	6	6
8C3F4B01	Pender	Pender County Jail	Burgaw	Jail	North Carolina	25	0
7A3B8F6E	Pitt	Pitt County Detention Center	Greenville	Jail	North Carolina	37	15
63951F10	Randolph	Randolph County Detention Center	Asheboro	Jail	North Carolina	101	26
AEE533B0	Robeson	Robeson County Detention Center	Lumberton	Jail	North Carolina	39	14
97D89C40	Rowan	Rowan County Detention Center	Salisbury	Jail	North Carolina	26	15
D788F2F0	Rutherford	Rutherford County Jail	Rutherfordton	Jail	North Carolina	35	8
A5833D3B	Sampson	Sampson County Jail	Clinton	Jail	North Carolina	2	6
2202119	Scotland	Scotland County Jail	Laurinburg	Jail	North Carolina	11	1
B9EDFA00	Stanly	Stanly County Detention Center	Albemarle	Jail	North Carolina	9	7
8601AEE6	Stokes	Stokes County Jail	Danbury	Jail	North Carolina	26	6
0F728C5E	Surry	Surry County Jail	Dobson	Jail	North Carolina	84	11
8D825362	Swain	Eastern Band of Cherokee Indians Justice Center	Cherokee	Jail	North Carolina	5	8
1347273	Swain	Swain County Jail	Bryson City	Jail	North Carolina	0	7
392DED7F	Union	Union County Jail	Monroe	Jail	North Carolina	31	9
C75A68C0	Vance	Vance County Detention Center	Henderson	Jail	North Carolina	0	3
4CF62C02	Wake	Baker jail	Raleigh	Jail	North Carolina	56	11
92FEF28B	Wake	Wake County Detention Center	Raleigh	Jail	North Carolina	126	50
56A41E7B	Washington	Washington County Jail	Plymouth	Jail	North Carolina	6	8
696C7332	Wayne	Wayne County Detention Center	Goldsboro	Jail	North Carolina	18	1
66C48DEE	Wilkes	Wilkes County Jail	Wilkesboro	Jail	North Carolina	15	7
85B60305	Yancey	Yancey County Detention Center	Burnsville	Jail	North Carolina	2	8
AE9EE928	Cass	Cass County Jail	Fargo	Jail	North Dakota	63	22
C7FACC2D	Grand Forks	Grand Forks jail	Grand Forks	Jail	North Dakota	146	27
3D8473BA	Adams	Adams County jail	West Union	Jail	Ohio	0	1
5FFA83DE	Allen	Allen County jail	Lima	Jail	Ohio	5	3
BCFCEC84	Ashland	Ashland County jail	Ashland	Jail	Ohio	0	1
BDF8A3B0	Ashtabula	Ashtabula County jail	Jefferson	Jail	Ohio	1	5
C215EC37	Auglaize	Auglaize County jail	Wapakoneta	Jail	Ohio	0	2
C43F6F73	Cuyahoga	Bay Village City Jail	Bay Village	Jail	Ohio	0	2
4DAE09CD	Belmont	Belmont County jail	Saint Clairsville	Jail	Ohio	4	5
47D26F8C	Cuyahoga	Brook Park city jail	Brook Park	Jail	Ohio	0	1
C6FFEC13	Cuyahoga	Brooklyn city jail	Brooklyn	Jail	Ohio	1	1
B3447AE4	Brown	Brown County jail	Georgetown	Jail	Ohio	6	4
361B8437	Butler	Butler County jail	Hamilton	Jail	Ohio	13	7
9A43A1F5	Carroll	Carroll County jail	Carrollton	Jail	Ohio	2	1
46F30B40	Clark	Clark County jail	Springfield	Jail	Ohio	23	3
8F60AE84	Clermont	Clermont County jail	Batavia	Jail	Ohio	7	2
C2ACBB2A	Cuyahoga	Cleveland Heights city jail	Cleveland Heights	Jail	Ohio	0	3
E32E4DC8	Clinton	Clinton County jail	Wilmington	Jail	Ohio	5	1
A2856C75	Columbiana	Columbiana County jail	Lisbon	Jail	Ohio	46	20
4101344C	Williams	Corrections Center of Northwest Ohio	Stryker	Jail	Ohio	17	10
4B9F994D	Coshocton	Coshocton County jail	Coshocton	Jail	Ohio	3	2
085BD84E	Crawford	Crawford County jail	Bucyrus	Jail	Ohio	0	1
58DD6FCB	Cuyahoga	Cuyahoga County jail	Cleveland	Jail	Ohio	871	152
8FA58C0F	Summit	Cuyahoga Falls city jail	Cuyahoga Falls	Jail	Ohio	0	1
FE9BEE35	Darke	Darke County jail	Greenville	Jail	Ohio	0	1
6761615	Delaware	Delaware County jail	Delaware	Jail	Ohio	3	7
0CBAC18E	Cuyahoga	East Cleveland jail	East Cleveland	Jail	Ohio	1	0
2.71E+09	Lake	Eastlake jail	Eastlake	Jail	Ohio	0	3
A0BC12FB	Erie	Erie County Jail	Sandusky	Jail	Ohio	2	4
F4679871	Greene	Fairborn jail	Fairborn	Jail	Ohio	0	1
D195BA89	Fairfield	Fairfield County jail	Lancaster	Jail	Ohio	5	2
22DDF499	Cuyahoga	Fairview Parkjail	Fairview Park	Jail	Ohio	0	2
3A18DA12	Fayette	Fayette County jail	Washington Court House	Jail	Ohio	16	14
36C0169B	Franklin	Franklin County jail I	Columbus	Jail	Ohio	0	0
90B611D9	Franklin	Franklin County jail II	Columbus	Jail	Ohio	0	0
A300CD7E	Gallia	Gallia County jail	Gallipolis	Jail	Ohio	12	0
83C964D6	Geauga	Geauga County jail	Chardon	Jail	Ohio	18	3
0EEE25E1	Ashtabula	Geneva city jail	Geneva	Jail	Ohio	0	1
882D1ED7	Greene	Greene County jail	Xenia	Jail	Ohio	8	5
331B3FD8	Hancock	Hancock County jail	Findlay	Jail	Ohio	1	1
BF5EA95D	Harrison	Harrison County jail	Cadiz	Jail	Ohio	0	1
14F73000	Highland	Highland County Jail	Hillsboro	Jail	Ohio	1	1
6B517A19	Cuyahoga	Highland Heights city jail	Highland Heights	Jail	Ohio	0	1
28747027	Holmes	Holmes County jail	Holmesville	Jail	Ohio	0	3
CED49489	Huron	Huron County jail	Norwalk	Jail	Ohio	0	2
6809294D	Jackson	Jackson County jail	Jackson	Jail	Ohio	2	5
03B53178	Jefferson	Jefferson County jail	Steubenville	Jail	Ohio	1	2
87105FCD	Portage	Kent City jail	Kent	Jail	Ohio	0	1
F18E81DB	Knox	Knox County jail	Mount Vernon	Jail	Ohio	0	8
686B3CA1	Lake	Lake County jail	Painesville	Jail	Ohio	10	16
4085283A	Cuyahoga	Lakewood city jail	Lakewood	Jail	Ohio	2	11
7498F912	Lawrence	Lawrence County jail	Ironton	Jail	Ohio	10	4
3703B437	Licking	Licking County jail	Newark	Jail	Ohio	1	2
022298A8	Logan	Logan County jail	Bellefontaine	Jail	Ohio	0	3
F397D6D3	Lorain	Lorain County jail	Elyria	Jail	Ohio	7	13
6D181BD3	Lucas	Lucas County jail	Toledo	Jail	Ohio	29	127
13970373	Cuyahoga	Lyndhurst city jail	Lyndhurst	Jail	Ohio	0	6
D44C5A4F	Summit	Macedonia city jail	Macedonia	Jail	Ohio	0	1
769309DE	Mahoning	Mahoning County jail	Youngstown	Jail	Ohio	6	8
EDA679B1	Cuyahoga	Mayfield Heights city jail	Mayfield Heights	Jail	Ohio	0	3
C9FA52DF	Medina	Medina County jail	Medina	Jail	Ohio	31	25
E0B9DB8C	Mercer	Mercer County jail	Celina	Jail	Ohio	0	1
6032B3F1	Miami	Miami County Jail	Troy	Jail	Ohio	1	3
988E95F8	Meigs	Middleport village jail	Middleport	Jail	Ohio	0	2
47F90EA7	Butler	Middletown city jail	Middletown	Jail	Ohio	0	1
5991C525	Monroe	Monroe County Jail	Woodsfield	Jail	Ohio	17	4
DEBF2F87	Montgomery	Montgomery County jail	Dayton	Jail	Ohio	143	53
86649EFF	Marion	Multi-County Correctional Center	Marion	Jail	Ohio	15	2
25C40327	Muskingum	Muskingum County jail	Zanesville	Jail	Ohio	11	3
033E5AA5	Tuscarawas	Newcomerstown city jail	Newcomerstown	Jail	Ohio	0	3
899BD2F7	Cuyahoga	North Olmsted city jail	North Olmsted	Jail	Ohio	0	2
4FA3E322	Cuyahoga	North Royalton city jail	North Royalton	Jail	Ohio	0	1
CE2CA9CD	Ottawa	Ottawa County jail	Port Clinton	Jail	Ohio	0	1
1A960E48	Cuyahoga	Parma city jail	Parma	Jail	Ohio	1	1
46BD80AA	Pickaway	Pickaway County jail	Circleville	Jail	Ohio	0	2
8A2FA194	Portage	Portage County jail	Ravenna	Jail	Ohio	75	10
CE4D2676	Preble	Preble County jail	Eaton	Jail	Ohio	1	4
370180A3	Putnam	Putnam County jail	Ottawa	Jail	Ohio	0	3
05FE1446	Summit	Richfield city jail	Richfield	Jail	Ohio	0	1
11963863	Richland	Richland County jail	Mansfield	Jail	Ohio	5	12
797C3EB9	Ross	Ross County jail	Chillicothe	Jail	Ohio	3	3
4ADEFCCC	Sandusky	Sandusky County jail	Fremont	Jail	Ohio	1	1
2F0F3BDA	Scioto	Scioto County jail	Portsmouth	Jail	Ohio	1	1
DCBAC919	Seneca	Seneca County jail	Tiffin	Jail	Ohio	67	12
D5C20240	Lorain	Sheffield Lake city jail	Sheffield Lake	Jail	Ohio	0	1
A67D1507	Richland	Shelby city jail	Shelby	Jail	Ohio	0	1
F91763E1	Shelby	Shelby County jail	Sidney	Jail	Ohio	0	2
839E29B1	Athens	Southeastern Ohio Regional Jail	Nelsonville	Jail	Ohio	21	2
0C5D5DFB	Cuyahoga	South Euclid jail	South Euclid	Jail	Ohio	0	2
4363E9A7	Stark	Stark County jail	Canton	Jail	Ohio	78	13
F1555C57	Summit	Stow jail	Stow	Jail	Ohio	0	1
A20747DC	Cuyahoga	Strongsville jail	Strongsville	Jail	Ohio	1	3
78C64711	Summit	Summit County jail	Akron	Jail	Ohio	59	22
43CE274E	Champaign	Tri-County Regional Jail	Mechanicsburg	Jail	Ohio	1	3
92F12931	Trumbull	Trumbull County jail	Warren	Jail	Ohio	1	7
7E72325A	Tuscarawas	Tuscarawas County Jail	New Philadelphia	Jail	Ohio	0	1
6608DB74	Van Wert	Van Wert County jail	Van Wert	Jail	Ohio	1	0
7464CBBE	Warren	Warren County jail	Lebanon	Jail	Ohio	40	31
E810CE57	Washington	Washington County jail	Marietta	Jail	Ohio	48	3
1.48E+09	Wayne	Wayne County jail	Wooster	Jail	Ohio	0	3
3D6F836C	Cuyahoga	Westlake city jail	Westlake	Jail	Ohio	0	2
4466B5A2	Lake	Wickliffe city jail	Wickliffe	Jail	Ohio	0	3
0D368A2D	Lake	Willoughby city jail	Willoughby	Jail	Ohio	0	3
E1676588	Lake	Willowick city jail	Willowick	Jail	Ohio	0	8
29EB1AA4	Wood	Wood County jail	Bowling Green	Jail	Ohio	14	10
E84C5747	Wyandot	Wyandot County jail	Upper Sandusky	Jail	Ohio	0	2
A6B7993E	Muskingum	Zanesville city jail	Zanesville	Jail	Ohio	4	1
969F9D6C	Canadian	Canadian County Detention Center	El Reno	Jail	Oklahoma	78	16
304C4781	Cleveland	Cleveland County Detention Center	Norman	Jail	Oklahoma	197	0
FAD54E14	Comanche	Comanche County Detention Center	Lawton	Jail	Oklahoma	180	25
02AAE98F	Oklahoma	Oklahoma County Jail	Oklahoma City	Jail	Oklahoma	344	21
97E826BC	Ottawa	Ottawa County Detention Center	Miami	Jail	Oklahoma	29	4
249C2818	Muskogee	Muskogee County Jail	Muskogee	Jail	Oklahoma	162	17
A4727822	Tulsa	Tulsa County jail	Tulsa	Jail	Oklahoma	390	6
895B0F3B	Clackamas	Clackamas County Jail	Oregon City	Jail	Oregon	4	10
0D618094	Jackson	Jackson County Jail	Medford	Jail	Oregon	22	3
3A665AE7	Josephine	Josephine County Jail	Grants Pass	Jail	Oregon	45	13
2FE043A1	Lane	Lane County jail	Eugene	Jail	Oregon	128	0
67994980	Lincoln	Lincoln County Jail	Newport	Jail	Oregon	9	1
A5D1A938	Linn	Linn County jail	Albany	Jail	Oregon	2	6
5.00E+51	Malheur	Malheur County Jail	Vale	Jail	Oregon	22	7
5C8423F4	Multnomah	Multnomah County Inverness Jail	Portland	Jail	Oregon	200	25
7D207B03	Multnomah	Multnomah County Justice Center	Portland	Jail	Oregon	15	28
6552CD6B	Umatilla	Umatilla County Jail	Pendleton	Jail	Oregon	18	1
5E746CA5	Allegheny	Allegheny County jail	Pittsburgh	Jail	Pennsylvania	340	129
543C2041	Bedford	Bedford County jail	Bedford	Jail	Pennsylvania	14	12
EA8BF74E	Blair	Blair County jail	Hollidaysburg	Jail	Pennsylvania	224	0
B44C6AC3	Bradford	Bradford County jail	Troy	Jail	Pennsylvania	32	13
7DEE2BA8	Bucks	Bucks County jail	Doylestown	Jail	Pennsylvania	248	95
09FB3D55	Cambria	Cambria County jail	Ebensburg	Jail	Pennsylvania	180	34
71630998	Centre	Centre County jail	Bellefonte	Jail	Pennsylvania	122	27
08A6323D	Huntingdon	Huntingdon County jail	Huntingdon	Jail	Pennsylvania	18	20
4CEFD5E7	Chester	Chester County jail	West Chester	Jail	Pennsylvania	93	48
C5B58EDE	Clearfield	Clearfield County jail	Clearfield	Jail	Pennsylvania	13	7
9B73E9AA	Clinton	Clinton County jail	McElhattan	Jail	Pennsylvania	102	23
B26FBED8	Crawford	Crawford County jail	Saegertown	Jail	Pennsylvania	46	9
50168C88	Dauphin	Dauphin County jail	Harrisburg	Jail	Pennsylvania	337	118
FB0ED113	Delaware	George W. Hill Correctional Facility	Thornton	Jail	Pennsylvania	169	116
5701170E	Erie	Erie County jail	Erie	Jail	Pennsylvania	45	0
05214CF0	Fayette	Fayette County jail	Uniontown	Jail	Pennsylvania	73	20
2F68EC27	Lancaster	Lancaster County jail	Lancaster	Jail	Pennsylvania	378	0
A96759C0	Lehigh	Lehigh County jail	Allentown	Jail	Pennsylvania	321	85
57E0E1E8	Luzerne	Luzerne County jail	Wilkes-Barre	Jail	Pennsylvania	116	103
774F6A2D	Lycoming	Lycoming County jail	Williamsport	Jail	Pennsylvania	107	0
0FE21883	Monroe	Monroe County jail	Stroudsburg	Jail	Pennsylvania	61	39
B4AC88F7	Montgomery	Montgomery County jail	Eagleville	Jail	Pennsylvania	456	162
1.02E+100	Northampton	Northampton County jail	Easton	Jail	Pennsylvania	174	52
D9CD2847	Northumberland	Northumberland County jail	Coal Township	Jail	Pennsylvania	65	32
B740058F	Philadelphia	Philadelphia jails	Philadelphia	Jail	Pennsylvania	1440	0
8C51896C	Schuylkill	Schuylkill County jail	Pottsville	Jail	Pennsylvania	58	12
04424CC4	Snyder	Snyder County jail	Selinsgrove	Jail	Pennsylvania	10	6
C5AB1837	Westmoreland	Westmoreland County jail	Greensburg	Jail	Pennsylvania	393	41
1B409C57	Wayne	Wayne County jail	Honesdale	Jail	Pennsylvania	3	6
10248980	Providence	Donald W. Wyatt Detention Facility	Central Falls	Jail	Rhode Island	156	42
BD8CF2C7	Aiken	Aiken County Detention Center	Aiken	Jail	South Carolina	75	15
D210F200	Charleston	Charleston County jail	North Charleston	Jail	South Carolina	198	65
29A78788	Cherokee	Cherokee County Detention Center	Gaffney	Jail	South Carolina	9	17
B5689C96	Greenville	Greenville County Detention Center	Greenville	Jail	South Carolina	216	147
50419211	Horry	J. Reuben Long Detention Center	Conway	Jail	South Carolina	175	76
0C51A186	Lexington	Lexington County Detention Center	Lexington	Jail	South Carolina	62	35
6F12242D	Orangeburg	Orangeburg-Calhoun Regional Detention Center	Orangeburg	Jail	South Carolina	43	16
C7BE42D3	Richland	Alvin S. Glenn Detention Center	Columbia	Jail	South Carolina	107	52
11C75651	Sumter	Sumter-Lee Regional Detention Center	Sumter	Jail	South Carolina	9	27
FFA4DDF9	York	York County Detention Center	York	Jail	South Carolina	79	24
2F03526B	Minnehaha	Minnehaha County jail	Sioux Falls	Jail	South Dakota	50	44
83685783	Pennington	Pennington County jail	Rapid City	Jail	South Dakota	71	56
AAB28820	Blount	Blount County jail	Maryville	Jail	Tennessee	141	0
02EC1E1A	Bradley	Bradley County jail	Cleveland	Jail	Tennessee	55	32
FC2FFD91	Davidson	Davidson County jails	Nashville	Jail	Tennessee	390	205
3BFEE581	Hamblen	Hamblen County Jail	Morristown	Jail	Tennessee	106	0
EC444A2E	Hamilton	Silverdale Detention Center	Chattanooga	Jail	Tennessee	0	35
87B0E306	Knox	Knox County jails	Knoxville	Jail	Tennessee	129	0
0C550AA0	Madison	Madison County Jails	Jackson	Jail	Tennessee	143	35
F153F132	Montgomery	Montgomery County Jail	Clarksville	Jail	Tennessee	30	0
36238124	Morgan	Morgan County Jail	Wartburg	Jail	Tennessee	36	16
C81CA46E	Rutherford	Rutherford County Jail	Murfreesboro	Jail	Tennessee	124	45
BBAF1056	Robertson	Robertson County Detention Facility	Springfield	Jail	Tennessee	124	0
C36DFC1E	Sevier	Sevier County jails	Sevierville	Jail	Tennessee	37	27
4F826FA5	Shelby	Shelby County jails	Memphis	Jail	Tennessee	288	353
B4DE4260	Stewart	Stewart County Jail	Dover	Jail	Tennessee	28	4
C8BAEDF7	Wilson	Wilson County Jail	Lebanon	Jail	Tennessee	92	38
E750277F	Angelina	Angelina County Jail	Lufkin	Jail	Texas	15	8
D032628B	Aransas	Aransas County Detention Center	Rockport	Jail	Texas	12	0
E1022698	Bee	Bee County Jail	Beeville	Jail	Texas	7	6
E8F839DD	Bell	Bell County Jail	Belton	Jail	Texas	6	11
3B748533	Bexar	Bexar County jail	San Antonio	Jail	Texas	1294	349
1E462FEA	Miller	Bowie County jail	Texarkana	Jail	Texas	30	54
7BA043C6	Brazoria	Brazoria County Jail	Angleton	Jail	Texas	203	19
C9E1058B	Brazos	Brazos County jail	Bryan	Jail	Texas	139	48
74897FDB	Cameron	Carrizales-Rucker Cameron County Detention Center	Olmito	Jail	Texas	456	85
11C71056	Cameron	Old County Jail	Brownsville	Jail	Texas	40	12
DA0DE793	Cameron	Detention Center 1 and 2	Brownsville	Jail	Texas	95	24
7AC1375B	Collin	Collin County Jail	McKinney	Jail	Texas	193	77
AFAE49D2	Cooke	Cooke County Jail	Gainesville	Jail	Texas	5	5
336DE855	Dallas	Dallas County jail	Dallas	Jail	Texas	1074	45
B4D70E23	Denton	Denton County jail	Denton	Jail	Texas	214	134
10A2F4F6	Ector	Ector County Detention Center	Odessa	Jail	Texas	82	59
F6A47B28	El Paso	El Paso County jails	El Paso	Jail	Texas	1158	187
075AD54B	Ellis	Ellis County jail	Waxahachie	Jail	Texas	35	33
33BE2F9F	Fannin	Fannin County jail	Bonham	Jail	Texas	22	29
F7DE0193	Fort Bend	Fort Bend County Jail	Richmond	Jail	Texas	133	70
E82BA9DE	Galveston	Galveston County Jail	Galveston	Jail	Texas	116	54
AFEE64B1	Gregg	Gregg County jail	Longview	Jail	Texas	223	133
45CAF6E8	Guadalupe	Guadalupe County jail	Seguin	Jail	Texas	23	27
03FF5BD9	Hale	Hale County Jail	Plainview	Jail	Texas	2	3
B3321655	Harris	Harris County jail	Houston	Jail	Texas	2609	1196
CB9FE935	Haskell	Haskell County jail	Haskell	Jail	Texas	8	11
936B4EF8	Hays	Hays County Jail	San Marcos	Jail	Texas	148	65
E6B6583C	Henderson	Henderson County Jail	Athens	Jail	Texas	52	12
615FEA57	Hidalgo	Hidalgo County Jail	Edinburg	Jail	Texas	127	98
541A89C5	Hood	Hood County Jail	Granbury	Jail	Texas	12	3
703E7B19	Hunt	Hunt County Jail	Greenville	Jail	Texas	20	0
06EFC1B2	Jackson	Jackson County Jail	Edna	Jail	Texas	16	11
4ECC4BBF	Jefferson	Jefferson County jail	Beaumont	Jail	Texas	459	106
47669390	Jim Wells	Jim Wells County Jail	Alice	Jail	Texas	8	4
4BBE267E	Kleberg	Kleberg County Detention Center	Kingsvillle	Jail	Texas	62	5
2EB6EDA8	Lubbock	Lubbock County Jail	Lubbock	Jail	Texas	188	90
4FD7303B	Matagorda	Matagorda County Jail	Bay City	Jail	Texas	9	2
9E376F14	Maverick	Maverick County Jail	Eagle Pass	Jail	Texas	18	21
30CE2713	McLennan	Highway 6 Jail	Waco	Jail	Texas	154	127
AC9D23F2	McLennan	Jack Harwell Detention Center	Waco	Jail	Texas	105	71
A4A9F0C7	Midland	Midland County Detention Center	Midland	Jail	Texas	105	24
47819C13	Montgomery	Montgomery County jail	Conroe	Jail	Texas	305	55
FDA9F260	Nacogdoches	Nacogdoches County Jail	Nacogdoches	Jail	Texas	140	28
DBF5E3A0	Nueces	Nueces County Jail/McKinzie Jail Annex	Corpus Christi	Jail	Texas	416	114
38086103	Pecos	Pecos County Jail	Fort Stockton	Jail	Texas	12	4
2F9F51BF	Potter	Potter County Detention Center	Amarillo	Jail	Texas	45	44
2CADB487	Smith	Smith County Jails	Tyler	Jail	Texas	406	90
17509760	Tarrant	Tarrant County jails	Fort Worth	Jail	Texas	607	199
FC20ECA6	Taylor	Taylor County Adult Detention Facility	Abilene	Jail	Texas	272	41
6CDA740D	Tom Green	Tom Green County Jail	San Angelo	Jail	Texas	86	26
5BF06AD0	Travis	Travis County jail	Austin	Jail	Texas	323	139
EB8EDEC1	Uvalde	Uvalde County Jail	Uvalde	Jail	Texas	4	1
35CC0465	Val Verde	Val Verde County Jail	Del Rio	Jail	Texas	79	55
2C43EFAF	Victoria	Victoria County Jail	Victoria	Jail	Texas	14	3
3C86CD9A	Wharton	Wharton County Jail	Wharton	Jail	Texas	12	4
1213D175	Wichita	Wichita County jails	Wichita Falls	Jail	Texas	73	57
21EEE1BD	Williamson	Williamson County Jail	Georgetown	Jail	Texas	91	130
7633C391	Box Elder	Box Elder County Jail	Brigham City	Jail	Utah	1	5
1C30B265	Cache	Cache County Jail	Logan	Jail	Utah	77	0
506E3234	Davis	Davis County Jail	Farmington	Jail	Utah	102	19
F4CB2AC9	Kane	Kane County Jail	Kanab	Jail	Utah	156	6
A317AC6B	Salt Lake	Salt Lake County jails	Salt Lake City	Jail	Utah	71	139
691DB75E	San Juan	San Juan County Jail	Monticello	Jail	Utah	0	2
8DE551C0	Summit	Summit County Jail	Park City	Jail	Utah	0	1
460BE318	Accomack	Accomack County Jail	Accomac	Jail	Virginia	15	13
5E872076	Albemarle	Albemarle-Charlottesville Regional Jail	Charlottesville	Jail	Virginia	11	7
B507B4C2	Arlington	Arlington County jail	Arlington	Jail	Virginia	4	36
DF474530	Amherst	Amherst County Adult Detention Center	Madison Heights	Jail	Virginia	127	52
8D0F6C48	Bedford City	Bedford Adult Detention Center	Bedford	Jail	Virginia	34	21
7F7609AA	Campbell	Campbell County Adult Detention Center	Rustburg	Jail	Virginia	45	9
9ACC8099	Halifax	Halifax County Adult Detention Center	Halifax	Jail	Virginia	96	10
31BE5B75	Lynchburg City	Lynchburg Adult Detention Center	Lynchburg	Jail	Virginia	193	26
66EF7B74	Orange	Central Virginia Regional Jail	Orange	Jail	Virginia	60	15
DED9CDCA	Chesapeake City	Chesapeake City jail	Chesapeake	Jail	Virginia	262	82
CDC9A4CA	Chesterfield	Chesterfield County Jail	Chesterfield	Jail	Virginia	115	42
8720504E	Danville City	Danville City Jail	Danville	Jail	Virginia	116	18
CE027883	Fairfax	Fairfax County jail	Fairfax	Jail	Virginia	34	0
D928B51A	Franklin	Franklin County Jail	Rocky Mount	Jail	Virginia	19	15
2E76A6ED	Hampton City	Hampton city jails	Hampton	Jail	Virginia	7	1
23A51770	Portsmouth City	Hampton Roads Regional Jail	Portsmouth	Jail	Virginia	138	34
8C9A0543	New Kent	Henrico County Regional Jail East	Barhamsville	Jail	Virginia	83	10
EDAB7D6F	Henrico	Henrico County Regional Jail West	Henrico	Jail	Virginia	352	73
E903F004	Henry	Henry County Jail	Martinsville	Jail	Virginia	30	11
056987C8	Augusta	Middle River Regional Jail	Staunton	Jail	Virginia	559	75
137D5D9C	Pulaski	New River Valley Regional Jail	Dublin	Jail	Virginia	187	0
8DA8C160	Norfolk City	Norfolk City Jail	Norfolk	Jail	Virginia	68	115
30CCB7C2	Frederick	Northwestern Regional Adult Detention Center	Winchester	Jail	Virginia	375	65
E12300A4	Hanover	Pamunkey Regional Jail	Hanover	Jail	Virginia	289	43
35F25B6E	Prince Edward	Piedmont Regional Jail	Farmville	Jail	Virginia	44	38
AF18C4BA	Prince William	Prince William – Manassas Regional Adult Detention Center	Manassas	Jail	Virginia	120	79
CCA399F7	Stafford	Rappahannock Regional Jail	Stafford	Jail	Virginia	644	77
AA64FF53	Warren	Rappahannock Shenandoah Warren Regional Jail	Front Royal	Jail	Virginia	114	21
D7CC24EE	Richmond City	Richmond jail	Richmond	Jail	Virginia	233	0
6723FF0B	Prince George	Riverside Regional Jail	North Prince George	Jail	Virginia	218	62
06C93AE9	Roanoke City	Roanoke City Jail	Roanoke	Jail	Virginia	167	64
1629DC71	Harrisonburg City	Rockingham-Harrisonburg Regional Jail	Harrisonburg	Jail	Virginia	20	10
4F51680D	Virginia Beach City	Virginia Beach Correctional Center	Virginia Beach	Jail	Virginia	622	72
4E8AD2F9	James City	Virginia Peninsula Regional Jail	Williamsburg	Jail	Virginia	153	19
07EC2A44	Suffolk City	Western Tidewater Regional Jail	Suffolk	Jail	Virginia	237	37
2681CBDE	Roanoke	Western Virginia Regional Jail	Salem	Jail	Virginia	650	52
BA75952C	Clallam	Clallam County Jail	Port Angeles	Jail	Washington	8	0
703F2E86	Clark	Clark County Jail	Vancouver	Jail	Washington	125	22
4957C6C4	King	King County jails	Seattle	Jail	Washington	195	86
FC0C72B0	Lewis	Lewis County Jail	Chehalis	Jail	Washington	12	8
CC9B9349	Okanogan	Okanogan County Jail	Okanogan	Jail	Washington	20	10
B9B3052D	Spokane	Spokane County Detention Services	Spokane	Jail	Washington	188	111
C6E12404	Thurston	Thurston County Jail	Olympia	Jail	Washington	33	9
B98062A4	Walla Walla	Walla Walla County Jail	Walla Walla	Jail	Washington	27	8
6DB36A1F	Whatcom	Whatcom County Jail	Bellingham	Jail	Washington	45	6
B60DDD1C	Yakima	Yakima County jail	Yakima	Jail	Washington	269	81
0C5E80B1	Braxton	Central Regional Jail and Correctional Facility	Suton	Jail	West Virginia	313	0
96C34F73	Berkeley	Eastern Regional Jail and Correctional Facility	Martinsburg	Jail	West Virginia	282	0
7F2376B2	Doddridge	North Central Regional Correctional Facility And Jail	Pennsboro	Jail	West Virginia	107	0
8295691C	Marshall	Northern Regional Jail	Moundsville	Jail	West Virginia	207	0
3A552E1F	Kanawha	South Central Regional Jail and Correctional Facility	Charleston	Jail	West Virginia	102	6
178BBBD3	Raleigh	Southern Regional Jail and Correctional Facility	Beaver	Jail	West Virginia	113	0
5AFF3E1A	Logan	Southwestern Regional Jail and Correctional Facility	Holden	Jail	West Virginia	1	0
051F5339	Randolph	Tygart Valley Regional Jail and Correctional Facility	Belington	Jail	West Virginia	368	0
1E1C0D22	Kanawha	Western Regional Jail and Correctional Facility	Charleston	Jail	West Virginia	241	0
73A5C060	Brown	Brown County jail	Green Bay	Jail	Wisconsin	71	0
024990C2	Dane	Dane County jail	Madison	Jail	Wisconsin	277	37
56B9BD45	Eau Claire	Eau Claire County Jail	Eau Claire	Jail	Wisconsin	28	10
A5C33029	Fond du Lac	Fond Du Lac County Jail	Fond Du Lac	Jail	Wisconsin	27	11
77F7A9D4	Marathon	Marathon County jail	Wausau	Jail	Wisconsin	93	12
AC3C6C58	Milwaukee	Milwaukee County jail	Milwaukee	Jail	Wisconsin	344	72
815B1D8B	Milwaukee	Milwaukee County House of Correction	Franklin	Jail	Wisconsin	344	126
B8EA3E74	Oconto	Oconto County Jail	Oconto	Jail	Wisconsin	0	3
63DCD163	Racine	Racine County jail	Racine	Jail	Wisconsin	88	0
41B53DC5	Rock	Rock County jail	Janesville	Jail	Wisconsin	159	37
BC2E50A4	Sheboygan	Sheboygan County jail	Sheboygan	Jail	Wisconsin	12	9
9E2055EC	Winnebago	Winnebago County Jail	Oshkosh	Jail	Wisconsin	89	6
FD6A11D8	Big Horn	Big Horn County jail	Basin	Jail	Wyoming	1	0
55CFF134	Laramie	Laramie County Detention Center	Cheyenne	Jail	Wyoming	8	17
5EA1106A	Natrona	Natrona County Regional Juvenile Detention Center	Casper	State juvenile detention	Wyoming	1	0
6C623469	Charleston	Charleston County ICE facility	Charleston	Detention center	Georgia	2	0
FC544B4C	Richland	Columbia Regional Care ICE facility	Columbia	Detention center	South Carolina	1	0
98255E1A	Irwin	Irwin County ICE facility	Ocilla	Detention center	Georgia	71	0
C74C93A9	Clayton	Robert A. Deyton ICE facility	Lovejoy	Detention center	Georgia	6	0
10FDDF94	Charleston	Sheriff Al Cannon ICE facility	North Charleston	Detention center	South Carolina	1	0
52F79BC3	Stewart	Stewart ICE facility	Lumpkin	Detention center	Georgia	493	0
C24CB935	Frederick	Frederick County jail	Frederick	Detention center	Maryland	0	0
DBD2274F	Howard	Howard County ICE facility	Jessup	Detention center	Maryland	2	0
6BD91DDD	Worcester	Worcester County ICE facility	Snow Hill	Detention center	Maryland	1	0
C9F8FF63	Plymouth	Plymouth County ICE facility	Plymouth	Detention center	Massachusetts	5	0
BD8F3FD0	Suffolk	Suffolk County House of Corrections	Boston	Detention center	Massachusetts	0	0
3D112DE3	Strafford	Strafford County ICE facility	Dover	Detention center	New Hampshire	20	0
2AB00BF8	Providence	Donald W. Wyatt ICE facility	Central Falls	Detention center	Rhode Island	35	0
546BA938	Albany	Albany County Correctional Facility	Albany	Detention center	New York	0	0
4F6FA143	Allegany	Allegany County Jail	Belmont	Detention center	New York	0	0
0FE09C72	Genesee	Buffalo ICE Service Processing Center	Batavia	Detention center	New York	118	0
618A13CA	Chautauqua	Chautauqua County ICE detention center	Mayville	Detention center	New York	0	0
CD36B3FC	Clinton	Clinton County Jail	Plattsburgh	Detention center	New York	0	0
D727192E	Wayne	Wayne County Jail	Lyons	Detention center	New York	0	0
F8D2DD57	Clay	Clay County ICE facility	Brazil	Detention center	Indiana	18	0
E3F78B5C	Dodge	Dodge County ICE facility	Juneau	Detention center	Wisconsin	4	0
79167369	Jefferson	Jefferson County Jail	Mount Vernon	Detention center	Illinois	0	0
541D0079	Kankakee	Kankakee County ICE facility	Kankakee	Detention center	Illinois	22	0
EA7FCD3C	Boone	Boone County Jail	Burlington	Detention center	Kentucky	0	0
5CA90E47	McHenry	McHenry County ICE facility	Woodstock	Detention center	Illinois	8	0
FD78D74D	Montgomery	Montgomery County ICE facility	Montgomery City	Detention center	Missouri	1	0
ABD908D9	Morgan	Morgan County ICE facility	Versailles	Detention center	Missouri	3	0
9F552DFE	Pulaski	Pulaski County ICE facility	Ullin	Detention center	Illinois	112	0
8474FE4F	Jones	Bluebonnet ICE facility	Anson	Detention center	Texas	408	0
448535FE	Concho	Eden ICE facility	Eden	Detention center	Texas	65	0
F75923B6	Henderson	Henderson County Detention Center	Athens	Detention center	Texas	0	0
CDB2C76E	Johnson	Johnson County ICE facility	Cleburne	Detention center	Texas	4	0
9CD6ADD6	Kay	Kay County ICE facility	Newkirk	Detention center	Oklahoma	1	0
D7CF43CB	Okmulgee	Moore ICE facility	Okmulgee	Detention center	Oklahoma	36	0
98C52F94	Johnson	Prairieland ICE facility	Alvarado	Detention center	Texas	155	0
1B44BF9A	Haskell	Rolling Plains ICE facility	Haskell	Detention center	Texas	59	0
CBFC5098	Adams	Aurora ICE facility	Aurora	Detention center	Colorado	185	0
CC972E3E	El Paso	El Paso County jail	Colorado Springs	Detention center	Colorado	0	0
66BBC0AA	Teller	Teller County Detention Facility	Divide	Detention center	Colorado	0	0
6AB44501	Cuyahoga	Bedford Heights City Jail	Bedford Heights	Detention center	Ohio	0	0
75274010	Butler	Butler County ICE facility	Hamilton	Detention center	Ohio	1	0
9A454D8B	Calhoun	Calhoun County ICE facility	Battle Creek	Detention center	Michigan	60	0
F0DE0405	Geauga	Geauga County ICE facility	Chardon	Detention center	Ohio	11	0
B2A6FEEA	Monroe	Monroe County Jail Dormitory ICE facility	Monore	Detention center	Michigan	1	0
A293C21E	Monroe	Monroe County Main Jail ICE facility	Monore	Detention center	Michigan	1	0
F2C741E1	St. Clair	Saint Clair County ICE facility	Port Huron	Detention center	Michigan	15	0
F5EC170C	Seneca	Seneca County ICE facility	Tiffin	Detention center	Ohio	14	0
8F52D085	El Paso	El Paso ICE Service Processing Center	El Paso	Detention center	Texas	424	0
15DE8ED4	El Paso	La Tuna prison	El Paso	Detention center	Texas	0	0
C0E6843F	Torrance	Torrance County ICE facility	Estancia	Detention center	New Mexico	55	0
A388D244	Hudspeth	West Texas Detention Facility	Sierra Blanca	Detention center	Texas	0	0
D4AE7A19	Nueces	Coastal Bend ICE facility	Robstown	Detention center	Texas	12	0
D9E1FAAC	Harris	Houston ICE facility	Houston	Detention center	Texas	198	0
1BC96352	Polk	Polk County ICE facility	South Livingston	Detention center	Texas	35	0
49309590	Montgomery	Joe Corley ICE facility	Conroe	Detention center	Texas	51	0
393C5619	Montgomery	Montgomery ICE Processing Center	Conroe	Detention center	Texas	275	0
C348D2C2	San Bernardino	Adelanto ICE Processing Center	Adelanto	Detention center	California	270	0
265C2E16	Orange	James A. Musick Facility	Irvine	Detention center	California	0	0
42A39F98	Orange	Santa Ana City Jail	Santa Ana	Detention center	California	0	0
2563E0D6	Baker	Baker County ICE facility	MacClenny	Detention center	Florida	16	0
B7E9B3A6	Broward	Broward ICE Transitional Center	Pompano Beach	Detention center	Florida	252	0
DDE40BBE	Glades	Glades County ICE facility	Moore Haven	Detention center	Florida	188	0
8B849CB4	Miami-Dade	Krome North ICE Service Processing Center	Miami	Detention center	Florida	242	0
74CD4D30	Broward	Larkin Behavioral Health ICE facility	Hollywood	Detention center	Florida	2	0
004332CA	Guaynabo	San Juan ICE staging facility	San Juan	Detention center	Puerto Rico	1	0
B7FB3420	Wakulla	Wakulla County ICE facility	Crawfordville	Detention center	Florida	43	0
BC6EB58A	Union	Elizabeth ICE facility	Elizabeth	Detention center	New Jersey	39	0
5A6549BF	Adams	Adams County ICE facility	Natchez	Detention center	Mississippi	162	0
7F16C4D3	Rapides	Alexandria ICE staging facility	Alexandria	Detention center	Louisiana	235	0
50A9BC4A	Allen	Allen Parish ICE facility	Oberlin	Detention center	Louisiana	12	0
85ED9152	Catahoula	Catahoula ICE facility	Harrisonburg	Detention center	Louisiana	119	0
E0E43DEF	Bossier	Bossier Medium Security Facility	Plain Dealing	Detention center	Louisiana	0	0
B44EAFEF	Etowah	Etowah County ICE facility	Gadsden	Detention center	Alabama	30	0
E23851FC	Grady	Grady County Law Enforcement Center	Chickasha	Detention center	Oklahoma	0	0
36D17CC7	Hancock	Hancock County ICE facility	Bay St. Louis	Detention center	Mississippi	1	0
CBAA78B1	Jackson	Jackson Parish ICE facility	Jonesboro	Detention center	Louisiana	117	0
C1F1063F	LaSalle	LaSalle ICE Processing Center - Jena	Jena	Detention center	Alabama	91	0
6B038C38	LaSalle	LaSalle ICE Processing Center - Olla	Olla	Detention center	Louisiana	25	0
6A61AEF6	Natchitoches	Natchitoches Parish Jail	Natchitoches	Detention center	Louisiana	0	0
D7E1A180	Evangeline	Pine Prairie ICE Processing Center	Pine Prairie	Detention center	Louisiana	87	0
AB5BCEB7	Ouachita	Richwood ICE facility	Monroe	Detention center	Louisiana	129	0
49FFA89E	Knox	Roger D. Wilson Detention Facility	Knoxville	Detention center	Tennessee	0	0
F9A99B35	Concordia	River ICE facility	Ferriday	Detention center	Louisiana	57	0
449C37C5	Evangeline	South Louisiana ICE Processing Center	Basile	Detention center	Louisiana	30	0
3057F6D1	Tallahatchie	Tallahatchie County Correctional Facility	Tutwiler	Detention center	Mississippi	0	0
DA7B3EE1	Winn	Winn ICE facility	Winnfield	Detention center	Louisiana	300	0
05C46395	Orange	Orange County ICE facility	Goshen	Detention center	New York	2	0
5CA68CFB	Berks	Berks Family Residential ICE facility	Leesport	Detention center	Pennsylvania	5	0
6DB06620	Cambria	Cambria County ICE facility	Ebensburg	Detention center	Pennsylvania	14	0
165F9BE8	Clinton	Clinton County ICE facility	McElhattan	Detention center	Pennsylvania	66	0
4C17213B	Pinal	Florence ICE facility	Florence	Detention center	Arizona	119	0
B745C412	Pinal	Eloy ICE facility	Eloy	Detention center	Arizona	421	0
6AD4DBC4	Pinal	Florence ICE Service Processing Center	Florence	Detention center	Arizona	102	0
6C84E68A	Pinal	La Palma ICE facility	Eloy	Detention center	Arizona	767	0
891B77EA	Maricopa	Phoenix ICE facility	Phoenix	Detention center	Arizona	0	0
4564EEF3	Cache	Cache County ICE facility	Logan	Detention center	Nevada	15	0
BF181774	Clark	Henderson ICE facility	Henderson	Detention center	Nevada	37	0
775B5AB8	Nye	Nevada Southern ICE facility	Pahrump	Detention center	Nevada	13	0
E9C380A8	King	SeaTac ICE detention center	Seattle	Detention center	Washington	0	0
78FB50E6	Brooks	Brooks County Detention Center	Falfurrias	Detention center	Texas	0	0
C0517ADA	Burnet	Burnet County ICE detention center	Burnet	Detention center	Texas	0	0
2F729933	Bexar	Central Texas Detention Facility	San Antonio	Detention center	Texas	0	0
8847B369	Hidalgo	East Hidalgo Detention Center	La Villa	Detention center	Texas	0	0
F168D055	Willacy	El Valle ICE facility	Raymondville	Detention center	Texas	189	0
29644259	McLennan	Jack Harwell ICE detention center	Waco	Detention center	Texas	0	0
63BCDCF1	Karnes	Karnes County Correctional ICE facility	Karnes City	Detention center	Texas	112	0
0677CF2E	Karnes	Karnes County Residential ICE facility	Karnes City	Detention center	Texas	207	0
D7541824	Webb	Laredo ICE facility	Laredo	Detention center	Texas	19	0
5E8273F1	La Salle	La Salle County ICE facility	Encinal	Detention center	Texas	11	0
04B6A2A0	Limestone	Limestone County ICE facility	Groesbeck	Detention center	Texas	94	0
3D42BEC0	Cameron	Port Isabel ICE facility	Los Fresnos	Detention center	Texas	328	0
80E7613E	Webb	Rio Grande ICE facility	Laredo	Detention center	Texas	192	0
71335196	Frio	South Texas Family Residential ICE facility	Dilley	Detention center	Texas	258	0
084D4EFC	Frio	South Texas ICE Processing Center	Pearsall	Detention center	Texas	378	0
35DB8B7D	Williamson	Hutto Residential ICE facility	Taylor	Detention center	Texas	11	0
322C7D53	Val Verde	Val Verde County Detention Facility	Del Rio	Detention center	Texas	0	0
69E76EA8	Willacy	Willacy County Regional Detention Facility	Raymondville	Detention center	Texas	0	0
1A630514	Imperial	Imperial Regional ICE facility	Calexico	Detention center	California	82	0
C31BD92C	San Diego	Otay Mesa ICE facility	San Diego	Detention center	California	238	0
6A191CB7	San Luis Obispo	San Luis Regional ICE facility	San Luis	Detention center	California	84	0
3A9320CD	Kern	Golden State Annex ICE facility	McFarland	Detention center	California	6	0
8D847451	Kern	Mesa Verde ICE Processing Facility	Bakersfield	Detention center	California	60	0
7FC7351B	Yuba	Yuba County ICE facility	Marysville	Detention center	California	7	0
3867C0A8	Yamhill	Sheridan federal prison	Sheridan	Detention center	Washington	0	0
AD521141	Pierce	Tacoma Northwest ICE facility	Tacoma	Detention center	Washington	34	0
0A1D2EB9	Carver	Carver County Jail	Chaska	Detention center	Minnesota	0	0
74A92099	Cass	Cass County Jail	Plattsmouth	Detention center	Nebraska	0	0
A65FE627	Freeborn	Freeborn County ICE facility	Albert Lea	Detention center	Minnesota	5	0
F2847A72	Hall	Hall County ICE facility	Grand Island	Detention center	Nebraska	2	0
82FC35DF	Hardin	Hardin County ICE facility	Eldora	Detention center	Iowa	7	0
FB11A21F	Kandiyohi	Kandiyohi County ICE facility	Willmar	Detention center	Minnesota	41	0
0CC9744B	Linn	Linn County ICE facility	Cedar Rapids	Detention center	Iowa	2	0
F31CA158	Nobles	Nobles County ICE facility	Worthington	Detention center	Minnesota	2	0
170BD6E7	Phelps	Phelps County ICE facility	Phelps	Detention center	Nebraska	2	0
F2E262FA	Pottawattamie	Pottawattamie County ICE facility	Council Bluffs	Detention center	Iowa	2	0
22350722	Sherburne	Sherburne County ICE facility	Elk River	Detention center	Minnesota	2	0
D5BADA2A	Hall	Hall County Jail	Grand Island	Detention center	Nebraska	0	0
A617652E	Story	Story County Jail	Nevada	Detention center	Iowa	0	0
F6CB9B2C	Caroline	Caroline ICE facility	Bowling Green	Detention center	Virginia	74	0
77DE3E60	Prince Edward	Farmville ICE facility	Farmville	Detention center	Virginia	339	0
C9BADEE0	Navajo	White Mountain Apache Department of Corrections	Whiteriver, AZ	Reservation jail	Arizona	9	0
907DB823	Travis	Austin federal prison halfway house	Del Valle	Federal halfway house	Texas	2	0
C0AF056D	Summers	Alderson federal prison	Alderson	Federal prison	West Virginia	19	0
1BD69E3F	Pickens	Aliceville federal prison	Aliceville	Federal prison	Alabama	108	0
964B6CFF	Union	Allenwood federal prison complex	Allenwood	Federal prison	Pennsylvania	1031	0
76D7970D	Greene	Alpha House of Springfield Inc	Springfield	Federal halfway house	Missouri	4	0
0314D961	Florence	Alston Wilkes federal halfway house	Florence	Federal halfway house	South Carolina	11	0
87331CE9	Richland	Alston Wilkes federal halfway house	Columbia	Federal halfway house	South Carolina	4	0
F1A5DADB	Florence	Alston Wilkes federal halfway house	Fayetteville	Federal halfway house	North Carolina	8	0
E6101A4B	Yellowstone	Alpha House federal prison halfway house	Billings	Federal halfway house	Montana	3	0
B5974D94	Franklin	Alvis House federal halfway house	Columbus	Federal halfway house	Ohio	1	0
1F9FE341	Boyd	Ashland federal prison	Ashland	Federal prison	Kentucky	367	0
6DDB3F6B	Fulton	Atlanta federal prison	Atlanta	Federal prison	Georgia	265	0
D735C02F	Merced	Atwater federal prison	Atwater	Federal prison	California	396	0
A23FAEBD	Baldwin	Baldwin County Jail halfway house	Bay Minette	Federal halfway house	Alabama	1	0
A3EFC1DC	Greenville	Bannum Place federal prison halfway house	Greenville	Federal halfway house	South Carolina	5	0
C2FA4426	Miami-Dade	Banyan federal prison halfway house	Miami	Federal halfway house	Florida	3	0
6E4BB3D0	Bastrop	Bastrop federal prison	Bastrop	Federal prison	Texas	514	0
7.79E+82	Jefferson	Beaumont federal prison complex	Beaumont	Federal prison	Texas	2152	0
FC36921E	Raleigh	Beckley federal prison	Beaver	Federal prison	West Virginia	246	0
397D6044	Los Angeles	Vinewood reentry center	Los Angeles	Federal halfway house	California	3	0
4355E315	Los Angeles	Orion federal prison halfway house	Van Nuys	Federal halfway house	California	9	0
7C8F5563	Maricopa	Phoenix federal prison halfway house	Phoenix	Federal halfway house	Arizona	5	0
0B83CE8D	Marlboro	Bennettsville federal prison	Bennettsville	Federal prison	South Carolina	179	0
B1965D2C	Coos	Berlin federal prison	Berlin	Federal prison	New Hampshire	37	0
076A30F8	Martin	Big Sandy federal prison	Inez	Federal prison	Kentucky	154	0
3C9050E6	Howard	Big Spring federal prison	Big Spring	Federal prison	Texas	815	0
B750E7C0	Imperial	Brawley federal prison halfway house	Brawley	Federal halfway house	California	11	0
0DA580B0	Kings	Brooklyn Metropolitan Detention Center federal prison	Brooklyn	Federal prison	New York	365	0
3083F29D	Brazos	Bryan federal prison camp	Bryan	Federal prison	Texas	107	0
2356D70A	Granville	Butner federal prison complex	Butner	Federal prison	North Carolina	1523	0
9D616D1E	Wayne	Canaan federal prison	Waymart	Federal prison	Pennsylvania	358	0
0509C06D	Tarrant	Carswell federal prison medical center	Fort Worth	Federal prison	Texas	782	0
7DCFD425	Natrona	Wyoming adult community corrections	Casper	Federal halfway house	Wyoming	6	0
48C87991	Cass	Cass County federal prison halfway house	Fargo	Federal halfway house	North Dakota	1	0
5C4D6444	Williamson	Centerstone of Illinois federal prison halfway house	Marion	Federal halfway house	Illinois	2	0
75C5A856	Pinal	Central Arizona Detention Center	Florence	Federal halfway house	Arizona	1	0
D0612058	Cook	Freedom Center federal prison halfway house	Chicago	Federal halfway house	Illinois	10	0
4801470B	New Haven	Chase Center federal prison halfway house	Waterbury	Federal halfway house	Connecticut	1	0
8ABD9962	Wayne	Cherry Health federal prison halfway house	Detroit	Federal halfway house	Michigan	12	0
BFB6EB18	Kent	Cherry Health federal prison halfway house	Grand Rapids	Federal halfway house	Michigan	5	0
8.13E+26	Cook	Chicago federal prison	Chicago	Federal prison	Illinois	310	0
7E6B06F7	Pulaski	City of Faith federal prison halfway house	Little Rock	Federal halfway house	Arkansas	1	0
9367C9DE	Sumter	Coleman federal prison complex	Sumterville	Federal prison	Florida	937	0
6E8287BA	Mahoning	Youngstown federal halfway house	Youngstown	Federal halfway house	Ohio	4	0
6F936465	Natrona	Mills federal prison halfway house	Mills	Federal halfway house	Wyoming	3	0
50AB6E19	Pennington	Black Hills federal prison halfway house	Rapid City	Federal halfway house	South Dakota	2	0
3F2B251E	Philadelphia	Luzerne federal prison halfway house	Philadelphia	Federal halfway house	Pennsylvania	1	0
E3082451	Cass	Centre Inc. federal prison halfway house	Fargo	Federal halfway house	North Dakota	8	0
5C909E65	Morton	Mandan federal prison halfway house	Mandan	Federal halfway house	North Dakota	4	0
C7928B23	New Hanover	Wilmington federal prison halfway house	Wilmington	Federal halfway house	Delaware	7	0
4E13064E	Providence	Pawtucket federal prison halfway house	Pawtucket	Federal halfway house	Rhode Island	4	0
EF02F1A1	Erie	Buffalo federal prison halfway house	Buffalo	Federal halfway house	New York	2	0
5F5C5BA8	Suffolk	Coolidge House federal prison halfway house	Boston	Federal halfway house	Massachusetts	7	0
25C84FA5	Kings	Brooklyn House federal prison halfway house	Brooklyn	Federal halfway house	New York	12	0
BD1ACEB6	San Diego	Ocean View federal prison halfway house	San Diego	Federal halfway house	California	21	0
2E3FB086	Smith	County Rehabilitation Center federal prison halfway house	Tyler	Federal halfway house	Texas	14	0
EF583E70	Bexar	Crosspoint Inc. federal prison halfway house	San Antonio	Federal halfway house	Texas	23	0
34E85D58	Fulton	Dismas federal prison halfway house	Atlanta	Federal halfway house	Georgia	7	0
94097749	Allegany	Cumberland federal prison	Cumberland	Federal prison	Maryland	420	0
01179C63	Fairfield	Danbury federal prison	Danbury	Federal prison	Connecticut	197	0
5DC62871	Worcester	Devens federal medical center prison	Ayer	Federal prison	Massachusetts	404	0
69881A0F	Davidson	Nashville federal prison halfway house	Nashville	Federal halfway house	Tennessee	15	0
F435C55C	Dona Ana	Las Cruces federal prison halfway house	Las Cruces	Federal halfway house	New Mexico	1	0
A54E5037	Midland	Midland federal prison halfway house	Midland	Federal halfway house	Texas	19	0
23CCC654	Shelby	Memphis federal prison halfway house	Memphis	Federal halfway house	Tennessee	22	0
007C7C16	El Paso	El Paso federal prison halfway house	El Paso	Federal halfway house	Texas	8	0
4438FBCF	Pima	Tucson federal prison halfway house	Tucson	Federal halfway house	Arizona	12	0
0D55FDAF	Guilford	Greensboro federal prison halfway house	Greensboro	Federal halfway house	North Carolina	2	0
4792E9B4	Forrest	Hattiesburg federal prison halfway house	Hattiesburg	Federal halfway house	Mississippi	5	0
68B4F4EF	Kanawha	St. Albans federal prison halfway house	St. Albans	Federal halfway house	West Virginia	9	0
A6EC7177	Harrison	Clarksburg federal prison halfway house	Clarksburg	Federal halfway house	West Virginia	8	0
789B2A93	Bernalillo	Albuquerque federal prison halfway house	Albuquerque	Federal halfway house	New Mexico	33	0
1B555D38	Orange	Orlando federal prison halfway house	Orlando	Federal halfway house	Florida	5	0
5E73F442	Fayette	Lexington federal prison halfway house	Lexington	Federal halfway house	Kentucky	15	0
F67BB29B	Douglas	Omaha federal prison halfway house	Omaha	Federal halfway house	Nebraska	10	0
1F10EB15	Montgomery	Montgomery federal prison halfway house	Montgomery	Federal halfway house	Alabama	1	0
A13A7EB1	Woodbury	Sioux City federal prison halfway house	Sioux City	Federal halfway house	Iowa	3	0
D37F77A5	Richmond	Augusta federal prison halfway house	Augusta	Federal halfway house	Georgia	1	0
69CD8C95	Jefferson	Louisville federal prison halfway house	Louisville	Federal halfway house	Kentucky	5	0
4DA75FC8	Buffalo	Kearney federal prison halfway house	Kearney	Federal halfway house	Nebraska	2	0
42116B6D	Broward	Dania federal prison halfway house	Dania	Federal halfway house	Florida	10	0
FF34E524	Nueces	Corpus Christi federal prison halfway house	Corpus Christi	Federal halfway house	Texas	2	0
CA66932A	Shelby	Memphis federal prisons halfway house	Memphis	Federal halfway house	Tennessee	1	0
CA4DF696	Chatham	Savannah federal prison halfway house	Savannah	Federal halfway house	Georgia	8	0
CB94171E	Val Verde	Del Rio federal prison halfway house	Del Rio	Federal halfway house	Texas	7	0
E9FA957F	St. Louis City	Saint Louis federal prison halfway house	Saint Louis	Federal halfway house	Missouri	2	0
0E572A80	Webb	Laredo federal prison halfway house	Laredo	Federal halfway house	Texas	9	0
0E9C1E97	Clay	Manchester federal prison halfway house	Manchester	Federal halfway house	Kentucky	12	0
7AAAE913	Sacramento	Sacramento Day Reporting Center federal prison halfway house	Sacramento	Federal halfway house	California	1	0
766799A2	Alameda	Dublin federal prison	Dublin	Federal prison	California	303	0
B7198E2F	St. Louis	Duluth federal prison	Duluth	Federal prison	Minnesota	215	0
BF544CB8	Edgefield	Edgefield federal prison	Edgefield	Federal prison	South Carolina	256	0
1C0DA64C	Canadian	El Reno federal prison	El Reno	Federal prison	Oklahoma	614	0
AEFAD137	Columbiana	Elkton federal prison	Lisbon	Federal prison	Ohio	965	0
F88BC32F	Jefferson	Englewood federal prison	Littleton	Federal prison	Colorado	702	0
23461C1F	Hampton	Estill federal prison	Estill	Federal prison	South Carolina	2	0
80B3177B	Cumberland	Fairton federal prison	Fairton	Federal prison	New Jersey	302	0
E2D6B488	Sangamon	Family Guidance Centers Inc. federal prison halfway house	Springfield	Federal halfway house	Illinois	1	0
AA0251A0	Dauphin	Firetree LTD. federal prison halfway house	Harrisburg	Federal halfway house	Pennsylvania	6	0
9547876C	Onondaga	Firetree LTD. federal prison halfway house	Syracuse	Federal halfway house	New York	4	0
3A870E46	Fremont	Florence federal prison complex	Florence	Federal prison	Colorado	1204	0
D70F5631	St. Francis	Forrest City federal prison complex	Forrest City	Federal prison	Arkansas	1187	0
3266FC2B	Burlington	Fort Dix federal prison	Fort Dix	Federal prison	New Jersey	2029	0
FD83572D	Tarrant	Fort Worth federal prison medical center	Fort Worth	Federal prison	Texas	767	0
91E72C47	Fresno	Fresno County Jail halfway house	Fresno	Federal halfway house	California	1	0
845073D6	Clark	Las Vegas federal prison halfway house	Las Vegas	Federal halfway house	Nevada	9	0
C91C5825	Cameron	Reality House federal prison halfway house	Brownsville	Federal halfway house	Texas	5	0
0A0E4529	Bronx	Bronx federal prison halfway house	Bronx	Federal halfway house	New York	7	0
3EA49203	Anchorage	Cordova Center federal prison halfway house	Anchorage	Federal halfway house	Alaska	2	0
CD525597	Salt Lake	Salt Lake City federal prison halfway house	Salt Lake City	Federal halfway house	Utah	9	0
B65508CF	Hidalgo	Mid-Valley House federal prison halfway house	Edinburg	Federal halfway house	Texas	28	0
E85D8949	Los Angeles	El Monte federal prison halfway house	El Monte	Federal halfway house	California	8	0
0C7EAB2C	Alameda	Oakland federal prison halfway house	Oakland	Federal halfway house	California	4	0
A94F3D85	Los Angeles	Los Angeles federeal prison halfway house	Los Angeles	Federal halfway house	California	8	0
662C31A9	Leavenworth	Leavenworth federal prison halfway house	Leavenworth	Federal halfway house	Kansas	30	0
9DD078C4	San Francisco	San Francisco federal prison halfway house	San Francisco	Federal halfway house	California	7	0
44F6B0DF	Norfolk City	Ghent federal prison halfway house	Norfolk	Federal halfway house	Virginia	3	0
2FFD169E	Gilmer	Gilmer federal prison	Glenville	Federal prison	West Virginia	340	0
5A19B0CF	Cascade	Great Falls federal prison halfway house	Great Falls	Federal halfway house	Montana	11	0
D2AB9EFA	Bond	Greenville federal prison	Greenville	Federal prison	Illinois	774	0
B125AF35	Guaynabo	Guaynabo federal prison	Guaynabo	Federal prison	Puerto Rico	52	0
30420F1F	Hillsborough	Manchester federal prison halfway house	Manchester	Federal halfway house	New Hampshire	20	0
F045082A	Preston	Hazelton federal prison complex	Bruceton Mills	Federal prison	West Virginia	310	0
C7F92EB7	Lassen	Herlong federal prison	Herlong	Federal prison	California	276	0
37B71951	Hillsborough	Tampa federal prison halfway house	Tampa	Federal halfway house	Florida	7	0
742E7682	Honolulu	Honolulu federal prison	Honolulu	Federal prison	Hawaii	10	0
B5F37C32	Albany	Albany federal prison halfway house	Albany	Federal halfway house	New York	2	0
EBE874DC	Harris	Houston federal prison	Houston	Federal prison	Texas	206	0
548D6407	Peoria	Human Services Center federal prison halfway house	Peoria	Federal halfway house	Illinois	7	0
A4CC5060	Jackson	Jackson County federal prison halfway house	Phoenix	Federal halfway house	Oregon	0	0
A0689104	Wayne	Jesup federal prison	Jesup	Federal prison	Georgia	508	0
622E82E0	Alameda	Dublin federal prison halfway house	Dublin	Federal halfway house	California	1	0
03D34C0E	Calhoun	Battle Creek federal prison halfway house	Battle Creek	Federal halfway house	Michigan	1	0
39F842C2	Kalamazoo	Kalamazoo federal prison halfway house	Kalamazoo	Federal halfway house	Michigan	1	0
9703A0BD	Leon	Tallahassee federal prison halfway house	Tallahassee	Federal halfway house	Florida	1	0
1600C8C4	Baldwin	Spanish Fort federal prison halfway house	Spanish Fort	Federal halfway house	Alabama	2	0
4EC5E0FC	Duval	Jacksonville federal prison halfway house	Jacksonville	Federal halfway house	Florida	20	0
5D13C221	Escambia	Pensacola federal prison halfway house	Pensacola	Federal halfway house	Florida	6	0
5EB9BF8C	Jefferson	Birmingham federal prison halfway house	Birmingham	Federal halfway house	Alabama	6	0
7C489090	Philadelphia	Philadelphia federal prison halfway house	Philadelphia	Federal halfway house	Pennsylvania	21	0
64D517CF	El Paso	La Tuna federal prison	Anthony	Federal prison	Texas	555	0
37E238DB	Ramsey	Lake Region federal prison halfway house	Devils Lake	Federal halfway house	North Dakota	4	0
41519526	Leavenworth	Leavenworth federal prison	Leavenworth	Federal prison	Kansas	893	0
AC1EC7D0	Lee	Lee federal prison	Pennington Gap	Federal prison	Virginia	546	0
7A0B240A	Union	Lewisburg federal prison	Lewisburg	Federal prison	Pennsylvania	255	0
6E9F6FEB	Fayette	Lexington federal medical center	Lexington	Federal prison	Kentucky	765	0
C8693F71	Santa Barbara	Lompoc federal prison complex	Lompoc	Federal prison	California	1039	0
29C7B66E	Cambria	Loretto federal prison	Loretto	Federal prison	Pennsylvania	746	0
3FC78BEF	Los Angeles	Los Angeles Metropolitan Detention Center federal prison	Los Angeles	Federal prison	California	358	0
0B09590E	Clay	Manchester federal prison	Manchester	Federal prison	Kentucky	638	0
E8BCB1BE	Jackson	Marianna federal prison	Marianna	Federal prison	Florida	354	0
0D6CE66E	Williamson	Marion federal prison	Marion	Federal prison	Illinois	804	0
52D5DC5D	McCreary	McCreary federal prison	Pine Knot	Federal prison	Kentucky	192	0
B14356D3	McDowell	McDowell federal prison	Welch	Federal prison	West Virginia	424	0
DB0FD00A	McKean	McKean federal prison	Lewis Run	Federal prison	Pennsylvania	494	0
53988544	Shelby	Memphis federal prison	Memphis	Federal prison	Tennessee	398	0
1912A962	Fresno	Mendota federal prison	Mendota	Federal prison	California	81	0
6878FD10	Miami-Dade	Miami federal prison complex	Miami	Federal prison	Florida	439	0
23A99266	Knox	Midway Rehabilitation Center (RRC)	Knoxville	Federal halfway house	Tennessee	2	0
7F6E22BE	Washtenaw	Milan federal prison	Milan	Federal prison	Michigan	266	0
7E8FDA8B	Montgomery	Montgomery federal prison camp	Montgomery	Federal prison	Alabama	119	0
1684F32B	Monongalia	Morgantown federal prison	Morgantown	Federal prison	West Virginia	253	0
8496CF6D	Multnomah	Northwest Region Re-Entry Center federal prison halfway house	Portland	Federal halfway house	Oregon	2	0
F24D2276	New York	New York Metropolitan Correctional Center federal prison	New York	Federal prison	New York	59	0
7C7582FE	Allen	Oakdale federal prison complex	Oakdale	Federal prison	Louisiana	620	0
68F42141	Oklahoma	Oklahoma City federal prison	Oklahoma City	Federal prison	Oklahoma	495	0
A898B193	Cuyahoga	Oriana House federal prison halfway house	Cleveland	Federal halfway house	Ohio	5	0
62650B36	Otero	Otero County federal prison halfway house	Chaparral	Federal halfway house	New Mexico	1	0
C5220B0A	Orange	Otisville federal prison	Otisville	Federal prison	New York	61	0
8E1F54DC	Adams	Oxford federal prison	Oxford	Federal prison	Wisconsin	756	0
033E7CB2	Tazewell	Pekin federal prison	Pekin	Federal prison	Illinois	820	0
ECC7BEBF	Escambia	Pensacola federal prison camp	Pensacola	Federal prison	Florida	71	0
920DD05D	Prince George	Petersburg federal prison complex	Hopewell	Federal prison	Virginia	600	0
F7609ED5	Cumberland	Pharos House federal prison halfway house	Portland	Federal halfway house	Maine	1	0
B9B6DBDD	Philadelphia	Philadelphia federal prison	Philadelphia	Federal prison	Pennsylvania	399	0
307FA65C	Maricopa	Phoenix federal prison	Phoenix	Federal prison	Arizona	508	0
6E945992	Pierce	Pioneer Human Services federal prison halfway house	Tacoma	Federal halfway house	Washington	2	0
3DE7D79A	King	Pioneer Fellowship House federal prison halfway house	Seattle	Federal halfway house	Washington	1	0
233CC887	Grant	Pollock federal prison complex	Pollock	Federal prison	Louisiana	1211	0
DC674C3E	Ada	Port of Hope federal prison halfway house	Boise	Federal halfway house	Idaho	9	0
2315473A	Denver	Independence House federal prison halfway house	Denver	Federal halfway house	Colorado	9	0
1AC1DB1A	Essex	Ray Brook federal prison	Ray Brook	Federal prison	New York	147	0
8D840FD7	East Baton Rouge	Baton Rouge federal prison halfway house	Baton Rouge	Federal halfway house	Louisiana	1	0
9110343F	Allegheny	Renewal federal prison halfway house	Pittsburgh	Federal halfway house	Pennsylvania	8	0
21781B26	District of Columbia	Reynolds and Associates federal prison halfway house	Washington	Federal halfway house	District of Columbia	2	0
BB631DBE	Miami-Dade	Riverside Christian Ministries federal prison halfway house	Miami	Federal halfway house	Florida	8	0
9526F468	Olmsted	Rochester federal prison medical center	Rochester	Federal prison	Minnesota	397	0
B33241F0	Rock	Rock County Sheriff's Deptartment federal prison halfway house	Janesville	Federal halfway house	Wisconsin	1	0
F6E4DDA4	Rock	Rock Valley Community Programs federal prison halfway house	Janesville	Federal halfway house	Wisconsin	3	0
570853C3	Riverside	Rubidoux federal prison halfway house	Rubidoux	Federal halfway house	California	13	0
C8291952	Graham	Safford federal prison	Safford	Federal prison	Arizona	630	0
25998DFA	Hamilton	Salvation Army Chattanooga federal prison halfway house	Chattanooga	Federal halfway house	Tennessee	10	0
A402940A	Palm Beach	Center of Hope Transitional Housing federal prison halfway house	West Palm Beach	Federal halfway house	Florida	13	0
A938B87D	Lee	Fort Myers federal prison halfway house	Fort Myers	Federal halfway house	Florida	1	0
56C0D1C1	McLennan	Waco federal prison halfway house	Waco	Federal halfway house	Texas	1	0
C427CCF7	San Diego	San Diego federal prison	San Diego	Federal prison	California	405	0
90E92F19	Pine	Sandstone federal prison	Sandstone	Federal prison	Minnesota	726	0
88F61061	Schuylkill	Schuykill federal prison	Minersville	Federal prison	Pennsylvania	609	0
79BEB932	Dallas	Seagoville federal prison	Seagoville	Federal prison	Texas	1336	0
EE6BDFFD	King	SeaTac federal prison	Seattle	Federal prison	Washington	260	0
3F720054	Russell	Lebanon Community Corrections Center federal prison halfway house	Lebanon	Federal halfway house	Virginia	2	0
D93B12BA	Yamhill	Sheridan federal prison	Sheridan	Federal prison	Oregon	100	0
1F9BAEE6	Wake	South Raleigh federal prison halfway house	Raleigh	Federal halfway house	North Carolina	0	0
3223CEC2	St. Francois	Aquinas federal prison halfway house	Farmington	Federal halfway house	Missouri	2	0
7A70A964	Greene	Springfield federal medical center prison	Springfield	Federal prison	Missouri	417	0
E6EA380B	Hamilton	Talbert federal halfway house	Cincinnati	Federal prison	Ohio	7	0
CF76DDCF	Talladega	Talladega federal prison	Talladega	Federal prison	Alabama	306	0
0C363BDF	Leon	Tallahassee federal prison	Tallahassee	Federal prison	Florida	462	0
8AFFA09A	Los Angeles	Terminal Island federal prison	San Pedro	Federal prison	California	743	0
4A388A9A	Vigo	Terre Haute federal prison complex	Terre Haute	Federal prison	Indiana	1248	0
F759BD59	Bowie	Texarkana federal prison	Texarkana	Federal prison	Texas	670	0
0C8E9802	Polk	Des Moines federal prison halfway house	Des Moines	Federal halfway house	Iowa	1	0
E208C856	Harris	Leidel Comprehensive Sanction Center federal prison halfway house	Houston	Federal halfway house	Texas	24	0
9C1653AC	Essex	Newark federal prison halfway house	Newark	Federal halfway house	New Jersey	11	0
B5B3FAA4	Shawnee	Mirror federal prison halfway house	Topeka	Federal halfway house	Kansas	8	0
A3292CD4	Sedgwick	Mirror federal prison halfway house	Wichita	Federal halfway house	Kansas	7	0
DF2368E0	Carroll	Thomson federal prison	Thomson	Federal prison	Illinois	547	0
6DCCC30F	Live Oak	Three Rivers federal prison	Three Rivers	Federal prison	Texas	314	0
D9A37098	Pima	Tucson federal prison complex	Tucson	Federal prison	Arizona	1067	0
20C2E350	San Bernardino	Victorville federal prison complex	Victorville	Federal prison	California	1696	0
E545E00F	Lucas	Toledo federal prison halfway house	Toledo	Federal halfway house	Ohio	2	0
D719D274	Jefferson	Metairie federal prison halfway house	Metairie	Federal halfway house	Louisiana	5	0
D8A46A67	Tarrant	Fort Worth federal prison halfway house	Fort Worth	Federal prison	Texas	4	0
C33D8EDB	Dallas	Hutchins federal prison halfway house	Hutchins	Federal halfway house	Texas	52	0
8819AE23	Baltimore City	Baltimore federal prison halfway house	Baltimore	Federal halfway house	Maryland	21	0
C4F9FC09	Guaynabo	San Juan federal prison halfway house	San Juan	Federal halfway house	Puerto Rico	30	0
C6DFB97A	Marion	Indianapolis federal prison halfway house	Indianapolis	Federal halfway house	Indiana	6	0
E756A34A	Vanderburgh	Evansville federal prison halfway house	Evansville	Federal halfway house	Indiana	1	0
911C1F5E	Hennepin	Minneapolis federal prison halfway house	Minneapolis	Federal halfway house	Minnesota	21	0
94199CDC	Monroe	Rochester federal prison halfway house	Rochester	Federal halfway house	New York	9	0
786CB2A3	Ramsey	Roseville federal prison halfway house	Roseville	Federal halfway house	Minnesota	8	0
43E9461C	Waseca	Waseca federal prison	Waseca	Federal prison	Minnesota	458	0
175CAB9F	Hartford	Watkinson House federal prison halfway house	Hartford	Federal halfway house	Connecticut	1	0
4895D9A2	Williamsburg	Williamsburg federal prison	Salters	Federal prison	South Carolina	238	0
87DBAF80	Milwaukee	Parsons House federal prison halfway house	Milwaukee	Federal halfway house	Wisconsin	1	0
E3A87C51	Coconino	Flagstaff federal prison halfway house	Flagstaff	Federal halfway house	Arizona	1	0
A7B2A8A7	Orange	Garden Grove federal prison halfway house	Garden Grove	Federal halfway house	California	11	0
BF191608	Yankton	Yankton federal prison camp	Yankton	Federal prison	South Dakota	164	0
F2CF2DC3	Yazoo	Yazoo City federal prison complex	Yazoo City	Federal prison	Mississippi	590	0
C686F893	Reeves	Reeves County federal prison	Pecos	Federal prison	Texas	20	0
2975104	Caddo	Great Plains federal prison	Hinton	Federal prison	Oklahoma	168	0
359D8D8A	Howard	Big Spring federal prison	Big Spring	Federal prison	Texas	530	0
ECD6A637	Garza	Giles W. Dalby federal prison	Post	Federal prison	Texas	100	0
8C274897	Telfair	McRae federal prison	McRae-Helena	Federal prison	Georgia	27	0
15289545	Lake	North Lake federal prison	Baldwin	Federal prison	Michigan	125	0
1558C2BF	Hertford	Rivers federal prison	Winton	Federal prison	North Carolina	68	0
C9CF62B9	Reeves	Reeves County federal prison	Pecos	Federal prison	Texas	46	0
364869B9	Howard	Flightline federal prison	Big Spring	Federal prison	Texas	34	0
5CFB7978	Clearfield	Moshannon Valley federal prison	Philipsburg	Federal prison	Pennsylvania	197	0
F3EFE858	Coosa	Alex City Work Release prison	Alex City	Low-security work release	Alabama	77	17
\.


--
-- Data for Name: us_counties_recent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.us_counties_recent (fips, date, state, cases, deaths) FROM stdin;
1003	2022-09-27	Alabama	65544	711
1005	2022-09-27	Alabama	6881	102
1007	2022-09-27	Alabama	7504	107
1009	2022-09-27	Alabama	16875	258
1011	2022-09-27	Alabama	2797	54
1013	2022-09-27	Alabama	6040	129
1015	2022-09-27	Alabama	37492	655
1017	2022-09-27	Alabama	9974	168
1019	2022-09-27	Alabama	5991	87
1021	2022-09-27	Alabama	12354	213
1023	2022-09-27	Alabama	2180	38
1025	2022-09-27	Alabama	8019	106
1027	2022-09-27	Alabama	4733	90
1029	2022-09-27	Alabama	4092	70
1031	2022-09-27	Alabama	15967	241
1033	2022-09-27	Alabama	19434	269
1035	2022-09-27	Alabama	3338	73
1037	2022-09-27	Alabama	3496	62
1039	2022-09-27	Alabama	10899	247
1041	2022-09-27	Alabama	4385	105
1043	2022-09-27	Alabama	29302	380
1045	2022-09-27	Alabama	15338	244
1047	2022-09-27	Alabama	10069	254
1049	2022-09-27	Alabama	21140	340
1051	2022-09-27	Alabama	27610	358
1053	2022-09-27	Alabama	11560	175
1055	2022-09-27	Alabama	31818	676
1057	2022-09-27	Alabama	5512	97
1059	2022-09-27	Alabama	11216	146
1061	2022-09-27	Alabama	7372	170
1063	2022-09-27	Alabama	2135	52
1065	2022-09-27	Alabama	5372	109
1067	2022-09-27	Alabama	5378	78
1069	2022-09-27	Alabama	30221	523
1071	2022-09-27	Alabama	16927	250
1073	2022-09-27	Alabama	218631	2445
1075	2022-09-27	Alabama	4375	69
1077	2022-09-27	Alabama	28147	408
1079	2022-09-27	Alabama	8843	171
1081	2022-09-27	Alabama	44084	351
1083	2022-09-27	Alabama	29619	306
1085	2022-09-27	Alabama	3061	80
1087	2022-09-27	Alabama	4787	89
1089	2022-09-27	Alabama	106833	1011
1091	2022-09-27	Alabama	5806	113
1093	2022-09-27	Alabama	9326	154
1095	2022-09-27	Alabama	30873	401
1097	2022-09-27	Alabama	127869	1732
1099	2022-09-27	Alabama	6160	82
1101	2022-09-27	Alabama	66594	993
1103	2022-09-27	Alabama	42753	536
1105	2022-09-27	Alabama	2479	49
1107	2022-09-27	Alabama	5950	111
1109	2022-09-27	Alabama	8708	139
1111	2022-09-27	Alabama	5860	75
1113	2022-09-27	Alabama	12001	97
1117	2022-09-27	Alabama	70719	470
1115	2022-09-27	Alabama	29994	432
1119	2022-09-27	Alabama	2950	54
1121	2022-09-27	Alabama	26545	386
1123	2022-09-27	Alabama	13536	248
1125	2022-09-27	Alabama	65661	820
1127	2022-09-27	Alabama	22232	463
1129	2022-09-27	Alabama	4157	60
1131	2022-09-27	Alabama	3413	48
1133	2022-09-27	Alabama	8614	138
2013	2022-09-27	Alaska	1267	4
2016	2022-09-27	Alaska	1877	2
2020	2022-09-27	Alaska	119775	557
2050	2022-09-27	Alaska	12076	44
2997	2022-09-27	Alaska	1190	1
2068	2022-09-27	Alaska	1781	2
2070	2022-09-27	Alaska	2144	12
2090	2022-09-27	Alaska	32250	154
2100	2022-09-27	Alaska	786	1
2110	2022-09-27	Alaska	11359	22
2122	2022-09-27	Alaska	21765	111
2130	2022-09-27	Alaska	4984	21
2150	2022-09-27	Alaska	5642	12
2158	2022-09-27	Alaska	4597	14
2170	2022-09-27	Alaska	39430	247
2180	2022-09-27	Alaska	6770	5
2185	2022-09-27	Alaska	5206	15
2188	2022-09-27	Alaska	5279	17
2195	2022-09-27	Alaska	885	5
2198	2022-09-27	Alaska	1748	10
2220	2022-09-27	Alaska	3313	6
2230	2022-09-27	Alaska	660	0
2240	2022-09-27	Alaska	2332	20
2261	2022-09-27	Alaska	3604	21
2275	2022-09-27	Alaska	778	1
2998	2022-09-27	Alaska	907	5
2290	2022-09-27	Alaska	1667	11
4001	2022-09-27	Arizona	31197	624
4003	2022-09-27	Arizona	36043	595
4005	2022-09-27	Arizona	49546	496
4007	2022-09-27	Arizona	19780	397
4009	2022-09-27	Arizona	13381	183
4011	2022-09-27	Arizona	2465	39
4012	2022-09-27	Arizona	5746	151
4013	2022-09-27	Arizona	1423388	17910
4015	2022-09-27	Arizona	63550	1543
4017	2022-09-27	Arizona	44097	939
4019	2022-09-27	Arizona	290693	3996
4021	2022-09-27	Arizona	147217	1726
4023	2022-09-27	Arizona	18504	238
4025	2022-09-27	Arizona	54922	1284
4027	2022-09-27	Arizona	67629	1205
5001	2022-09-27	Arkansas	6614	83
5003	2022-09-27	Arkansas	5867	77
5005	2022-09-27	Arkansas	10169	270
5007	2022-09-27	Arkansas	73618	905
5009	2022-09-27	Arkansas	10583	190
5011	2022-09-27	Arkansas	3435	55
5013	2022-09-27	Arkansas	1145	12
5015	2022-09-27	Arkansas	6923	117
5017	2022-09-27	Arkansas	3025	59
5019	2022-09-27	Arkansas	6114	86
5021	2022-09-27	Arkansas	4717	97
5023	2022-09-27	Arkansas	7537	135
5025	2022-09-27	Arkansas	2547	40
5027	2022-09-27	Arkansas	6284	100
5029	2022-09-27	Arkansas	6088	70
5031	2022-09-27	Arkansas	43658	357
5033	2022-09-27	Arkansas	17715	260
5035	2022-09-27	Arkansas	15863	235
5037	2022-09-27	Arkansas	5474	89
5039	2022-09-27	Arkansas	1977	35
5041	2022-09-27	Arkansas	3483	43
5043	2022-09-27	Arkansas	5308	73
5045	2022-09-27	Arkansas	40578	334
5047	2022-09-27	Arkansas	4241	74
5049	2022-09-27	Arkansas	2978	96
5051	2022-09-27	Arkansas	25878	533
5053	2022-09-27	Arkansas	4982	63
5055	2022-09-27	Arkansas	18260	186
5057	2022-09-27	Arkansas	5311	75
5059	2022-09-27	Arkansas	12524	152
5061	2022-09-27	Arkansas	4371	55
5063	2022-09-27	Arkansas	12091	217
5065	2022-09-27	Arkansas	4429	76
5067	2022-09-27	Arkansas	6878	68
5069	2022-09-27	Arkansas	21348	298
5071	2022-09-27	Arkansas	7735	92
5073	2022-09-27	Arkansas	1442	30
5075	2022-09-27	Arkansas	6095	85
5077	2022-09-27	Arkansas	3239	63
5079	2022-09-27	Arkansas	5254	69
5081	2022-09-27	Arkansas	3669	106
5083	2022-09-27	Arkansas	5740	81
5085	2022-09-27	Arkansas	22750	259
5087	2022-09-27	Arkansas	4542	65
5089	2022-09-27	Arkansas	3876	92
5091	2022-09-27	Arkansas	10980	190
5093	2022-09-27	Arkansas	15393	221
5095	2022-09-27	Arkansas	2196	37
5097	2022-09-27	Arkansas	1702	59
5099	2022-09-27	Arkansas	2567	45
5101	2022-09-27	Arkansas	1923	50
5103	2022-09-27	Arkansas	6366	115
5105	2022-09-27	Arkansas	2855	39
5107	2022-09-27	Arkansas	5421	101
5109	2022-09-27	Arkansas	2797	46
5111	2022-09-27	Arkansas	9310	134
5113	2022-09-27	Arkansas	4497	153
5115	2022-09-27	Arkansas	20256	218
5117	2022-09-27	Arkansas	2265	43
5119	2022-09-27	Arkansas	120871	1255
5121	2022-09-27	Arkansas	5998	98
5125	2022-09-27	Arkansas	34959	363
5127	2022-09-27	Arkansas	2707	45
5129	2022-09-27	Arkansas	2373	50
5131	2022-09-27	Arkansas	37284	553
5133	2022-09-27	Arkansas	6802	78
5135	2022-09-27	Arkansas	5416	115
5123	2022-09-27	Arkansas	8176	100
5137	2022-09-27	Arkansas	3397	70
5139	2022-09-27	Arkansas	10686	190
5141	2022-09-27	Arkansas	3991	64
5143	2022-09-27	Arkansas	76663	660
5145	2022-09-27	Arkansas	25486	316
5147	2022-09-27	Arkansas	2138	32
5149	2022-09-27	Arkansas	7362	109
6001	2022-09-27	California	364989	2025
6003	2022-09-27	California	135	0
6005	2022-09-27	California	10875	90
6007	2022-09-27	California	48247	453
6009	2022-09-27	California	9002	133
6011	2022-09-27	California	5055	22
6013	2022-09-27	California	268511	1424
6015	2022-09-27	California	7808	57
6017	2022-09-27	California	36399	231
6019	2022-09-27	California	303985	2850
6021	2022-09-27	California	7358	48
6023	2022-09-27	California	26936	157
6025	2022-09-27	California	80889	957
6027	2022-09-27	California	5440	59
6029	2022-09-27	California	286398	2540
6031	2022-09-27	California	63360	456
6033	2022-09-27	California	13925	146
6035	2022-09-27	California	11394	69
6037	2022-09-27	California	3452430	33576
6039	2022-09-27	California	52126	374
6041	2022-09-27	California	50108	310
6043	2022-09-27	California	4179	38
6045	2022-09-27	California	20375	136
6047	2022-09-27	California	83533	862
6049	2022-09-27	California	1190	11
6051	2022-09-27	California	3451	7
6053	2022-09-27	California	114742	783
6055	2022-09-27	California	33513	160
6057	2022-09-27	California	20680	132
6059	2022-09-27	California	725251	7432
6061	2022-09-27	California	84745	660
6063	2022-09-27	California	4063	13
6065	2022-09-27	California	728108	6567
6067	2022-09-27	California	378249	3444
6069	2022-09-27	California	17079	106
6071	2022-09-27	California	697776	8097
6073	2022-09-27	California	991092	5487
6075	2022-09-27	California	188900	1031
6077	2022-09-27	California	210854	2306
6079	2022-09-27	California	70080	522
6081	2022-09-27	California	177667	830
6083	2022-09-27	California	112055	720
6085	2022-09-27	California	448067	2486
6087	2022-09-27	California	66115	274
6089	2022-09-27	California	42141	687
6091	2022-09-27	California	363	5
6093	2022-09-27	California	8541	107
6095	2022-09-27	California	112089	463
6097	2022-09-27	California	111609	519
6099	2022-09-27	California	158598	1752
6101	2022-09-27	California	26665	235
6103	2022-09-27	California	16596	210
6105	2022-09-27	California	1770	20
6107	2022-09-27	California	157584	1530
6109	2022-09-27	California	16715	196
6111	2022-09-27	California	223150	1566
6113	2022-09-27	California	51513	335
6115	2022-09-27	California	20531	129
8001	2022-09-27	Colorado	159727	1457
8003	2022-09-27	Colorado	5366	63
8005	2022-09-27	Colorado	188531	1376
8007	2022-09-27	Colorado	3293	17
8009	2022-09-27	Colorado	979	15
8011	2022-09-27	Colorado	2810	49
8013	2022-09-27	Colorado	85150	399
8014	2022-09-27	Colorado	17117	123
8015	2022-09-27	Colorado	5422	56
8017	2022-09-27	Colorado	361	11
8019	2022-09-27	Colorado	1848	13
8021	2022-09-27	Colorado	2134	57
8023	2022-09-27	Colorado	874	19
8025	2022-09-27	Colorado	3470	31
8027	2022-09-27	Colorado	777	22
8029	2022-09-27	Colorado	6789	147
8031	2022-09-27	Colorado	210738	1434
8033	2022-09-27	Colorado	391	9
8035	2022-09-27	Colorado	96748	502
8037	2022-09-27	Colorado	18058	37
8041	2022-09-27	Colorado	221544	1794
8039	2022-09-27	Colorado	5524	44
8043	2022-09-27	Colorado	17374	199
8045	2022-09-27	Colorado	17118	102
8047	2022-09-27	Colorado	1128	6
8049	2022-09-27	Colorado	3865	29
8051	2022-09-27	Colorado	3794	15
8053	2022-09-27	Colorado	154	0
8055	2022-09-27	Colorado	1664	38
8057	2022-09-27	Colorado	193	0
8059	2022-09-27	Colorado	151231	1445
8061	2022-09-27	Colorado	360	6
8063	2022-09-27	Colorado	1796	33
8067	2022-09-27	Colorado	14802	90
8065	2022-09-27	Colorado	2114	2
8069	2022-09-27	Colorado	100078	552
8071	2022-09-27	Colorado	4018	47
8073	2022-09-27	Colorado	2344	11
8075	2022-09-27	Colorado	8173	115
8077	2022-09-27	Colorado	47993	603
8079	2022-09-27	Colorado	291	3
8081	2022-09-27	Colorado	3425	54
8083	2022-09-27	Colorado	6995	84
8085	2022-09-27	Colorado	10567	172
8087	2022-09-27	Colorado	6472	140
8089	2022-09-27	Colorado	4947	132
8091	2022-09-27	Colorado	1048	6
8093	2022-09-27	Colorado	3337	22
8095	2022-09-27	Colorado	1008	19
8097	2022-09-27	Colorado	7798	8
8099	2022-09-27	Colorado	2935	51
8101	2022-09-27	Colorado	56573	840
8103	2022-09-27	Colorado	2037	13
8105	2022-09-27	Colorado	3360	46
8107	2022-09-27	Colorado	7458	32
8109	2022-09-27	Colorado	1411	12
8111	2022-09-27	Colorado	301	0
8113	2022-09-27	Colorado	2599	8
8115	2022-09-27	Colorado	534	10
8117	2022-09-27	Colorado	11514	15
8119	2022-09-27	Colorado	5638	60
8121	2022-09-27	Colorado	1174	31
8123	2022-09-27	Colorado	99576	736
8125	2022-09-27	Colorado	2186	27
9001	2022-09-27	Connecticut	243545	2817
9003	2022-09-27	Connecticut	216511	3273
9005	2022-09-27	Connecticut	38030	481
9007	2022-09-27	Connecticut	35436	496
9009	2022-09-27	Connecticut	235498	2952
9011	2022-09-27	Connecticut	67654	721
9013	2022-09-27	Connecticut	25428	296
9015	2022-09-27	Connecticut	29440	319
10001	2022-09-27	Delaware	59792	695
10003	2022-09-27	Delaware	175123	1505
10005	2022-09-27	Delaware	71991	904
11001	2022-09-27	District of Columbia	168301	1383
12001	2022-09-27	Florida	83806	743
12003	2022-09-27	Florida	10030	148
12005	2022-09-27	Florida	52636	856
12007	2022-09-27	Florida	8716	168
12009	2022-09-27	Florida	165122	2340
12011	2022-09-27	Florida	729934	6356
12013	2022-09-27	Florida	4650	103
12015	2022-09-27	Florida	44870	901
12017	2022-09-27	Florida	36614	1059
12019	2022-09-27	Florida	63493	915
12021	2022-09-27	Florida	98669	1096
12023	2022-09-27	Florida	24398	435
12027	2022-09-27	Florida	10763	160
12029	2022-09-27	Florida	4704	80
12031	2022-09-27	Florida	300678	3658
12033	2022-09-27	Florida	90160	1412
12035	2022-09-27	Florida	27161	393
12037	2022-09-27	Florida	3398	55
12039	2022-09-27	Florida	16494	228
12041	2022-09-27	Florida	5350	106
12043	2022-09-27	Florida	2220	37
12045	2022-09-27	Florida	4794	85
12047	2022-09-27	Florida	4328	56
12049	2022-09-27	Florida	9906	133
12051	2022-09-27	Florida	13261	164
12053	2022-09-27	Florida	51021	1207
12055	2022-09-27	Florida	29022	746
12057	2022-09-27	Florida	454386	4136
12059	2022-09-27	Florida	6088	102
12061	2022-09-27	Florida	40099	716
12063	2022-09-27	Florida	16982	288
12065	2022-09-27	Florida	4733	66
12067	2022-09-27	Florida	3044	62
12069	2022-09-27	Florida	102582	1658
12071	2022-09-27	Florida	227092	2377
12073	2022-09-27	Florida	106276	733
12075	2022-09-27	Florida	12074	177
12077	2022-09-27	Florida	2870	31
12079	2022-09-27	Florida	6706	102
12081	2022-09-27	Florida	116123	1593
12083	2022-09-27	Florida	99390	2308
12085	2022-09-27	Florida	37632	698
12086	2022-09-27	Florida	1451171	11724
12087	2022-09-27	Florida	21415	131
12089	2022-09-27	Florida	25806	320
12091	2022-09-27	Florida	59056	731
12093	2022-09-27	Florida	12009	190
12095	2022-09-27	Florida	452148	3088
12097	2022-09-27	Florida	136434	1216
12099	2022-09-27	Florida	448487	5607
12101	2022-09-27	Florida	150364	2118
12103	2022-09-27	Florida	258739	3745
12105	2022-09-27	Florida	244573	3231
12107	2022-09-27	Florida	20406	446
12113	2022-09-27	Florida	56212	666
12115	2022-09-27	Florida	112705	1849
12117	2022-09-27	Florida	125311	1206
12109	2022-09-27	Florida	74008	633
12111	2022-09-27	Florida	90480	1331
12119	2022-09-27	Florida	27619	645
12121	2022-09-27	Florida	15038	338
12123	2022-09-27	Florida	7789	108
12125	2022-09-27	Florida	4892	121
12127	2022-09-27	Florida	141936	2176
12129	2022-09-27	Florida	11563	136
12131	2022-09-27	Florida	18826	223
12133	2022-09-27	Florida	7389	117
13001	2022-09-27	Georgia	5160	135
13003	2022-09-27	Georgia	2400	54
13005	2022-09-27	Georgia	4003	80
13007	2022-09-27	Georgia	610	15
13009	2022-09-27	Georgia	10822	253
13011	2022-09-27	Georgia	4402	99
13013	2022-09-27	Georgia	24717	269
13015	2022-09-27	Georgia	33553	462
13017	2022-09-27	Georgia	4783	122
13019	2022-09-27	Georgia	5569	88
13021	2022-09-27	Georgia	43135	810
13023	2022-09-27	Georgia	3737	105
13025	2022-09-27	Georgia	4574	114
13027	2022-09-27	Georgia	3876	93
13029	2022-09-27	Georgia	10588	101
13031	2022-09-27	Georgia	17383	273
13033	2022-09-27	Georgia	6009	115
13035	2022-09-27	Georgia	7284	166
13037	2022-09-27	Georgia	1518	24
13039	2022-09-27	Georgia	13197	131
13043	2022-09-27	Georgia	2502	105
13045	2022-09-27	Georgia	26918	478
13047	2022-09-27	Georgia	16495	191
13049	2022-09-27	Georgia	3325	64
13051	2022-09-27	Georgia	75380	956
13053	2022-09-27	Georgia	7689	22
13055	2022-09-27	Georgia	7399	143
13057	2022-09-27	Georgia	72132	663
13059	2022-09-27	Georgia	33667	247
13061	2022-09-27	Georgia	587	6
13063	2022-09-27	Georgia	73832	1033
13065	2022-09-27	Georgia	2394	43
13067	2022-09-27	Georgia	204528	1956
13069	2022-09-27	Georgia	11629	294
13071	2022-09-27	Georgia	13142	265
13073	2022-09-27	Georgia	40994	409
13075	2022-09-27	Georgia	5476	78
13077	2022-09-27	Georgia	38632	511
13079	2022-09-27	Georgia	2109	62
13081	2022-09-27	Georgia	5396	138
13083	2022-09-27	Georgia	3838	35
13085	2022-09-27	Georgia	7995	105
13089	2022-09-27	Georgia	181124	1847
13087	2022-09-27	Georgia	8209	136
13091	2022-09-27	Georgia	5732	162
13093	2022-09-27	Georgia	2723	73
13095	2022-09-27	Georgia	22974	525
13097	2022-09-27	Georgia	40786	433
13099	2022-09-27	Georgia	3056	65
13101	2022-09-27	Georgia	1022	12
13103	2022-09-27	Georgia	15728	207
13105	2022-09-27	Georgia	5043	116
13107	2022-09-27	Georgia	6542	164
13109	2022-09-27	Georgia	2750	67
13111	2022-09-27	Georgia	5599	175
13113	2022-09-27	Georgia	27396	359
13115	2022-09-27	Georgia	30657	539
13117	2022-09-27	Georgia	64453	431
13119	2022-09-27	Georgia	5873	106
13121	2022-09-27	Georgia	260460	2510
13123	2022-09-27	Georgia	7861	186
13125	2022-09-27	Georgia	669	26
13127	2022-09-27	Georgia	26198	420
13129	2022-09-27	Georgia	19063	282
13131	2022-09-27	Georgia	6639	112
13133	2022-09-27	Georgia	4518	88
13135	2022-09-27	Georgia	241544	1996
13137	2022-09-27	Georgia	11155	276
13139	2022-09-27	Georgia	61026	883
13141	2022-09-27	Georgia	1873	90
13143	2022-09-27	Georgia	6054	182
13145	2022-09-27	Georgia	6780	118
13147	2022-09-27	Georgia	5312	107
13149	2022-09-27	Georgia	2462	58
13151	2022-09-27	Georgia	67475	723
13153	2022-09-27	Georgia	46888	522
13155	2022-09-27	Georgia	2129	53
13157	2022-09-27	Georgia	23508	302
13159	2022-09-27	Georgia	3553	79
13161	2022-09-27	Georgia	4269	75
13163	2022-09-27	Georgia	4055	116
13165	2022-09-27	Georgia	1687	67
13167	2022-09-27	Georgia	2500	80
13169	2022-09-27	Georgia	5753	118
13171	2022-09-27	Georgia	5530	124
13173	2022-09-27	Georgia	2590	27
13175	2022-09-27	Georgia	15508	319
13177	2022-09-27	Georgia	8408	109
13179	2022-09-27	Georgia	14942	157
13181	2022-09-27	Georgia	1761	37
13183	2022-09-27	Georgia	3332	35
13185	2022-09-27	Georgia	35348	417
13187	2022-09-27	Georgia	8392	135
13193	2022-09-27	Georgia	2535	51
13195	2022-09-27	Georgia	7638	118
13197	2022-09-27	Georgia	1775	55
13189	2022-09-27	Georgia	5838	110
13191	2022-09-27	Georgia	2742	39
13199	2022-09-27	Georgia	5210	151
13201	2022-09-27	Georgia	1932	30
13205	2022-09-27	Georgia	6040	123
13207	2022-09-27	Georgia	6701	181
13209	2022-09-27	Georgia	2241	55
13211	2022-09-27	Georgia	5335	71
13213	2022-09-27	Georgia	12934	198
13215	2022-09-27	Georgia	43407	879
13217	2022-09-27	Georgia	28629	474
13219	2022-09-27	Georgia	9969	113
13221	2022-09-27	Georgia	3594	62
13223	2022-09-27	Georgia	43933	453
13225	2022-09-27	Georgia	7513	141
13227	2022-09-27	Georgia	9562	179
13229	2022-09-27	Georgia	6236	140
13231	2022-09-27	Georgia	6156	105
13233	2022-09-27	Georgia	13272	203
13235	2022-09-27	Georgia	2514	82
13237	2022-09-27	Georgia	5032	111
13239	2022-09-27	Georgia	511	5
13241	2022-09-27	Georgia	3972	103
13243	2022-09-27	Georgia	1708	48
13245	2022-09-27	Georgia	57374	925
13247	2022-09-27	Georgia	22104	332
13249	2022-09-27	Georgia	1333	11
13251	2022-09-27	Georgia	3017	72
13253	2022-09-27	Georgia	2394	34
13255	2022-09-27	Georgia	18313	435
13257	2022-09-27	Georgia	6916	172
13259	2022-09-27	Georgia	2972	35
13261	2022-09-27	Georgia	8115	178
13263	2022-09-27	Georgia	1297	34
13265	2022-09-27	Georgia	319	4
13267	2022-09-27	Georgia	5615	141
13269	2022-09-27	Georgia	2281	51
13271	2022-09-27	Georgia	3380	88
13273	2022-09-27	Georgia	2392	70
13275	2022-09-27	Georgia	13574	224
13277	2022-09-27	Georgia	13126	233
13279	2022-09-27	Georgia	7728	208
13281	2022-09-27	Georgia	2702	118
13283	2022-09-27	Georgia	1788	68
13285	2022-09-27	Georgia	17881	398
13287	2022-09-27	Georgia	3005	64
13289	2022-09-27	Georgia	1766	71
13291	2022-09-27	Georgia	5721	167
13293	2022-09-27	Georgia	9012	247
13295	2022-09-27	Georgia	19216	260
13297	2022-09-27	Georgia	24922	453
13299	2022-09-27	Georgia	11093	293
13301	2022-09-27	Georgia	1220	31
13303	2022-09-27	Georgia	4968	139
13305	2022-09-27	Georgia	8532	216
13307	2022-09-27	Georgia	510	9
13309	2022-09-27	Georgia	1526	39
13311	2022-09-27	Georgia	7832	170
13313	2022-09-27	Georgia	37895	466
13315	2022-09-27	Georgia	2313	71
13317	2022-09-27	Georgia	2552	55
13319	2022-09-27	Georgia	2561	62
13321	2022-09-27	Georgia	5304	122
15001	2022-09-27	Hawaii	38358	217
15003	2022-09-27	Hawaii	237922	1247
15005	2022-09-27	Hawaii	1	0
15007	2022-09-27	Hawaii	17282	45
15009	2022-09-27	Hawaii	41057	158
16001	2022-09-27	Idaho	152276	1074
16003	2022-09-27	Idaho	767	15
16005	2022-09-27	Idaho	23212	262
16007	2022-09-27	Idaho	1062	17
16009	2022-09-27	Idaho	2661	42
16011	2022-09-27	Idaho	10701	167
16013	2022-09-27	Idaho	6847	32
16015	2022-09-27	Idaho	1253	14
16017	2022-09-27	Idaho	9801	192
16019	2022-09-27	Idaho	33690	292
16021	2022-09-27	Idaho	2286	67
16023	2022-09-27	Idaho	520	11
16025	2022-09-27	Idaho	169	2
16027	2022-09-27	Idaho	67339	708
16029	2022-09-27	Idaho	1597	35
16031	2022-09-27	Idaho	5336	55
16033	2022-09-27	Idaho	115	1
16035	2022-09-27	Idaho	2515	36
16037	2022-09-27	Idaho	673	9
16039	2022-09-27	Idaho	8386	71
16041	2022-09-27	Idaho	2501	30
16043	2022-09-27	Idaho	2333	30
16045	2022-09-27	Idaho	3976	82
16047	2022-09-27	Idaho	3713	59
16049	2022-09-27	Idaho	3411	57
16051	2022-09-27	Idaho	6509	65
16053	2022-09-27	Idaho	6805	67
16055	2022-09-27	Idaho	45255	633
16057	2022-09-27	Idaho	7452	53
16059	2022-09-27	Idaho	1647	28
16061	2022-09-27	Idaho	1270	30
16063	2022-09-27	Idaho	1207	15
16065	2022-09-27	Idaho	13404	55
16067	2022-09-27	Idaho	4616	66
16069	2022-09-27	Idaho	9948	156
16071	2022-09-27	Idaho	900	11
16073	2022-09-27	Idaho	2502	53
16075	2022-09-27	Idaho	6300	89
16077	2022-09-27	Idaho	1606	21
16079	2022-09-27	Idaho	2998	79
16081	2022-09-27	Idaho	2854	9
16083	2022-09-27	Idaho	27117	305
16085	2022-09-27	Idaho	2973	16
16087	2022-09-27	Idaho	2547	58
17001	2022-09-27	Illinois	25865	246
17003	2022-09-27	Illinois	1493	16
17005	2022-09-27	Illinois	4942	37
17007	2022-09-27	Illinois	16277	132
17009	2022-09-27	Illinois	2678	23
17011	2022-09-27	Illinois	9536	142
17013	2022-09-27	Illinois	1765	8
17015	2022-09-27	Illinois	4804	52
17017	2022-09-27	Illinois	5258	46
17019	2022-09-27	Illinois	80037	311
17021	2022-09-27	Illinois	11928	133
17023	2022-09-27	Illinois	5550	61
17025	2022-09-27	Illinois	5537	77
17027	2022-09-27	Illinois	13429	124
17029	2022-09-27	Illinois	17803	182
17031	2022-09-27	Illinois	1404769	15341
17033	2022-09-27	Illinois	7332	63
17035	2022-09-27	Illinois	3792	51
17039	2022-09-27	Illinois	4923	47
17037	2022-09-27	Illinois	29448	208
17041	2022-09-27	Illinois	7472	65
17043	2022-09-27	Illinois	266107	1874
17045	2022-09-27	Illinois	6080	80
17047	2022-09-27	Illinois	2010	29
17049	2022-09-27	Illinois	12076	153
17051	2022-09-27	Illinois	8141	104
17053	2022-09-27	Illinois	5074	77
17055	2022-09-27	Illinois	14331	186
17057	2022-09-27	Illinois	11913	141
17059	2022-09-27	Illinois	1718	21
17061	2022-09-27	Illinois	4022	60
17063	2022-09-27	Illinois	14943	147
17065	2022-09-27	Illinois	2471	35
17067	2022-09-27	Illinois	5008	60
17069	2022-09-27	Illinois	1330	20
17071	2022-09-27	Illinois	1409	28
17073	2022-09-27	Illinois	14780	152
17075	2022-09-27	Illinois	8200	126
17077	2022-09-27	Illinois	18865	140
17079	2022-09-27	Illinois	3036	34
17081	2022-09-27	Illinois	12666	178
17083	2022-09-27	Illinois	7343	95
17085	2022-09-27	Illinois	4753	44
17087	2022-09-27	Illinois	5244	48
17089	2022-09-27	Illinois	153648	1220
17091	2022-09-27	Illinois	33650	386
17093	2022-09-27	Illinois	38619	175
17095	2022-09-27	Illinois	14863	257
17099	2022-09-27	Illinois	34231	453
17097	2022-09-27	Illinois	192066	1538
17101	2022-09-27	Illinois	6343	54
17103	2022-09-27	Illinois	10567	123
17105	2022-09-27	Illinois	12263	150
17107	2022-09-27	Illinois	11463	107
17115	2022-09-27	Illinois	36574	368
17117	2022-09-27	Illinois	14841	173
17119	2022-09-27	Illinois	82007	895
17121	2022-09-27	Illinois	13699	222
17123	2022-09-27	Illinois	3232	35
17125	2022-09-27	Illinois	4493	66
17127	2022-09-27	Illinois	4369	74
17109	2022-09-27	Illinois	8458	116
17111	2022-09-27	Illinois	90971	524
17113	2022-09-27	Illinois	60014	350
17129	2022-09-27	Illinois	4153	29
17131	2022-09-27	Illinois	4660	51
17133	2022-09-27	Illinois	10701	132
17135	2022-09-27	Illinois	11276	114
17137	2022-09-27	Illinois	11352	152
17139	2022-09-27	Illinois	4639	57
17141	2022-09-27	Illinois	16185	139
17143	2022-09-27	Illinois	55226	560
17145	2022-09-27	Illinois	8542	107
17147	2022-09-27	Illinois	5120	29
17149	2022-09-27	Illinois	5698	72
17151	2022-09-27	Illinois	1126	9
17153	2022-09-27	Illinois	1948	22
17155	2022-09-27	Illinois	1325	11
17157	2022-09-27	Illinois	11988	138
17159	2022-09-27	Illinois	5864	86
17161	2022-09-27	Illinois	39484	544
17165	2022-09-27	Illinois	9552	115
17167	2022-09-27	Illinois	69292	462
17169	2022-09-27	Illinois	2328	29
17171	2022-09-27	Illinois	1436	13
17173	2022-09-27	Illinois	7058	82
17163	2022-09-27	Illinois	82156	808
17175	2022-09-27	Illinois	1731	39
17177	2022-09-27	Illinois	13656	191
17179	2022-09-27	Illinois	42687	523
17181	2022-09-27	Illinois	6357	71
17183	2022-09-27	Illinois	32474	320
17185	2022-09-27	Illinois	4400	32
17187	2022-09-27	Illinois	4684	90
17189	2022-09-27	Illinois	3863	42
17191	2022-09-27	Illinois	6247	90
17193	2022-09-27	Illinois	5075	63
17195	2022-09-27	Illinois	18293	279
17197	2022-09-27	Illinois	199480	1687
17199	2022-09-27	Illinois	26693	276
17201	2022-09-27	Illinois	92245	893
17203	2022-09-27	Illinois	11805	129
18001	2022-09-27	Indiana	8075	118
18003	2022-09-27	Indiana	116264	1226
18005	2022-09-27	Indiana	24751	259
18007	2022-09-27	Indiana	2794	24
18009	2022-09-27	Indiana	3463	73
18011	2022-09-27	Indiana	16817	197
18013	2022-09-27	Indiana	2875	63
18015	2022-09-27	Indiana	4677	72
18017	2022-09-27	Indiana	13156	177
18019	2022-09-27	Indiana	37045	413
18021	2022-09-27	Indiana	7711	95
18023	2022-09-27	Indiana	10194	139
18025	2022-09-27	Indiana	2855	41
18027	2022-09-27	Indiana	8376	156
18033	2022-09-27	Indiana	12722	157
18029	2022-09-27	Indiana	15114	146
18031	2022-09-27	Indiana	7956	151
18035	2022-09-27	Indiana	28297	466
18037	2022-09-27	Indiana	13966	167
18039	2022-09-27	Indiana	58640	757
18041	2022-09-27	Indiana	7699	152
18043	2022-09-27	Indiana	22235	317
18045	2022-09-27	Indiana	6082	107
18047	2022-09-27	Indiana	4920	69
18049	2022-09-27	Indiana	5409	109
18051	2022-09-27	Indiana	13352	154
18053	2022-09-27	Indiana	19545	371
18055	2022-09-27	Indiana	8342	144
18057	2022-09-27	Indiana	91982	692
18059	2022-09-27	Indiana	23405	275
18061	2022-09-27	Indiana	12286	148
18063	2022-09-27	Indiana	45208	581
18065	2022-09-27	Indiana	14891	242
18067	2022-09-27	Indiana	28451	466
18069	2022-09-27	Indiana	13236	167
18071	2022-09-27	Indiana	14147	136
18073	2022-09-27	Indiana	10354	155
18075	2022-09-27	Indiana	5466	83
18077	2022-09-27	Indiana	10512	167
18079	2022-09-27	Indiana	7771	117
18081	2022-09-27	Indiana	47840	642
18083	2022-09-27	Indiana	12794	158
18085	2022-09-27	Indiana	21746	244
18087	2022-09-27	Indiana	6283	105
18091	2022-09-27	Indiana	29703	381
18089	2022-09-27	Indiana	124471	1897
18093	2022-09-27	Indiana	13701	272
18095	2022-09-27	Indiana	37016	670
18097	2022-09-27	Indiana	253726	3103
18099	2022-09-27	Indiana	13329	202
18101	2022-09-27	Indiana	2446	27
18103	2022-09-27	Indiana	10239	167
18105	2022-09-27	Indiana	32622	295
18107	2022-09-27	Indiana	11605	167
18109	2022-09-27	Indiana	18452	292
18111	2022-09-27	Indiana	2929	71
18113	2022-09-27	Indiana	14716	165
18115	2022-09-27	Indiana	1639	19
18117	2022-09-27	Indiana	5592	100
18119	2022-09-27	Indiana	6564	131
18121	2022-09-27	Indiana	4050	49
18123	2022-09-27	Indiana	5449	72
18125	2022-09-27	Indiana	4176	51
18127	2022-09-27	Indiana	44385	584
18129	2022-09-27	Indiana	7385	60
18131	2022-09-27	Indiana	3357	87
18133	2022-09-27	Indiana	10482	132
18135	2022-09-27	Indiana	6574	155
18137	2022-09-27	Indiana	9353	143
18139	2022-09-27	Indiana	5553	59
18143	2022-09-27	Indiana	8926	112
18145	2022-09-27	Indiana	15596	185
18147	2022-09-27	Indiana	5770	61
18141	2022-09-27	Indiana	79741	916
18149	2022-09-27	Indiana	5292	107
18151	2022-09-27	Indiana	10753	122
18153	2022-09-27	Indiana	5971	77
18155	2022-09-27	Indiana	2510	20
18157	2022-09-27	Indiana	57758	425
18159	2022-09-27	Indiana	3821	89
18161	2022-09-27	Indiana	2199	22
18163	2022-09-27	Indiana	66146	655
18165	2022-09-27	Indiana	4630	80
18167	2022-09-27	Indiana	32909	424
18169	2022-09-27	Indiana	9660	163
18171	2022-09-27	Indiana	2281	30
18173	2022-09-27	Indiana	23275	248
18175	2022-09-27	Indiana	6683	90
18177	2022-09-27	Indiana	21808	348
18179	2022-09-27	Indiana	7107	137
18181	2022-09-27	Indiana	7794	98
18183	2022-09-27	Indiana	10682	86
19001	2022-09-27	Iowa	1726	51
19003	2022-09-27	Iowa	888	14
19005	2022-09-27	Iowa	3090	62
19007	2022-09-27	Iowa	3221	71
19009	2022-09-27	Iowa	1226	21
19011	2022-09-27	Iowa	6746	80
19013	2022-09-27	Iowa	36803	500
19015	2022-09-27	Iowa	6166	63
19017	2022-09-27	Iowa	6084	85
19019	2022-09-27	Iowa	5211	65
19021	2022-09-27	Iowa	6719	59
19023	2022-09-27	Iowa	3594	56
19025	2022-09-27	Iowa	2899	26
19027	2022-09-27	Iowa	5409	76
19029	2022-09-27	Iowa	3112	81
19031	2022-09-27	Iowa	4711	43
19033	2022-09-27	Iowa	12205	173
19035	2022-09-27	Iowa	3383	69
19037	2022-09-27	Iowa	2991	34
19039	2022-09-27	Iowa	2529	41
19041	2022-09-27	Iowa	4545	48
19043	2022-09-27	Iowa	3815	75
19045	2022-09-27	Iowa	13168	156
19047	2022-09-27	Iowa	4786	55
19049	2022-09-27	Iowa	25727	151
19051	2022-09-27	Iowa	1734	35
19053	2022-09-27	Iowa	1732	28
19055	2022-09-27	Iowa	4489	69
19057	2022-09-27	Iowa	10413	149
19059	2022-09-27	Iowa	4498	76
19061	2022-09-27	Iowa	29098	310
19063	2022-09-27	Iowa	2540	55
19065	2022-09-27	Iowa	4677	81
19067	2022-09-27	Iowa	3998	66
19069	2022-09-27	Iowa	2797	47
19071	2022-09-27	Iowa	1545	26
19073	2022-09-27	Iowa	1912	26
19075	2022-09-27	Iowa	2825	46
19077	2022-09-27	Iowa	2628	47
19079	2022-09-27	Iowa	3771	79
19081	2022-09-27	Iowa	3107	49
19083	2022-09-27	Iowa	4680	64
19085	2022-09-27	Iowa	3678	95
19087	2022-09-27	Iowa	6154	78
19089	2022-09-27	Iowa	2235	37
19091	2022-09-27	Iowa	2910	39
19093	2022-09-27	Iowa	1977	49
19095	2022-09-27	Iowa	4108	50
19097	2022-09-27	Iowa	5242	71
19099	2022-09-27	Iowa	9820	119
19101	2022-09-27	Iowa	4013	54
19103	2022-09-27	Iowa	41998	164
19105	2022-09-27	Iowa	6114	79
19107	2022-09-27	Iowa	2312	52
19109	2022-09-27	Iowa	4174	92
19111	2022-09-27	Iowa	8691	146
19113	2022-09-27	Iowa	60375	622
19115	2022-09-27	Iowa	2778	64
19117	2022-09-27	Iowa	2019	33
19119	2022-09-27	Iowa	2950	52
19121	2022-09-27	Iowa	3480	42
19123	2022-09-27	Iowa	5479	92
19125	2022-09-27	Iowa	8377	127
19127	2022-09-27	Iowa	10702	124
19129	2022-09-27	Iowa	3775	45
19131	2022-09-27	Iowa	2678	49
19133	2022-09-27	Iowa	1960	51
19135	2022-09-27	Iowa	2081	52
19137	2022-09-27	Iowa	2441	57
19139	2022-09-27	Iowa	10683	132
19141	2022-09-27	Iowa	3717	73
19143	2022-09-27	Iowa	1459	22
19145	2022-09-27	Iowa	3638	49
19147	2022-09-27	Iowa	2254	40
19149	2022-09-27	Iowa	6768	106
19151	2022-09-27	Iowa	1807	27
19153	2022-09-27	Iowa	140630	1155
19155	2022-09-27	Iowa	26571	329
19157	2022-09-27	Iowa	4327	63
19159	2022-09-27	Iowa	1236	36
19161	2022-09-27	Iowa	2706	41
19163	2022-09-27	Iowa	46429	417
19165	2022-09-27	Iowa	2976	53
19167	2022-09-27	Iowa	8526	91
19169	2022-09-27	Iowa	22083	93
19171	2022-09-27	Iowa	4363	96
19173	2022-09-27	Iowa	1439	23
19175	2022-09-27	Iowa	3018	54
19177	2022-09-27	Iowa	1551	27
19179	2022-09-27	Iowa	9879	214
19181	2022-09-27	Iowa	13840	142
19183	2022-09-27	Iowa	6371	83
19185	2022-09-27	Iowa	1423	33
19187	2022-09-27	Iowa	11497	174
19189	2022-09-27	Iowa	3287	47
19191	2022-09-27	Iowa	4302	54
19193	2022-09-27	Iowa	31535	348
19195	2022-09-27	Iowa	1932	17
19197	2022-09-27	Iowa	3870	69
20001	2022-09-27	Kansas	4621	59
20003	2022-09-27	Kansas	2420	35
20005	2022-09-27	Kansas	4761	38
20007	2022-09-27	Kansas	1131	11
20009	2022-09-27	Kansas	7169	110
20011	2022-09-27	Kansas	5145	57
20013	2022-09-27	Kansas	3020	49
20015	2022-09-27	Kansas	21081	208
20017	2022-09-27	Kansas	748	7
20019	2022-09-27	Kansas	924	18
20021	2022-09-27	Kansas	6900	90
20023	2022-09-27	Kansas	690	14
20025	2022-09-27	Kansas	541	8
20027	2022-09-27	Kansas	2234	39
20029	2022-09-27	Kansas	2447	43
20031	2022-09-27	Kansas	2666	44
20033	2022-09-27	Kansas	476	17
20035	2022-09-27	Kansas	11741	164
20037	2022-09-27	Kansas	13929	133
20039	2022-09-27	Kansas	671	20
20041	2022-09-27	Kansas	5499	88
20043	2022-09-27	Kansas	2708	35
20045	2022-09-27	Kansas	31637	153
20047	2022-09-27	Kansas	626	14
20049	2022-09-27	Kansas	629	12
20051	2022-09-27	Kansas	7902	88
20053	2022-09-27	Kansas	2275	32
20055	2022-09-27	Kansas	12734	116
20057	2022-09-27	Kansas	11658	119
20059	2022-09-27	Kansas	7646	93
20061	2022-09-27	Kansas	10706	82
20063	2022-09-27	Kansas	875	23
20065	2022-09-27	Kansas	632	15
20067	2022-09-27	Kansas	2636	38
20069	2022-09-27	Kansas	1313	22
20071	2022-09-27	Kansas	371	3
20073	2022-09-27	Kansas	2028	25
20075	2022-09-27	Kansas	533	4
20077	2022-09-27	Kansas	1784	29
20079	2022-09-27	Kansas	11036	126
20081	2022-09-27	Kansas	1045	12
20083	2022-09-27	Kansas	467	11
20085	2022-09-27	Kansas	4320	33
20087	2022-09-27	Kansas	5363	68
20089	2022-09-27	Kansas	885	15
20091	2022-09-27	Kansas	167536	1264
20093	2022-09-27	Kansas	1349	21
20095	2022-09-27	Kansas	2175	28
20097	2022-09-27	Kansas	714	7
20099	2022-09-27	Kansas	7379	80
20101	2022-09-27	Kansas	341	12
20103	2022-09-27	Kansas	22368	198
20105	2022-09-27	Kansas	671	11
20107	2022-09-27	Kansas	3244	32
20109	2022-09-27	Kansas	920	13
20111	2022-09-27	Kansas	11222	125
20115	2022-09-27	Kansas	3686	47
20117	2022-09-27	Kansas	2783	45
20113	2022-09-27	Kansas	8815	130
20119	2022-09-27	Kansas	1308	22
20121	2022-09-27	Kansas	8965	100
20123	2022-09-27	Kansas	1600	24
20125	2022-09-27	Kansas	10446	167
20127	2022-09-27	Kansas	1679	31
20129	2022-09-27	Kansas	667	11
20131	2022-09-27	Kansas	3622	61
20133	2022-09-27	Kansas	5709	71
20135	2022-09-27	Kansas	828	19
20137	2022-09-27	Kansas	2343	37
20139	2022-09-27	Kansas	4419	62
20141	2022-09-27	Kansas	909	19
20143	2022-09-27	Kansas	1353	23
20145	2022-09-27	Kansas	2391	25
20147	2022-09-27	Kansas	1539	31
20149	2022-09-27	Kansas	6578	64
20151	2022-09-27	Kansas	2098	35
20153	2022-09-27	Kansas	711	10
20155	2022-09-27	Kansas	21038	251
20157	2022-09-27	Kansas	1459	19
20159	2022-09-27	Kansas	2885	28
20161	2022-09-27	Kansas	15412	93
20163	2022-09-27	Kansas	1530	21
20165	2022-09-27	Kansas	879	20
20167	2022-09-27	Kansas	2018	39
20169	2022-09-27	Kansas	15995	250
20171	2022-09-27	Kansas	1440	35
20173	2022-09-27	Kansas	161553	1498
20175	2022-09-27	Kansas	7722	62
20177	2022-09-27	Kansas	56085	658
20179	2022-09-27	Kansas	860	17
20181	2022-09-27	Kansas	1663	22
20183	2022-09-27	Kansas	709	9
20185	2022-09-27	Kansas	1298	29
20187	2022-09-27	Kansas	466	9
20189	2022-09-27	Kansas	1733	24
20191	2022-09-27	Kansas	6232	74
20193	2022-09-27	Kansas	2770	29
20195	2022-09-27	Kansas	846	13
20197	2022-09-27	Kansas	1805	23
20199	2022-09-27	Kansas	470	8
20201	2022-09-27	Kansas	1527	25
20203	2022-09-27	Kansas	558	8
20205	2022-09-27	Kansas	3186	50
20207	2022-09-27	Kansas	930	17
20209	2022-09-27	Kansas	52201	524
21001	2022-09-27	Kentucky	7101	112
21003	2022-09-27	Kentucky	7770	116
21005	2022-09-27	Kentucky	7859	75
21007	2022-09-27	Kentucky	1649	36
21009	2022-09-27	Kentucky	15322	229
21011	2022-09-27	Kentucky	4084	50
21013	2022-09-27	Kentucky	10265	164
21015	2022-09-27	Kentucky	45808	326
21017	2022-09-27	Kentucky	7235	65
21019	2022-09-27	Kentucky	20428	193
21021	2022-09-27	Kentucky	10435	145
21023	2022-09-27	Kentucky	2574	28
21025	2022-09-27	Kentucky	4908	59
21027	2022-09-27	Kentucky	6119	88
21029	2022-09-27	Kentucky	26290	239
21031	2022-09-27	Kentucky	4374	55
21033	2022-09-27	Kentucky	4706	65
21035	2022-09-27	Kentucky	10650	100
21037	2022-09-27	Kentucky	28980	197
21039	2022-09-27	Kentucky	1252	21
21041	2022-09-27	Kentucky	4035	51
21043	2022-09-27	Kentucky	10899	114
21045	2022-09-27	Kentucky	4927	79
21047	2022-09-27	Kentucky	18859	227
21049	2022-09-27	Kentucky	13123	79
21051	2022-09-27	Kentucky	9068	101
21053	2022-09-27	Kentucky	4349	55
21055	2022-09-27	Kentucky	2618	52
21057	2022-09-27	Kentucky	2563	33
21059	2022-09-27	Kentucky	36042	410
21061	2022-09-27	Kentucky	2953	52
21063	2022-09-27	Kentucky	3180	22
21065	2022-09-27	Kentucky	4767	53
21067	2022-09-27	Kentucky	113195	657
21069	2022-09-27	Kentucky	4623	67
21071	2022-09-27	Kentucky	15183	235
21073	2022-09-27	Kentucky	16964	172
21075	2022-09-27	Kentucky	1394	33
21077	2022-09-27	Kentucky	2523	55
21079	2022-09-27	Kentucky	5564	86
21081	2022-09-27	Kentucky	9274	69
21083	2022-09-27	Kentucky	12744	194
21085	2022-09-27	Kentucky	9259	145
21087	2022-09-27	Kentucky	4334	48
21089	2022-09-27	Kentucky	15026	155
21091	2022-09-27	Kentucky	2940	27
21093	2022-09-27	Kentucky	40227	470
21095	2022-09-27	Kentucky	11562	219
21097	2022-09-27	Kentucky	7863	86
21099	2022-09-27	Kentucky	6230	109
21101	2022-09-27	Kentucky	16314	179
21103	2022-09-27	Kentucky	5813	54
21105	2022-09-27	Kentucky	1000	29
21107	2022-09-27	Kentucky	18003	271
21109	2022-09-27	Kentucky	4903	84
21111	2022-09-27	Kentucky	276486	2520
21113	2022-09-27	Kentucky	17711	153
21115	2022-09-27	Kentucky	8040	131
21117	2022-09-27	Kentucky	53115	448
21119	2022-09-27	Kentucky	5371	72
21121	2022-09-27	Kentucky	13928	158
21123	2022-09-27	Kentucky	4442	74
21125	2022-09-27	Kentucky	24650	266
21127	2022-09-27	Kentucky	5235	77
21129	2022-09-27	Kentucky	3272	56
21131	2022-09-27	Kentucky	4650	53
21133	2022-09-27	Kentucky	8828	132
21135	2022-09-27	Kentucky	5311	90
21137	2022-09-27	Kentucky	8090	140
21139	2022-09-27	Kentucky	2896	64
21141	2022-09-27	Kentucky	9585	130
21143	2022-09-27	Kentucky	3445	39
21151	2022-09-27	Kentucky	32825	294
21153	2022-09-27	Kentucky	4767	57
21155	2022-09-27	Kentucky	7489	89
21157	2022-09-27	Kentucky	9395	124
21159	2022-09-27	Kentucky	3944	49
21161	2022-09-27	Kentucky	5834	114
21145	2022-09-27	Kentucky	22482	294
21147	2022-09-27	Kentucky	6974	86
21149	2022-09-27	Kentucky	3050	57
21163	2022-09-27	Kentucky	6872	67
21165	2022-09-27	Kentucky	2168	34
21167	2022-09-27	Kentucky	8640	112
21169	2022-09-27	Kentucky	3355	72
21171	2022-09-27	Kentucky	4210	85
21173	2022-09-27	Kentucky	10445	114
21175	2022-09-27	Kentucky	6225	34
21177	2022-09-27	Kentucky	12126	128
21179	2022-09-27	Kentucky	17457	162
21181	2022-09-27	Kentucky	2501	33
21183	2022-09-27	Kentucky	8471	110
21185	2022-09-27	Kentucky	21362	155
21187	2022-09-27	Kentucky	2834	39
21189	2022-09-27	Kentucky	1922	32
21191	2022-09-27	Kentucky	3964	40
21193	2022-09-27	Kentucky	14400	196
21195	2022-09-27	Kentucky	22769	347
21197	2022-09-27	Kentucky	5827	48
21199	2022-09-27	Kentucky	20779	311
21201	2022-09-27	Kentucky	788	21
21203	2022-09-27	Kentucky	6137	63
21205	2022-09-27	Kentucky	8811	75
21207	2022-09-27	Kentucky	7536	92
21209	2022-09-27	Kentucky	21152	118
21211	2022-09-27	Kentucky	15633	171
21213	2022-09-27	Kentucky	6663	100
21215	2022-09-27	Kentucky	6328	64
21217	2022-09-27	Kentucky	10935	132
21219	2022-09-27	Kentucky	3339	46
21221	2022-09-27	Kentucky	4710	46
21223	2022-09-27	Kentucky	2504	44
21225	2022-09-27	Kentucky	5071	59
21227	2022-09-27	Kentucky	50068	398
21229	2022-09-27	Kentucky	4628	65
21231	2022-09-27	Kentucky	7575	100
21233	2022-09-27	Kentucky	4558	51
21235	2022-09-27	Kentucky	16068	217
21237	2022-09-27	Kentucky	3296	30
21239	2022-09-27	Kentucky	8673	56
22001	2022-09-27	Louisiana	18189	300
22003	2022-09-27	Louisiana	8763	143
22005	2022-09-27	Louisiana	39907	301
22007	2022-09-27	Louisiana	6391	71
22009	2022-09-27	Louisiana	13480	215
22011	2022-09-27	Louisiana	10604	144
22013	2022-09-27	Louisiana	4680	115
22015	2022-09-27	Louisiana	46868	516
22017	2022-09-27	Louisiana	81609	1204
22019	2022-09-27	Louisiana	63139	726
22021	2022-09-27	Louisiana	4280	55
22023	2022-09-27	Louisiana	1324	10
22025	2022-09-27	Louisiana	2988	59
22027	2022-09-27	Louisiana	3845	80
22029	2022-09-27	Louisiana	5922	91
22031	2022-09-27	Louisiana	9030	141
22033	2022-09-27	Louisiana	129006	1394
22035	2022-09-27	Louisiana	3006	38
22037	2022-09-27	Louisiana	7865	176
22039	2022-09-27	Louisiana	9837	161
22041	2022-09-27	Louisiana	8433	185
22043	2022-09-27	Louisiana	6831	96
22045	2022-09-27	Louisiana	22969	270
22047	2022-09-27	Louisiana	10905	154
22049	2022-09-27	Louisiana	5216	77
22051	2022-09-27	Louisiana	133626	1402
22053	2022-09-27	Louisiana	7890	170
22059	2022-09-27	Louisiana	4885	66
22055	2022-09-27	Louisiana	72852	516
22057	2022-09-27	Louisiana	32649	389
22061	2022-09-27	Louisiana	14553	154
22063	2022-09-27	Louisiana	41773	480
22065	2022-09-27	Louisiana	3719	62
22067	2022-09-27	Louisiana	8087	142
22069	2022-09-27	Louisiana	12163	182
22071	2022-09-27	Louisiana	106362	1166
22073	2022-09-27	Louisiana	59283	798
22075	2022-09-27	Louisiana	7418	48
22077	2022-09-27	Louisiana	7406	96
22079	2022-09-27	Louisiana	37833	604
22081	2022-09-27	Louisiana	2415	56
22083	2022-09-27	Louisiana	8164	104
22085	2022-09-27	Louisiana	7649	121
22087	2022-09-27	Louisiana	13379	117
22089	2022-09-27	Louisiana	16218	150
22091	2022-09-27	Louisiana	2129	25
22093	2022-09-27	Louisiana	6911	78
22095	2022-09-27	Louisiana	12492	186
22097	2022-09-27	Louisiana	26066	425
22099	2022-09-27	Louisiana	14528	197
22101	2022-09-27	Louisiana	14639	277
22103	2022-09-27	Louisiana	85804	903
22105	2022-09-27	Louisiana	41305	641
22107	2022-09-27	Louisiana	1238	13
22109	2022-09-27	Louisiana	36747	430
22111	2022-09-27	Louisiana	8382	142
22113	2022-09-27	Louisiana	17981	238
22115	2022-09-27	Louisiana	11173	195
22117	2022-09-27	Louisiana	15289	264
22119	2022-09-27	Louisiana	13624	193
22121	2022-09-27	Louisiana	8507	93
22123	2022-09-27	Louisiana	4299	71
22125	2022-09-27	Louisiana	3097	48
22127	2022-09-27	Louisiana	5206	67
23001	2022-09-27	Maine	25864	302
23003	2022-09-27	Maine	16696	185
23005	2022-09-27	Maine	60481	415
23007	2022-09-27	Maine	6759	68
23009	2022-09-27	Maine	9210	99
23011	2022-09-27	Maine	27550	264
23013	2022-09-27	Maine	7385	44
23015	2022-09-27	Maine	6358	40
23017	2022-09-27	Maine	13361	160
23019	2022-09-27	Maine	33694	357
23021	2022-09-27	Maine	3528	39
23023	2022-09-27	Maine	6330	40
23025	2022-09-27	Maine	11504	117
23027	2022-09-27	Maine	7385	67
23029	2022-09-27	Maine	5114	61
23031	2022-09-27	Maine	47487	317
24001	2022-09-27	Maryland	20054	378
24003	2022-09-27	Maryland	109994	1177
24005	2022-09-27	Maryland	157913	2622
24510	2022-09-27	Maryland	136617	1868
24009	2022-09-27	Maryland	13550	154
24011	2022-09-27	Maryland	6822	85
24013	2022-09-27	Maryland	25771	433
24015	2022-09-27	Maryland	18584	274
24017	2022-09-27	Maryland	35080	380
24019	2022-09-27	Maryland	8903	112
24021	2022-09-27	Maryland	54053	556
24023	2022-09-27	Maryland	6565	118
24025	2022-09-27	Maryland	45709	622
24027	2022-09-27	Maryland	57896	401
24029	2022-09-27	Maryland	3686	73
24031	2022-09-27	Maryland	223094	2180
24033	2022-09-27	Maryland	207885	2256
24035	2022-09-27	Maryland	8242	122
24039	2022-09-27	Maryland	5844	77
24037	2022-09-27	Maryland	22611	232
24041	2022-09-27	Maryland	6648	99
24043	2022-09-27	Maryland	39049	603
24045	2022-09-27	Maryland	23022	346
24047	2022-09-27	Maryland	10111	172
25001	2022-09-27	Massachusetts	43862	657
25003	2022-09-27	Massachusetts	31605	412
25005	2022-09-27	Massachusetts	169713	2270
25007	2022-09-27	Massachusetts	4130	0
25009	2022-09-27	Massachusetts	237906	2901
25011	2022-09-27	Massachusetts	13269	164
25013	2022-09-27	Massachusetts	156846	1907
25015	2022-09-27	Massachusetts	36179	385
25017	2022-09-27	Massachusetts	403749	4287
25019	2022-09-27	Massachusetts	3735	0
25021	2022-09-27	Massachusetts	160309	2034
25023	2022-09-27	Massachusetts	132837	1769
25025	2022-09-27	Massachusetts	250715	2076
25027	2022-09-27	Massachusetts	223083	2758
26001	2022-09-27	Michigan	1840	74
26003	2022-09-27	Michigan	2162	15
26005	2022-09-27	Michigan	30694	376
26007	2022-09-27	Michigan	6138	150
26009	2022-09-27	Michigan	4980	72
26011	2022-09-27	Michigan	3648	80
26013	2022-09-27	Michigan	2527	58
26015	2022-09-27	Michigan	16002	180
26017	2022-09-27	Michigan	30313	629
26019	2022-09-27	Michigan	3932	75
26021	2022-09-27	Michigan	39389	621
26023	2022-09-27	Michigan	13542	223
26025	2022-09-27	Michigan	39811	621
26027	2022-09-27	Michigan	12373	155
26029	2022-09-27	Michigan	5590	64
26031	2022-09-27	Michigan	5391	121
26033	2022-09-27	Michigan	12863	124
26035	2022-09-27	Michigan	7731	166
26037	2022-09-27	Michigan	25790	218
26039	2022-09-27	Michigan	3019	36
26041	2022-09-27	Michigan	11424	166
26043	2022-09-27	Michigan	8628	118
26045	2022-09-27	Michigan	32231	432
26047	2022-09-27	Michigan	7224	97
26049	2022-09-27	Michigan	117504	1860
26051	2022-09-27	Michigan	6305	125
26053	2022-09-27	Michigan	3870	74
26055	2022-09-27	Michigan	20173	252
26057	2022-09-27	Michigan	15059	199
26059	2022-09-27	Michigan	11890	213
26061	2022-09-27	Michigan	9014	104
26063	2022-09-27	Michigan	9227	152
26065	2022-09-27	Michigan	78033	825
26067	2022-09-27	Michigan	21702	191
26069	2022-09-27	Michigan	5344	157
26071	2022-09-27	Michigan	3293	93
26073	2022-09-27	Michigan	17209	223
26075	2022-09-27	Michigan	51337	634
26077	2022-09-27	Michigan	71052	722
26079	2022-09-27	Michigan	4203	65
26081	2022-09-27	Michigan	190940	1669
26083	2022-09-27	Michigan	625	15
26085	2022-09-27	Michigan	2237	40
26087	2022-09-27	Michigan	23278	449
26089	2022-09-27	Michigan	4154	62
26091	2022-09-27	Michigan	30036	347
26093	2022-09-27	Michigan	53800	491
26095	2022-09-27	Michigan	2472	18
26097	2022-09-27	Michigan	2823	35
26099	2022-09-27	Michigan	275519	4222
26101	2022-09-27	Michigan	5117	100
26103	2022-09-27	Michigan	18691	152
26105	2022-09-27	Michigan	7841	103
26107	2022-09-27	Michigan	9746	117
26109	2022-09-27	Michigan	6447	74
26111	2022-09-27	Michigan	22103	240
26113	2022-09-27	Michigan	3350	67
26115	2022-09-27	Michigan	44825	506
26117	2022-09-27	Michigan	19047	227
26119	2022-09-27	Michigan	1878	49
26121	2022-09-27	Michigan	47668	679
26123	2022-09-27	Michigan	12895	163
26125	2022-09-27	Michigan	353046	4129
26127	2022-09-27	Michigan	7236	99
26129	2022-09-27	Michigan	4772	110
26131	2022-09-27	Michigan	1212	43
26133	2022-09-27	Michigan	5667	88
26135	2022-09-27	Michigan	1607	59
26137	2022-09-27	Michigan	6401	113
26139	2022-09-27	Michigan	83894	836
26141	2022-09-27	Michigan	2253	62
26143	2022-09-27	Michigan	5272	122
26145	2022-09-27	Michigan	58334	1002
26151	2022-09-27	Michigan	9812	213
26153	2022-09-27	Michigan	2057	18
26155	2022-09-27	Michigan	20603	238
26147	2022-09-27	Michigan	46648	867
26149	2022-09-27	Michigan	15311	222
26157	2022-09-27	Michigan	14824	297
26159	2022-09-27	Michigan	19605	295
26161	2022-09-27	Michigan	101239	582
26163	2022-09-27	Michigan	487291	8431
26165	2022-09-27	Michigan	8128	120
27001	2022-09-27	Minnesota	3402	63
27003	2022-09-27	Minnesota	111760	829
27005	2022-09-27	Minnesota	9861	99
27007	2022-09-27	Minnesota	13363	131
27009	2022-09-27	Minnesota	15898	187
27011	2022-09-27	Minnesota	1587	9
27013	2022-09-27	Minnesota	20152	109
27015	2022-09-27	Minnesota	7434	84
27017	2022-09-27	Minnesota	10457	106
27019	2022-09-27	Minnesota	30335	126
27021	2022-09-27	Minnesota	7995	86
27023	2022-09-27	Minnesota	3494	51
27025	2022-09-27	Minnesota	16292	124
27027	2022-09-27	Minnesota	22163	132
27029	2022-09-27	Minnesota	2335	32
27031	2022-09-27	Minnesota	727	4
27033	2022-09-27	Minnesota	3536	41
27035	2022-09-27	Minnesota	18028	174
27037	2022-09-27	Minnesota	128088	820
27039	2022-09-27	Minnesota	6390	22
27041	2022-09-27	Minnesota	12328	123
27043	2022-09-27	Minnesota	4242	56
27045	2022-09-27	Minnesota	5451	28
27047	2022-09-27	Minnesota	9999	80
27049	2022-09-27	Minnesota	14859	148
27051	2022-09-27	Minnesota	1647	12
27053	2022-09-27	Minnesota	359426	2704
27055	2022-09-27	Minnesota	5170	21
27057	2022-09-27	Minnesota	5672	61
27059	2022-09-27	Minnesota	11071	120
27061	2022-09-27	Minnesota	12707	158
27063	2022-09-27	Minnesota	2430	17
27065	2022-09-27	Minnesota	4022	59
27067	2022-09-27	Minnesota	14795	146
27069	2022-09-27	Minnesota	1154	29
27071	2022-09-27	Minnesota	3380	41
27073	2022-09-27	Minnesota	2002	29
27075	2022-09-27	Minnesota	2413	32
27077	2022-09-27	Minnesota	859	6
27079	2022-09-27	Minnesota	7100	52
27081	2022-09-27	Minnesota	1395	6
27083	2022-09-27	Minnesota	7727	77
27087	2022-09-27	Minnesota	2024	18
27089	2022-09-27	Minnesota	2336	24
27091	2022-09-27	Minnesota	6295	68
27085	2022-09-27	Minnesota	12119	114
27093	2022-09-27	Minnesota	6668	80
27095	2022-09-27	Minnesota	7900	120
27097	2022-09-27	Minnesota	10294	114
27099	2022-09-27	Minnesota	13075	75
27101	2022-09-27	Minnesota	2220	20
27103	2022-09-27	Minnesota	9238	72
27105	2022-09-27	Minnesota	7582	61
27107	2022-09-27	Minnesota	1667	15
27109	2022-09-27	Minnesota	49611	201
27111	2022-09-27	Minnesota	15202	177
27113	2022-09-27	Minnesota	4014	43
27115	2022-09-27	Minnesota	7967	69
27117	2022-09-27	Minnesota	2202	34
27119	2022-09-27	Minnesota	9964	118
27121	2022-09-27	Minnesota	3592	20
27123	2022-09-27	Minnesota	147565	1420
27125	2022-09-27	Minnesota	999	13
27127	2022-09-27	Minnesota	4405	54
27129	2022-09-27	Minnesota	4246	58
27131	2022-09-27	Minnesota	19741	191
27133	2022-09-27	Minnesota	2573	35
27135	2022-09-27	Minnesota	4859	47
27139	2022-09-27	Minnesota	45512	273
27141	2022-09-27	Minnesota	30073	186
27143	2022-09-27	Minnesota	3986	27
27137	2022-09-27	Minnesota	55796	575
27145	2022-09-27	Minnesota	57240	388
27147	2022-09-27	Minnesota	11406	67
27149	2022-09-27	Minnesota	3073	15
27151	2022-09-27	Minnesota	2531	33
27153	2022-09-27	Minnesota	7857	70
27155	2022-09-27	Minnesota	950	11
27157	2022-09-27	Minnesota	6341	19
27159	2022-09-27	Minnesota	4794	59
27161	2022-09-27	Minnesota	6062	41
27163	2022-09-27	Minnesota	77627	518
27165	2022-09-27	Minnesota	3245	24
27167	2022-09-27	Minnesota	1821	23
27169	2022-09-27	Minnesota	14817	79
27171	2022-09-27	Minnesota	40414	317
27173	2022-09-27	Minnesota	2853	31
28001	2022-09-27	Mississippi	8245	149
28003	2022-09-27	Mississippi	11885	163
28005	2022-09-27	Mississippi	3686	70
28007	2022-09-27	Mississippi	6337	119
28009	2022-09-27	Mississippi	2600	49
28011	2022-09-27	Mississippi	10630	186
28013	2022-09-27	Mississippi	5298	76
28015	2022-09-27	Mississippi	2918	58
28017	2022-09-27	Mississippi	6545	99
28019	2022-09-27	Mississippi	2684	35
28021	2022-09-27	Mississippi	2463	48
28023	2022-09-27	Mississippi	4668	111
28025	2022-09-27	Mississippi	5755	100
28027	2022-09-27	Mississippi	7560	131
28029	2022-09-27	Mississippi	8601	124
28031	2022-09-27	Mississippi	8075	117
28033	2022-09-27	Mississippi	57396	566
28035	2022-09-27	Mississippi	25830	317
28037	2022-09-27	Mississippi	2218	39
28039	2022-09-27	Mississippi	8329	89
28041	2022-09-27	Mississippi	3678	60
28043	2022-09-27	Mississippi	6124	135
28045	2022-09-27	Mississippi	14312	159
28047	2022-09-27	Mississippi	62399	692
28049	2022-09-27	Mississippi	63067	823
28051	2022-09-27	Mississippi	4960	105
28053	2022-09-27	Mississippi	2239	47
28055	2022-09-27	Mississippi	289	9
28057	2022-09-27	Mississippi	8710	146
28059	2022-09-27	Mississippi	43536	485
28061	2022-09-27	Mississippi	5781	78
28063	2022-09-27	Mississippi	1729	38
28065	2022-09-27	Mississippi	3376	56
28067	2022-09-27	Mississippi	24787	305
28069	2022-09-27	Mississippi	2470	51
28071	2022-09-27	Mississippi	17687	184
28073	2022-09-27	Mississippi	20571	166
28075	2022-09-27	Mississippi	20906	378
28077	2022-09-27	Mississippi	4195	57
28079	2022-09-27	Mississippi	7269	124
28081	2022-09-27	Mississippi	31422	313
28083	2022-09-27	Mississippi	8331	180
28085	2022-09-27	Mississippi	9843	163
28087	2022-09-27	Mississippi	19988	247
28089	2022-09-27	Mississippi	29195	344
28091	2022-09-27	Mississippi	8130	140
28093	2022-09-27	Mississippi	11153	179
28095	2022-09-27	Mississippi	12617	224
28097	2022-09-27	Mississippi	3432	80
28099	2022-09-27	Mississippi	12036	244
28101	2022-09-27	Mississippi	6736	100
28103	2022-09-27	Mississippi	3244	49
28105	2022-09-27	Mississippi	12844	168
28107	2022-09-27	Mississippi	11866	173
28109	2022-09-27	Mississippi	17118	282
28111	2022-09-27	Mississippi	3527	65
28113	2022-09-27	Mississippi	11841	192
28115	2022-09-27	Mississippi	11889	154
28117	2022-09-27	Mississippi	9444	108
28119	2022-09-27	Mississippi	1747	32
28121	2022-09-27	Mississippi	43562	510
28123	2022-09-27	Mississippi	7453	121
28125	2022-09-27	Mississippi	1092	27
28127	2022-09-27	Mississippi	8147	157
28129	2022-09-27	Mississippi	4729	69
28131	2022-09-27	Mississippi	6358	77
28133	2022-09-27	Mississippi	6433	127
28135	2022-09-27	Mississippi	3640	63
28137	2022-09-27	Mississippi	8354	151
28139	2022-09-27	Mississippi	8384	112
28141	2022-09-27	Mississippi	7111	122
28143	2022-09-27	Mississippi	2860	48
28145	2022-09-27	Mississippi	10849	127
28147	2022-09-27	Mississippi	4301	82
28149	2022-09-27	Mississippi	12020	214
28151	2022-09-27	Mississippi	11688	207
28153	2022-09-27	Mississippi	6658	88
28155	2022-09-27	Mississippi	3784	73
28157	2022-09-27	Mississippi	1900	46
28159	2022-09-27	Mississippi	6136	104
28161	2022-09-27	Mississippi	4622	61
28163	2022-09-27	Mississippi	9304	112
29001	2022-09-27	Missouri	6280	68
29003	2022-09-27	Missouri	5310	60
29005	2022-09-27	Missouri	1624	23
29007	2022-09-27	Missouri	6415	116
29009	2022-09-27	Missouri	7439	148
29011	2022-09-27	Missouri	3166	55
29013	2022-09-27	Missouri	4108	100
29015	2022-09-27	Missouri	5028	110
29017	2022-09-27	Missouri	2955	44
29019	2022-09-27	Missouri	51863	274
29021	2022-09-27	Missouri	27803	332
29023	2022-09-27	Missouri	11527	177
29025	2022-09-27	Missouri	1932	40
29027	2022-09-27	Missouri	13565	139
29029	2022-09-27	Missouri	10349	190
29031	2022-09-27	Missouri	21819	255
29033	2022-09-27	Missouri	2474	46
29035	2022-09-27	Missouri	1644	24
29037	2022-09-27	Missouri	28476	330
29039	2022-09-27	Missouri	3464	60
29041	2022-09-27	Missouri	1902	39
29043	2022-09-27	Missouri	23459	275
29045	2022-09-27	Missouri	1807	41
29047	2022-09-27	Missouri	31068	384
29049	2022-09-27	Missouri	5406	124
29051	2022-09-27	Missouri	22428	294
29053	2022-09-27	Missouri	4510	80
29055	2022-09-27	Missouri	6059	110
29057	2022-09-27	Missouri	1655	43
29059	2022-09-27	Missouri	4354	77
29061	2022-09-27	Missouri	1922	31
29063	2022-09-27	Missouri	2429	47
29065	2022-09-27	Missouri	3718	89
29067	2022-09-27	Missouri	2928	84
29069	2022-09-27	Missouri	9147	134
29071	2022-09-27	Missouri	29182	388
29073	2022-09-27	Missouri	3778	104
29075	2022-09-27	Missouri	2460	33
29077	2022-09-27	Missouri	79792	1093
29079	2022-09-27	Missouri	2914	71
29081	2022-09-27	Missouri	2226	35
29083	2022-09-27	Missouri	6626	91
29085	2022-09-27	Missouri	2179	59
29087	2022-09-27	Missouri	1204	31
29089	2022-09-27	Missouri	2775	31
29091	2022-09-27	Missouri	10435	228
29093	2022-09-27	Missouri	2467	47
29095	2022-09-27	Missouri	110112	1264
29097	2022-09-27	Missouri	22897	329
29099	2022-09-27	Missouri	62864	688
29101	2022-09-27	Missouri	13739	148
29103	2022-09-27	Missouri	1119	15
29105	2022-09-27	Missouri	9037	184
29107	2022-09-27	Missouri	8675	140
29109	2022-09-27	Missouri	8650	178
29111	2022-09-27	Missouri	3110	43
29113	2022-09-27	Missouri	17094	147
29115	2022-09-27	Missouri	2904	70
29117	2022-09-27	Missouri	4163	101
29121	2022-09-27	Missouri	4038	64
29123	2022-09-27	Missouri	4025	59
29125	2022-09-27	Missouri	1806	39
29127	2022-09-27	Missouri	9121	128
29119	2022-09-27	Missouri	6360	81
29129	2022-09-27	Missouri	823	14
29131	2022-09-27	Missouri	6658	126
29133	2022-09-27	Missouri	4207	62
29135	2022-09-27	Missouri	4155	59
29137	2022-09-27	Missouri	2406	49
29139	2022-09-27	Missouri	2854	61
29141	2022-09-27	Missouri	4569	118
29143	2022-09-27	Missouri	5756	89
29145	2022-09-27	Missouri	13061	214
29147	2022-09-27	Missouri	6941	49
29149	2022-09-27	Missouri	2309	38
29151	2022-09-27	Missouri	3522	49
29153	2022-09-27	Missouri	1934	64
29155	2022-09-27	Missouri	3443	82
29157	2022-09-27	Missouri	5852	46
29159	2022-09-27	Missouri	14032	177
29161	2022-09-27	Missouri	11915	251
29163	2022-09-27	Missouri	4807	65
29165	2022-09-27	Missouri	11953	106
29167	2022-09-27	Missouri	9282	113
29169	2022-09-27	Missouri	10261	120
29171	2022-09-27	Missouri	1124	26
29173	2022-09-27	Missouri	2741	30
29175	2022-09-27	Missouri	6738	109
29177	2022-09-27	Missouri	5818	98
29179	2022-09-27	Missouri	1312	27
29181	2022-09-27	Missouri	3052	63
29195	2022-09-27	Missouri	6934	111
29197	2022-09-27	Missouri	831	27
29199	2022-09-27	Missouri	758	18
29201	2022-09-27	Missouri	12979	166
29203	2022-09-27	Missouri	1818	41
29205	2022-09-27	Missouri	1905	15
29183	2022-09-27	Missouri	120351	987
29185	2022-09-27	Missouri	2413	41
29187	2022-09-27	Missouri	21774	310
29189	2022-09-27	Missouri	270852	3504
29510	2022-09-27	Missouri	70236	817
29186	2022-09-27	Missouri	4325	40
29207	2022-09-27	Missouri	6785	141
29209	2022-09-27	Missouri	6507	126
29211	2022-09-27	Missouri	1898	25
29213	2022-09-27	Missouri	15150	243
29215	2022-09-27	Missouri	5318	108
29217	2022-09-27	Missouri	5749	111
29219	2022-09-27	Missouri	9207	107
29221	2022-09-27	Missouri	6698	150
29223	2022-09-27	Missouri	2725	55
29225	2022-09-27	Missouri	9786	158
29227	2022-09-27	Missouri	500	3
29229	2022-09-27	Missouri	4351	92
30001	2022-09-27	Montana	2356	30
30003	2022-09-27	Montana	5433	102
30005	2022-09-27	Montana	2403	33
30007	2022-09-27	Montana	1456	22
30009	2022-09-27	Montana	2305	28
30011	2022-09-27	Montana	275	5
30013	2022-09-27	Montana	28188	359
30015	2022-09-27	Montana	1169	15
30017	2022-09-27	Montana	3316	50
30019	2022-09-27	Montana	432	9
30021	2022-09-27	Montana	2584	59
30023	2022-09-27	Montana	2954	30
30025	2022-09-27	Montana	722	10
30027	2022-09-27	Montana	2803	60
30029	2022-09-27	Montana	32344	295
30031	2022-09-27	Montana	39583	129
30033	2022-09-27	Montana	242	3
30035	2022-09-27	Montana	4460	75
30037	2022-09-27	Montana	159	5
30039	2022-09-27	Montana	624	10
30041	2022-09-27	Montana	5108	73
30043	2022-09-27	Montana	2950	25
30045	2022-09-27	Montana	263	1
30047	2022-09-27	Montana	7653	104
30049	2022-09-27	Montana	20612	193
30051	2022-09-27	Montana	471	4
30053	2022-09-27	Montana	5315	91
30057	2022-09-27	Montana	2231	22
30055	2022-09-27	Montana	425	9
30059	2022-09-27	Montana	539	10
30061	2022-09-27	Montana	1257	17
30063	2022-09-27	Montana	31838	217
30065	2022-09-27	Montana	1031	31
30067	2022-09-27	Montana	4898	36
30069	2022-09-27	Montana	39	1
30071	2022-09-27	Montana	1117	29
30073	2022-09-27	Montana	1370	9
30075	2022-09-27	Montana	396	10
30077	2022-09-27	Montana	2123	30
30079	2022-09-27	Montana	287	3
30081	2022-09-27	Montana	7887	166
30083	2022-09-27	Montana	2851	36
30085	2022-09-27	Montana	3618	75
30087	2022-09-27	Montana	2981	61
30089	2022-09-27	Montana	2345	52
30091	2022-09-27	Montana	846	12
30093	2022-09-27	Montana	9316	135
30095	2022-09-27	Montana	1662	32
30097	2022-09-27	Montana	856	13
30099	2022-09-27	Montana	1453	27
30101	2022-09-27	Montana	1350	25
30103	2022-09-27	Montana	142	1
30105	2022-09-27	Montana	2004	39
30107	2022-09-27	Montana	426	14
30109	2022-09-27	Montana	240	8
30111	2022-09-27	Montana	48022	578
31001	2022-09-27	Nebraska	7246	74
31003	2022-09-27	Nebraska	1201	15
31005	2022-09-27	Nebraska	33	1
31007	2022-09-27	Nebraska	96	2
31009	2022-09-27	Nebraska	71	3
31011	2022-09-27	Nebraska	1180	5
31013	2022-09-27	Nebraska	2385	17
31015	2022-09-27	Nebraska	443	7
31017	2022-09-27	Nebraska	599	4
31019	2022-09-27	Nebraska	13264	108
31021	2022-09-27	Nebraska	1441	17
31023	2022-09-27	Nebraska	2121	18
31025	2022-09-27	Nebraska	6834	47
31027	2022-09-27	Nebraska	1637	14
31029	2022-09-27	Nebraska	866	8
31031	2022-09-27	Nebraska	607	12
31033	2022-09-27	Nebraska	2228	24
31035	2022-09-27	Nebraska	1642	25
31037	2022-09-27	Nebraska	2858	28
31039	2022-09-27	Nebraska	1954	15
31041	2022-09-27	Nebraska	2181	32
31043	2022-09-27	Nebraska	7514	82
31045	2022-09-27	Nebraska	1461	21
31047	2022-09-27	Nebraska	5610	44
31049	2022-09-27	Nebraska	338	3
31051	2022-09-27	Nebraska	1326	11
31053	2022-09-27	Nebraska	11123	114
31055	2022-09-27	Nebraska	169559	1186
31057	2022-09-27	Nebraska	358	6
31059	2022-09-27	Nebraska	1228	13
31061	2022-09-27	Nebraska	469	13
31063	2022-09-27	Nebraska	586	3
31065	2022-09-27	Nebraska	1220	8
31067	2022-09-27	Nebraska	3796	45
31069	2022-09-27	Nebraska	424	1
31071	2022-09-27	Nebraska	458	2
31073	2022-09-27	Nebraska	416	7
31075	2022-09-27	Nebraska	106	6
31077	2022-09-27	Nebraska	441	2
31079	2022-09-27	Nebraska	17971	147
31081	2022-09-27	Nebraska	2572	26
31083	2022-09-27	Nebraska	381	3
31085	2022-09-27	Nebraska	104	0
31087	2022-09-27	Nebraska	591	8
31089	2022-09-27	Nebraska	2385	20
31091	2022-09-27	Nebraska	121	5
31093	2022-09-27	Nebraska	1259	16
31095	2022-09-27	Nebraska	1303	7
31097	2022-09-27	Nebraska	898	10
31099	2022-09-27	Nebraska	1318	9
31101	2022-09-27	Nebraska	1696	22
31103	2022-09-27	Nebraska	128	0
31105	2022-09-27	Nebraska	797	9
31107	2022-09-27	Nebraska	1833	13
31109	2022-09-27	Nebraska	88813	454
31111	2022-09-27	Nebraska	9823	121
31113	2022-09-27	Nebraska	157	0
31115	2022-09-27	Nebraska	88	0
31119	2022-09-27	Nebraska	10685	70
31117	2022-09-27	Nebraska	74	1
31121	2022-09-27	Nebraska	1904	17
31123	2022-09-27	Nebraska	1237	21
31125	2022-09-27	Nebraska	835	13
31127	2022-09-27	Nebraska	1486	20
31129	2022-09-27	Nebraska	1041	13
31131	2022-09-27	Nebraska	3683	21
31133	2022-09-27	Nebraska	481	4
31135	2022-09-27	Nebraska	556	12
31137	2022-09-27	Nebraska	2572	15
31139	2022-09-27	Nebraska	1392	21
31141	2022-09-27	Nebraska	9634	75
31143	2022-09-27	Nebraska	1264	18
31145	2022-09-27	Nebraska	2503	21
31147	2022-09-27	Nebraska	2046	24
31149	2022-09-27	Nebraska	189	2
31151	2022-09-27	Nebraska	4112	12
31153	2022-09-27	Nebraska	55628	306
31155	2022-09-27	Nebraska	5389	30
31157	2022-09-27	Nebraska	10443	102
31159	2022-09-27	Nebraska	3598	43
31161	2022-09-27	Nebraska	1059	23
31163	2022-09-27	Nebraska	651	5
31165	2022-09-27	Nebraska	79	1
31167	2022-09-27	Nebraska	705	11
31169	2022-09-27	Nebraska	1213	8
31171	2022-09-27	Nebraska	108	1
31173	2022-09-27	Nebraska	1987	23
31175	2022-09-27	Nebraska	803	6
31177	2022-09-27	Nebraska	5132	45
31179	2022-09-27	Nebraska	2013	11
31181	2022-09-27	Nebraska	760	11
31183	2022-09-27	Nebraska	131	2
31185	2022-09-27	Nebraska	4390	23
32510	2022-09-27	Nevada	16582	225
32001	2022-09-27	Nevada	7325	118
32003	2022-09-27	Nevada	641129	8963
32005	2022-09-27	Nevada	8400	96
32007	2022-09-27	Nevada	12600	142
32009	2022-09-27	Nevada	117	5
32011	2022-09-27	Nevada	176	2
32013	2022-09-27	Nevada	2701	60
32015	2022-09-27	Nevada	1272	21
32017	2022-09-27	Nevada	618	10
32019	2022-09-27	Nevada	11546	181
32021	2022-09-27	Nevada	1432	19
32023	2022-09-27	Nevada	8648	294
32027	2022-09-27	Nevada	2295	31
32029	2022-09-27	Nevada	170	14
32031	2022-09-27	Nevada	122335	1271
32033	2022-09-27	Nevada	1716	23
33001	2022-09-27	New Hampshire	15960	191
33003	2022-09-27	New Hampshire	11301	68
33005	2022-09-27	New Hampshire	17568	124
33007	2022-09-27	New Hampshire	7860	123
33009	2022-09-27	New Hampshire	21693	81
33011	2022-09-27	New Hampshire	112395	962
33013	2022-09-27	New Hampshire	37041	255
33015	2022-09-27	New Hampshire	78345	591
33017	2022-09-27	New Hampshire	34470	228
33019	2022-09-27	New Hampshire	10835	73
34001	2022-09-27	New Jersey	82724	1049
34003	2022-09-27	New Jersey	287796	3562
34005	2022-09-27	New Jersey	127272	1293
34007	2022-09-27	New Jersey	152917	1891
34009	2022-09-27	New Jersey	27196	322
34011	2022-09-27	New Jersey	47249	637
34013	2022-09-27	New Jersey	262706	3673
34015	2022-09-27	New Jersey	83421	1009
34017	2022-09-27	New Jersey	214257	2786
34019	2022-09-27	New Jersey	30968	288
34021	2022-09-27	New Jersey	99076	1306
34023	2022-09-27	New Jersey	246535	2941
34025	2022-09-27	New Jersey	201359	2284
34027	2022-09-27	New Jersey	149380	1618
34029	2022-09-27	New Jersey	193958	3122
34031	2022-09-27	New Jersey	173363	2394
34033	2022-09-27	New Jersey	16854	258
34035	2022-09-27	New Jersey	87387	1003
34037	2022-09-27	New Jersey	40973	505
34039	2022-09-27	New Jersey	176706	2430
34041	2022-09-27	New Jersey	28775	354
35001	2022-09-27	New Mexico	179727	2094
35003	2022-09-27	New Mexico	479	22
35005	2022-09-27	New Mexico	24114	356
35006	2022-09-27	New Mexico	9387	204
35007	2022-09-27	New Mexico	2903	68
35009	2022-09-27	New Mexico	14471	231
35011	2022-09-27	New Mexico	647	6
35013	2022-09-27	New Mexico	72558	906
35015	2022-09-27	New Mexico	18606	313
35017	2022-09-27	New Mexico	8601	106
35019	2022-09-27	New Mexico	1621	18
35021	2022-09-27	New Mexico	94	4
35023	2022-09-27	New Mexico	1245	16
35025	2022-09-27	New Mexico	22515	401
35027	2022-09-27	New Mexico	6168	70
35028	2022-09-27	New Mexico	4179	22
35029	2022-09-27	New Mexico	7641	146
35031	2022-09-27	New Mexico	30316	628
35033	2022-09-27	New Mexico	930	20
35035	2022-09-27	New Mexico	17835	212
35037	2022-09-27	New Mexico	2373	68
35039	2022-09-27	New Mexico	12109	154
35041	2022-09-27	New Mexico	5822	109
35045	2022-09-27	New Mexico	47278	829
35047	2022-09-27	New Mexico	7054	74
35043	2022-09-27	New Mexico	41220	481
35049	2022-09-27	New Mexico	37073	351
35051	2022-09-27	New Mexico	2340	85
35053	2022-09-27	New Mexico	4399	96
35055	2022-09-27	New Mexico	6569	98
35057	2022-09-27	New Mexico	3534	59
35059	2022-09-27	New Mexico	1082	19
35061	2022-09-27	New Mexico	22622	299
36001	2022-09-27	New York	72664	556
36003	2022-09-27	New York	10134	162
36007	2022-09-27	New York	54074	553
36009	2022-09-27	New York	18052	235
36011	2022-09-27	New York	18909	165
36013	2022-09-27	New York	27508	317
36015	2022-09-27	New York	24678	241
36017	2022-09-27	New York	10991	126
36019	2022-09-27	New York	20595	103
36021	2022-09-27	New York	12628	157
36023	2022-09-27	New York	12443	128
36025	2022-09-27	New York	9375	84
36027	2022-09-27	New York	77045	698
36029	2022-09-27	New York	251407	2754
36031	2022-09-27	New York	7022	66
36033	2022-09-27	New York	11224	50
36035	2022-09-27	New York	15274	175
36037	2022-09-27	New York	15504	201
36039	2022-09-27	New York	10121	139
36041	2022-09-27	New York	1008	5
36043	2022-09-27	New York	16308	201
36045	2022-09-27	New York	24462	144
36049	2022-09-27	New York	6899	53
36051	2022-09-27	New York	13395	129
36053	2022-09-27	New York	15613	133
36055	2022-09-27	New York	178682	1710
36057	2022-09-27	New York	13966	219
36059	2022-09-27	New York	496688	4022
36063	2022-09-27	New York	55935	605
36065	2022-09-27	New York	64146	830
36067	2022-09-27	New York	133437	1126
36069	2022-09-27	New York	23947	195
36071	2022-09-27	New York	126409	991
36073	2022-09-27	New York	9849	121
36075	2022-09-27	New York	31826	210
36077	2022-09-27	New York	12294	98
36079	2022-09-27	New York	28640	131
36083	2022-09-27	New York	38682	282
36087	2022-09-27	New York	108735	929
36091	2022-09-27	New York	56934	363
36093	2022-09-27	New York	40454	332
36095	2022-09-27	New York	6045	37
36097	2022-09-27	New York	4064	28
36099	2022-09-27	New York	6999	94
36089	2022-09-27	New York	24694	204
36101	2022-09-27	New York	23486	262
36103	2022-09-27	New York	513338	4603
36105	2022-09-27	New York	22198	137
36107	2022-09-27	New York	12958	88
36109	2022-09-27	New York	24623	93
36111	2022-09-27	New York	39056	387
36113	2022-09-27	New York	17153	137
36115	2022-09-27	New York	14481	127
36117	2022-09-27	New York	20256	194
36119	2022-09-27	New York	304956	2822
36121	2022-09-27	New York	9377	87
36123	2022-09-27	New York	4096	40
37001	2022-09-27	North Carolina	56020	523
37003	2022-09-27	North Carolina	11874	147
37005	2022-09-27	North Carolina	3373	18
37007	2022-09-27	North Carolina	7803	102
37009	2022-09-27	North Carolina	7085	86
37011	2022-09-27	North Carolina	5243	47
37013	2022-09-27	North Carolina	14895	180
37015	2022-09-27	North Carolina	5007	75
37017	2022-09-27	North Carolina	10956	140
37019	2022-09-27	North Carolina	37190	353
37021	2022-09-27	North Carolina	64685	647
37023	2022-09-27	North Carolina	29129	344
37025	2022-09-27	North Carolina	66312	527
37027	2022-09-27	North Carolina	26919	325
37029	2022-09-27	North Carolina	2051	9
37031	2022-09-27	North Carolina	17126	146
37033	2022-09-27	North Carolina	6176	55
37035	2022-09-27	North Carolina	55728	639
37037	2022-09-27	North Carolina	16169	125
37039	2022-09-27	North Carolina	8132	130
37041	2022-09-27	North Carolina	4757	63
37043	2022-09-27	North Carolina	3089	49
37045	2022-09-27	North Carolina	34278	425
37047	2022-09-27	North Carolina	18013	280
37049	2022-09-27	North Carolina	29544	229
37051	2022-09-27	North Carolina	105595	697
37053	2022-09-27	North Carolina	5809	39
37055	2022-09-27	North Carolina	9139	30
37057	2022-09-27	North Carolina	50817	454
37059	2022-09-27	North Carolina	13403	116
37061	2022-09-27	North Carolina	19436	254
37063	2022-09-27	North Carolina	93903	366
37065	2022-09-27	North Carolina	16227	163
37067	2022-09-27	North Carolina	113046	872
37069	2022-09-27	North Carolina	24569	88
37071	2022-09-27	North Carolina	75841	918
37073	2022-09-27	North Carolina	2237	21
37075	2022-09-27	North Carolina	2726	31
37077	2022-09-27	North Carolina	17655	124
37079	2022-09-27	North Carolina	6675	75
37081	2022-09-27	North Carolina	144437	1329
37083	2022-09-27	North Carolina	16933	194
37085	2022-09-27	North Carolina	39387	359
37087	2022-09-27	North Carolina	15644	233
37089	2022-09-27	North Carolina	29831	340
37091	2022-09-27	North Carolina	5786	93
37093	2022-09-27	North Carolina	17935	131
37095	2022-09-27	North Carolina	1592	14
37097	2022-09-27	North Carolina	56621	507
37099	2022-09-27	North Carolina	11236	102
37101	2022-09-27	North Carolina	69989	475
37103	2022-09-27	North Carolina	2643	44
37105	2022-09-27	North Carolina	18643	167
37107	2022-09-27	North Carolina	18562	237
37109	2022-09-27	North Carolina	27965	194
37113	2022-09-27	North Carolina	9120	128
37115	2022-09-27	North Carolina	5915	83
37117	2022-09-27	North Carolina	7234	95
37111	2022-09-27	North Carolina	16022	181
37119	2022-09-27	North Carolina	338477	1743
37121	2022-09-27	North Carolina	4352	42
37123	2022-09-27	North Carolina	8300	136
37125	2022-09-27	North Carolina	28736	346
37127	2022-09-27	North Carolina	30405	338
37129	2022-09-27	North Carolina	59996	429
37131	2022-09-27	North Carolina	5310	91
37133	2022-09-27	North Carolina	61417	408
37135	2022-09-27	North Carolina	35649	147
37137	2022-09-27	North Carolina	3193	34
37139	2022-09-27	North Carolina	9785	131
37141	2022-09-27	North Carolina	17591	140
37143	2022-09-27	North Carolina	3221	25
37145	2022-09-27	North Carolina	11298	111
37147	2022-09-27	North Carolina	62375	271
37149	2022-09-27	North Carolina	4502	68
37151	2022-09-27	North Carolina	40678	475
37153	2022-09-27	North Carolina	15195	198
37155	2022-09-27	North Carolina	47993	565
37157	2022-09-27	North Carolina	25359	312
37159	2022-09-27	North Carolina	47743	614
37161	2022-09-27	North Carolina	20024	411
37163	2022-09-27	North Carolina	21777	194
37165	2022-09-27	North Carolina	11798	143
37167	2022-09-27	North Carolina	22161	279
37169	2022-09-27	North Carolina	13581	192
37171	2022-09-27	North Carolina	25709	382
37173	2022-09-27	North Carolina	4452	52
37175	2022-09-27	North Carolina	7536	83
37177	2022-09-27	North Carolina	1136	9
37179	2022-09-27	North Carolina	72889	510
37181	2022-09-27	North Carolina	14429	127
37183	2022-09-27	North Carolina	365072	1234
37185	2022-09-27	North Carolina	5237	48
37187	2022-09-27	North Carolina	3600	52
37189	2022-09-27	North Carolina	13843	75
37191	2022-09-27	North Carolina	37949	423
37193	2022-09-27	North Carolina	20815	284
37195	2022-09-27	North Carolina	25499	338
37197	2022-09-27	North Carolina	13506	126
37199	2022-09-27	North Carolina	6060	64
38001	2022-09-27	North Dakota	642	10
38003	2022-09-27	North Dakota	3347	47
38005	2022-09-27	North Dakota	2159	23
38007	2022-09-27	North Dakota	166	1
38009	2022-09-27	North Dakota	1768	26
38011	2022-09-27	North Dakota	895	9
38013	2022-09-27	North Dakota	465	3
38015	2022-09-27	North Dakota	38584	303
38017	2022-09-27	North Dakota	66785	333
38019	2022-09-27	North Dakota	917	7
38021	2022-09-27	North Dakota	1672	39
38023	2022-09-27	North Dakota	544	4
38025	2022-09-27	North Dakota	1128	8
38027	2022-09-27	North Dakota	843	6
38029	2022-09-27	North Dakota	783	18
38031	2022-09-27	North Dakota	1069	23
38033	2022-09-27	North Dakota	496	4
38035	2022-09-27	North Dakota	25043	125
38037	2022-09-27	North Dakota	514	11
38039	2022-09-27	North Dakota	640	2
38041	2022-09-27	North Dakota	904	8
38043	2022-09-27	North Dakota	557	13
38045	2022-09-27	North Dakota	1115	20
38047	2022-09-27	North Dakota	509	12
38049	2022-09-27	North Dakota	1478	31
38051	2022-09-27	North Dakota	769	9
38053	2022-09-27	North Dakota	3497	25
38055	2022-09-27	North Dakota	3019	49
38057	2022-09-27	North Dakota	2834	24
38059	2022-09-27	North Dakota	12371	142
38061	2022-09-27	North Dakota	3615	37
38063	2022-09-27	North Dakota	851	18
38065	2022-09-27	North Dakota	358	5
38067	2022-09-27	North Dakota	2209	16
38069	2022-09-27	North Dakota	1150	32
38071	2022-09-27	North Dakota	4021	57
38073	2022-09-27	North Dakota	1759	28
38075	2022-09-27	North Dakota	606	15
38077	2022-09-27	North Dakota	4514	23
38079	2022-09-27	North Dakota	7260	43
38081	2022-09-27	North Dakota	1186	9
38083	2022-09-27	North Dakota	320	7
38085	2022-09-27	North Dakota	1496	19
38087	2022-09-27	North Dakota	68	0
38089	2022-09-27	North Dakota	12806	86
38091	2022-09-27	North Dakota	410	2
38093	2022-09-27	North Dakota	7835	97
38095	2022-09-27	North Dakota	710	12
38097	2022-09-27	North Dakota	2332	26
38099	2022-09-27	North Dakota	3822	34
38101	2022-09-27	North Dakota	22697	251
38103	2022-09-27	North Dakota	1145	12
38105	2022-09-27	North Dakota	11624	68
69100	2022-09-27	Northern Mariana Islands	418	0
69110	2022-09-27	Northern Mariana Islands	12357	39
69120	2022-09-27	Northern Mariana Islands	380	1
39001	2022-09-27	Ohio	8261	156
39003	2022-09-27	Ohio	30953	485
39005	2022-09-27	Ohio	13887	228
39007	2022-09-27	Ohio	23549	444
39009	2022-09-27	Ohio	18404	151
39011	2022-09-27	Ohio	13036	190
39013	2022-09-27	Ohio	17969	321
39015	2022-09-27	Ohio	12954	190
39017	2022-09-27	Ohio	107525	1195
39019	2022-09-27	Ohio	5949	131
39021	2022-09-27	Ohio	9970	152
39023	2022-09-27	Ohio	40322	600
39025	2022-09-27	Ohio	60465	579
39027	2022-09-27	Ohio	11827	175
39029	2022-09-27	Ohio	27675	494
39031	2022-09-27	Ohio	9414	166
39033	2022-09-27	Ohio	13215	220
39035	2022-09-27	Ohio	319482	3931
39037	2022-09-27	Ohio	14052	244
39039	2022-09-27	Ohio	11561	170
39041	2022-09-27	Ohio	52254	279
39043	2022-09-27	Ohio	22740	276
39045	2022-09-27	Ohio	44239	441
39047	2022-09-27	Ohio	8796	130
39049	2022-09-27	Ohio	339971	2693
39051	2022-09-27	Ohio	11676	182
39053	2022-09-27	Ohio	9607	132
39055	2022-09-27	Ohio	18651	275
39057	2022-09-27	Ohio	44396	525
39059	2022-09-27	Ohio	12655	159
39061	2022-09-27	Ohio	220285	2132
39063	2022-09-27	Ohio	19509	281
39065	2022-09-27	Ohio	8107	162
39067	2022-09-27	Ohio	3876	79
39069	2022-09-27	Ohio	7337	108
39071	2022-09-27	Ohio	12457	187
39073	2022-09-27	Ohio	8026	127
39075	2022-09-27	Ohio	5582	187
39077	2022-09-27	Ohio	16695	226
39079	2022-09-27	Ohio	10963	145
39081	2022-09-27	Ohio	17424	330
39083	2022-09-27	Ohio	15575	237
39085	2022-09-27	Ohio	56664	757
39087	2022-09-27	Ohio	22008	272
39089	2022-09-27	Ohio	48727	491
39091	2022-09-27	Ohio	11799	175
39093	2022-09-27	Ohio	80608	1007
39095	2022-09-27	Ohio	116783	1455
39097	2022-09-27	Ohio	10880	140
39099	2022-09-27	Ohio	61847	1127
39101	2022-09-27	Ohio	22810	277
39103	2022-09-27	Ohio	46547	522
39105	2022-09-27	Ohio	5782	94
39107	2022-09-27	Ohio	10616	145
39109	2022-09-27	Ohio	29450	493
39111	2022-09-27	Ohio	3939	82
39113	2022-09-27	Ohio	148380	2090
39115	2022-09-27	Ohio	3797	61
39117	2022-09-27	Ohio	8836	107
39119	2022-09-27	Ohio	29533	302
39121	2022-09-27	Ohio	3718	60
39123	2022-09-27	Ohio	9910	147
39125	2022-09-27	Ohio	5201	74
39127	2022-09-27	Ohio	9696	130
39129	2022-09-27	Ohio	19736	235
39131	2022-09-27	Ohio	9221	127
39133	2022-09-27	Ohio	40244	461
39135	2022-09-27	Ohio	10779	204
39137	2022-09-27	Ohio	9174	159
39139	2022-09-27	Ohio	36556	530
39141	2022-09-27	Ohio	23015	312
39143	2022-09-27	Ohio	16043	247
39145	2022-09-27	Ohio	25278	268
39147	2022-09-27	Ohio	14553	238
39149	2022-09-27	Ohio	12472	193
39151	2022-09-27	Ohio	91162	1766
39153	2022-09-27	Ohio	131770	1767
39155	2022-09-27	Ohio	48567	970
39157	2022-09-27	Ohio	23596	516
39159	2022-09-27	Ohio	18408	110
39161	2022-09-27	Ohio	7529	150
39163	2022-09-27	Ohio	3442	57
39165	2022-09-27	Ohio	67357	607
39167	2022-09-27	Ohio	14354	223
39169	2022-09-27	Ohio	26579	451
39171	2022-09-27	Ohio	10626	166
39173	2022-09-27	Ohio	36207	375
39175	2022-09-27	Ohio	6155	107
40001	2022-09-27	Oklahoma	9232	78
40003	2022-09-27	Oklahoma	1808	16
40005	2022-09-27	Oklahoma	4344	54
40007	2022-09-27	Oklahoma	1116	11
40009	2022-09-27	Oklahoma	6657	108
40011	2022-09-27	Oklahoma	2712	47
40013	2022-09-27	Oklahoma	15850	139
40015	2022-09-27	Oklahoma	9359	175
40017	2022-09-27	Oklahoma	45290	399
40019	2022-09-27	Oklahoma	17162	244
40021	2022-09-27	Oklahoma	16353	155
40023	2022-09-27	Oklahoma	4714	67
40025	2022-09-27	Oklahoma	668	7
40027	2022-09-27	Oklahoma	92580	842
40029	2022-09-27	Oklahoma	1945	25
40031	2022-09-27	Oklahoma	36933	407
40033	2022-09-27	Oklahoma	1583	33
40035	2022-09-27	Oklahoma	5477	55
40037	2022-09-27	Oklahoma	20805	340
40039	2022-09-27	Oklahoma	9029	172
40041	2022-09-27	Oklahoma	12677	210
40043	2022-09-27	Oklahoma	1163	34
40045	2022-09-27	Oklahoma	927	11
40047	2022-09-27	Oklahoma	17091	301
40049	2022-09-27	Oklahoma	7948	150
40051	2022-09-27	Oklahoma	15679	252
40053	2022-09-27	Oklahoma	1201	17
40055	2022-09-27	Oklahoma	1462	38
40057	2022-09-27	Oklahoma	696	12
40059	2022-09-27	Oklahoma	798	12
40061	2022-09-27	Oklahoma	3185	42
40063	2022-09-27	Oklahoma	2953	63
40065	2022-09-27	Oklahoma	7598	109
40067	2022-09-27	Oklahoma	1470	26
40069	2022-09-27	Oklahoma	3536	56
40071	2022-09-27	Oklahoma	14118	222
40073	2022-09-27	Oklahoma	4588	71
40075	2022-09-27	Oklahoma	2194	55
40077	2022-09-27	Oklahoma	2536	36
40079	2022-09-27	Oklahoma	14500	110
40081	2022-09-27	Oklahoma	9116	144
40083	2022-09-27	Oklahoma	12543	169
40085	2022-09-27	Oklahoma	3587	42
40093	2022-09-27	Oklahoma	2790	42
40095	2022-09-27	Oklahoma	5200	47
40097	2022-09-27	Oklahoma	12008	168
40087	2022-09-27	Oklahoma	13257	141
40089	2022-09-27	Oklahoma	9050	168
40091	2022-09-27	Oklahoma	5445	127
40099	2022-09-27	Oklahoma	4829	82
40101	2022-09-27	Oklahoma	22655	355
40103	2022-09-27	Oklahoma	3381	43
40105	2022-09-27	Oklahoma	3081	43
40107	2022-09-27	Oklahoma	3970	63
40109	2022-09-27	Oklahoma	229240	2545
40111	2022-09-27	Oklahoma	10871	197
40113	2022-09-27	Oklahoma	12594	172
40115	2022-09-27	Oklahoma	10609	129
40117	2022-09-27	Oklahoma	4687	85
40119	2022-09-27	Oklahoma	21363	175
40121	2022-09-27	Oklahoma	12789	223
40123	2022-09-27	Oklahoma	14764	159
40125	2022-09-27	Oklahoma	24281	290
40127	2022-09-27	Oklahoma	3065	45
40129	2022-09-27	Oklahoma	1015	16
40131	2022-09-27	Oklahoma	29105	395
40133	2022-09-27	Oklahoma	7117	138
40135	2022-09-27	Oklahoma	12103	110
40137	2022-09-27	Oklahoma	12442	213
40139	2022-09-27	Oklahoma	6537	56
40141	2022-09-27	Oklahoma	1704	36
40143	2022-09-27	Oklahoma	196404	2240
40145	2022-09-27	Oklahoma	25101	286
40147	2022-09-27	Oklahoma	14483	267
40149	2022-09-27	Oklahoma	2996	56
40151	2022-09-27	Oklahoma	2537	39
40153	2022-09-27	Oklahoma	5661	79
41001	2022-09-27	Oregon	3623	58
41003	2022-09-27	Oregon	20287	84
41005	2022-09-27	Oregon	77708	726
41007	2022-09-27	Oregon	5870	58
41009	2022-09-27	Oregon	9564	108
41011	2022-09-27	Oregon	13344	174
41013	2022-09-27	Oregon	7298	90
41015	2022-09-27	Oregon	4356	65
41017	2022-09-27	Oregon	57743	338
41019	2022-09-27	Oregon	24164	429
41021	2022-09-27	Oregon	310	6
41023	2022-09-27	Oregon	2092	24
41025	2022-09-27	Oregon	1842	41
41027	2022-09-27	Oregon	4382	47
41029	2022-09-27	Oregon	50671	583
41031	2022-09-27	Oregon	8398	101
41033	2022-09-27	Oregon	19188	369
41035	2022-09-27	Oregon	16693	246
41037	2022-09-27	Oregon	1574	31
41039	2022-09-27	Oregon	72700	625
41041	2022-09-27	Oregon	8604	104
41043	2022-09-27	Oregon	31099	306
41045	2022-09-27	Oregon	9177	112
41047	2022-09-27	Oregon	82387	783
41049	2022-09-27	Oregon	3256	37
41051	2022-09-27	Oregon	157046	1381
41053	2022-09-27	Oregon	18942	150
41055	2022-09-27	Oregon	370	6
41057	2022-09-27	Oregon	4661	74
41059	2022-09-27	Oregon	25156	243
41061	2022-09-27	Oregon	5577	88
41063	2022-09-27	Oregon	1478	21
41065	2022-09-27	Oregon	6318	70
41067	2022-09-27	Oregon	113186	701
41069	2022-09-27	Oregon	270	3
41071	2022-09-27	Oregon	21172	238
42001	2022-09-27	Pennsylvania	28674	393
42003	2022-09-27	Pennsylvania	316879	3538
42005	2022-09-27	Pennsylvania	17140	371
42007	2022-09-27	Pennsylvania	45916	779
42009	2022-09-27	Pennsylvania	12117	282
42011	2022-09-27	Pennsylvania	116560	1662
42013	2022-09-27	Pennsylvania	33018	646
42015	2022-09-27	Pennsylvania	18450	219
42017	2022-09-27	Pennsylvania	142938	2019
42019	2022-09-27	Pennsylvania	51432	784
42021	2022-09-27	Pennsylvania	39864	760
42023	2022-09-27	Pennsylvania	930	21
42025	2022-09-27	Pennsylvania	18227	315
42027	2022-09-27	Pennsylvania	41085	371
42029	2022-09-27	Pennsylvania	108527	1227
42031	2022-09-27	Pennsylvania	9292	211
42033	2022-09-27	Pennsylvania	22167	369
42035	2022-09-27	Pennsylvania	10307	132
42037	2022-09-27	Pennsylvania	17779	261
42039	2022-09-27	Pennsylvania	22820	340
42041	2022-09-27	Pennsylvania	58265	930
42043	2022-09-27	Pennsylvania	67040	1011
42045	2022-09-27	Pennsylvania	129585	1940
42047	2022-09-27	Pennsylvania	8022	110
42049	2022-09-27	Pennsylvania	66249	820
42051	2022-09-27	Pennsylvania	36184	711
42053	2022-09-27	Pennsylvania	2439	36
42055	2022-09-27	Pennsylvania	46480	740
42057	2022-09-27	Pennsylvania	4675	68
42059	2022-09-27	Pennsylvania	9831	112
42061	2022-09-27	Pennsylvania	12893	261
42063	2022-09-27	Pennsylvania	20145	380
42065	2022-09-27	Pennsylvania	10258	250
42067	2022-09-27	Pennsylvania	5362	185
42069	2022-09-27	Pennsylvania	52800	829
42071	2022-09-27	Pennsylvania	137121	1970
42073	2022-09-27	Pennsylvania	21567	439
42075	2022-09-27	Pennsylvania	41427	536
42077	2022-09-27	Pennsylvania	102421	1297
42079	2022-09-27	Pennsylvania	85703	1470
42081	2022-09-27	Pennsylvania	32267	562
42083	2022-09-27	Pennsylvania	9169	156
42085	2022-09-27	Pennsylvania	26420	518
42087	2022-09-27	Pennsylvania	13836	287
42089	2022-09-27	Pennsylvania	43568	557
42091	2022-09-27	Pennsylvania	182473	2441
42093	2022-09-27	Pennsylvania	5392	94
42095	2022-09-27	Pennsylvania	91727	1160
42097	2022-09-27	Pennsylvania	26175	560
42099	2022-09-27	Pennsylvania	9719	191
42101	2022-09-27	Pennsylvania	363555	5282
42103	2022-09-27	Pennsylvania	12009	104
42105	2022-09-27	Pennsylvania	3582	94
42107	2022-09-27	Pennsylvania	38873	716
42109	2022-09-27	Pennsylvania	8958	164
42111	2022-09-27	Pennsylvania	20873	421
42113	2022-09-27	Pennsylvania	1263	36
42115	2022-09-27	Pennsylvania	9091	119
42117	2022-09-27	Pennsylvania	9252	201
42119	2022-09-27	Pennsylvania	12771	157
42121	2022-09-27	Pennsylvania	12782	251
42123	2022-09-27	Pennsylvania	8683	223
42125	2022-09-27	Pennsylvania	59680	687
42127	2022-09-27	Pennsylvania	11906	181
42129	2022-09-27	Pennsylvania	92143	1458
42131	2022-09-27	Pennsylvania	5966	115
42133	2022-09-27	Pennsylvania	135571	1568
44001	2022-09-27	Rhode Island	16316	183
44003	2022-09-27	Rhode Island	58638	527
44005	2022-09-27	Rhode Island	24211	100
44007	2022-09-27	Rhode Island	255914	2605
44009	2022-09-27	Rhode Island	39595	249
45001	2022-09-27	South Carolina	7255	69
45003	2022-09-27	South Carolina	48277	444
45005	2022-09-27	South Carolina	2343	24
45007	2022-09-27	South Carolina	65192	1029
45009	2022-09-27	South Carolina	4048	76
45011	2022-09-27	South Carolina	6458	103
45013	2022-09-27	South Carolina	50231	392
45015	2022-09-27	South Carolina	62117	458
45017	2022-09-27	South Carolina	3332	61
45019	2022-09-27	South Carolina	130875	978
45021	2022-09-27	South Carolina	17110	326
45023	2022-09-27	South Carolina	11658	156
45025	2022-09-27	South Carolina	13843	201
45027	2022-09-27	South Carolina	10169	164
45029	2022-09-27	South Carolina	10574	222
45031	2022-09-27	South Carolina	21154	329
45033	2022-09-27	South Carolina	10911	147
45035	2022-09-27	South Carolina	65958	513
45037	2022-09-27	South Carolina	7739	72
45039	2022-09-27	South Carolina	7001	110
45041	2022-09-27	South Carolina	47805	659
45043	2022-09-27	South Carolina	18459	236
45045	2022-09-27	South Carolina	194290	2046
45047	2022-09-27	South Carolina	25206	314
45049	2022-09-27	South Carolina	5667	86
45051	2022-09-27	South Carolina	113450	1214
45053	2022-09-27	South Carolina	6772	95
45055	2022-09-27	South Carolina	25448	268
45057	2022-09-27	South Carolina	29187	287
45059	2022-09-27	South Carolina	21390	302
45061	2022-09-27	South Carolina	4767	97
45063	2022-09-27	South Carolina	113785	904
45067	2022-09-27	South Carolina	9987	167
45069	2022-09-27	South Carolina	9227	110
45065	2022-09-27	South Carolina	2539	40
45071	2022-09-27	South Carolina	15243	204
45073	2022-09-27	South Carolina	27345	353
45075	2022-09-27	South Carolina	27620	426
45077	2022-09-27	South Carolina	50972	648
45079	2022-09-27	South Carolina	148974	972
45081	2022-09-27	South Carolina	4355	79
45083	2022-09-27	South Carolina	108534	1570
45085	2022-09-27	South Carolina	32841	412
45087	2022-09-27	South Carolina	8915	155
45089	2022-09-27	South Carolina	9677	147
45091	2022-09-27	South Carolina	89374	700
46003	2022-09-27	South Dakota	856	17
46005	2022-09-27	South Dakota	5148	63
46007	2022-09-27	South Dakota	855	15
46009	2022-09-27	South Dakota	2401	41
46011	2022-09-27	South Dakota	8889	59
46013	2022-09-27	South Dakota	11177	124
46015	2022-09-27	South Dakota	1582	23
46017	2022-09-27	South Dakota	655	18
46019	2022-09-27	South Dakota	3054	47
46021	2022-09-27	South Dakota	295	7
46023	2022-09-27	South Dakota	3260	36
46025	2022-09-27	South Dakota	879	11
46027	2022-09-27	South Dakota	3730	24
46029	2022-09-27	South Dakota	9589	103
46031	2022-09-27	South Dakota	1132	18
46033	2022-09-27	South Dakota	2351	28
46035	2022-09-27	South Dakota	6466	83
46037	2022-09-27	South Dakota	1391	36
46039	2022-09-27	South Dakota	1117	12
46041	2022-09-27	South Dakota	3256	44
46043	2022-09-27	South Dakota	758	16
46045	2022-09-27	South Dakota	1003	16
46047	2022-09-27	South Dakota	2191	40
46049	2022-09-27	South Dakota	620	17
46051	2022-09-27	South Dakota	2235	51
46053	2022-09-27	South Dakota	1145	34
46055	2022-09-27	South Dakota	498	12
46057	2022-09-27	South Dakota	1684	41
46059	2022-09-27	South Dakota	622	13
46061	2022-09-27	South Dakota	696	6
46063	2022-09-27	South Dakota	212	3
46065	2022-09-27	South Dakota	4736	62
46067	2022-09-27	South Dakota	1893	39
46069	2022-09-27	South Dakota	328	8
46071	2022-09-27	South Dakota	694	21
46073	2022-09-27	South Dakota	446	20
46075	2022-09-27	South Dakota	187	2
46077	2022-09-27	South Dakota	1433	23
46079	2022-09-27	South Dakota	2496	28
46081	2022-09-27	South Dakota	7372	88
46083	2022-09-27	South Dakota	16570	105
46085	2022-09-27	South Dakota	1317	13
46091	2022-09-27	South Dakota	868	14
46087	2022-09-27	South Dakota	1444	32
46089	2022-09-27	South Dakota	460	10
46093	2022-09-27	South Dakota	7919	68
46095	2022-09-27	South Dakota	601	8
46097	2022-09-27	South Dakota	499	15
46099	2022-09-27	South Dakota	61485	534
46101	2022-09-27	South Dakota	1624	28
46102	2022-09-27	South Dakota	4561	61
46103	2022-09-27	South Dakota	36782	356
46105	2022-09-27	South Dakota	757	19
46107	2022-09-27	South Dakota	746	7
46109	2022-09-27	South Dakota	2653	53
46111	2022-09-27	South Dakota	633	8
46115	2022-09-27	South Dakota	1562	36
46117	2022-09-27	South Dakota	694	8
46119	2022-09-27	South Dakota	257	3
46121	2022-09-27	South Dakota	3391	52
46123	2022-09-27	South Dakota	1553	26
46125	2022-09-27	South Dakota	2111	63
46127	2022-09-27	South Dakota	4202	52
46129	2022-09-27	South Dakota	1434	26
46135	2022-09-27	South Dakota	6492	60
46137	2022-09-27	South Dakota	692	11
47001	2022-09-27	Tennessee	25821	368
47003	2022-09-27	Tennessee	16901	243
47005	2022-09-27	Tennessee	5196	98
47007	2022-09-27	Tennessee	5106	61
47009	2022-09-27	Tennessee	45263	472
47011	2022-09-27	Tennessee	37027	433
47013	2022-09-27	Tennessee	14480	179
47015	2022-09-27	Tennessee	4856	69
47017	2022-09-27	Tennessee	10506	163
47019	2022-09-27	Tennessee	19186	355
47021	2022-09-27	Tennessee	12235	133
47023	2022-09-27	Tennessee	6525	100
47025	2022-09-27	Tennessee	10222	194
47027	2022-09-27	Tennessee	2523	52
47029	2022-09-27	Tennessee	13492	235
47031	2022-09-27	Tennessee	19501	282
47033	2022-09-27	Tennessee	5878	88
47035	2022-09-27	Tennessee	18296	337
47037	2022-09-27	Tennessee	239234	1753
47041	2022-09-27	Tennessee	7091	106
47039	2022-09-27	Tennessee	4155	71
47043	2022-09-27	Tennessee	18300	255
47045	2022-09-27	Tennessee	14486	217
47047	2022-09-27	Tennessee	13020	196
47049	2022-09-27	Tennessee	6578	134
47051	2022-09-27	Tennessee	14786	197
47053	2022-09-27	Tennessee	19939	273
47055	2022-09-27	Tennessee	10830	201
47057	2022-09-27	Tennessee	7642	114
47059	2022-09-27	Tennessee	25304	393
47061	2022-09-27	Tennessee	4416	77
47063	2022-09-27	Tennessee	22631	377
47065	2022-09-27	Tennessee	115337	1218
47067	2022-09-27	Tennessee	2409	40
47069	2022-09-27	Tennessee	8758	125
47071	2022-09-27	Tennessee	10063	169
47073	2022-09-27	Tennessee	19429	340
47075	2022-09-27	Tennessee	7248	105
47077	2022-09-27	Tennessee	10226	171
47079	2022-09-27	Tennessee	9332	169
47081	2022-09-27	Tennessee	7858	115
47083	2022-09-27	Tennessee	2882	62
47085	2022-09-27	Tennessee	5572	80
47087	2022-09-27	Tennessee	3596	65
47089	2022-09-27	Tennessee	18143	287
47091	2022-09-27	Tennessee	5713	102
47093	2022-09-27	Tennessee	147889	1489
47095	2022-09-27	Tennessee	2940	44
47097	2022-09-27	Tennessee	8627	110
47099	2022-09-27	Tennessee	15943	214
47101	2022-09-27	Tennessee	3905	65
47103	2022-09-27	Tennessee	10996	178
47105	2022-09-27	Tennessee	16993	204
47111	2022-09-27	Tennessee	9704	155
47113	2022-09-27	Tennessee	35202	458
47115	2022-09-27	Tennessee	10285	135
47117	2022-09-27	Tennessee	11734	125
47119	2022-09-27	Tennessee	32954	365
47107	2022-09-27	Tennessee	18853	274
47109	2022-09-27	Tennessee	8855	130
47121	2022-09-27	Tennessee	3896	60
47123	2022-09-27	Tennessee	16729	254
47125	2022-09-27	Tennessee	58698	604
47127	2022-09-27	Tennessee	2555	40
47129	2022-09-27	Tennessee	7161	89
47131	2022-09-27	Tennessee	12205	203
47133	2022-09-27	Tennessee	8070	129
47135	2022-09-27	Tennessee	2608	57
47137	2022-09-27	Tennessee	2017	38
47139	2022-09-27	Tennessee	5281	85
47141	2022-09-27	Tennessee	27856	310
47143	2022-09-27	Tennessee	11130	164
47145	2022-09-27	Tennessee	18052	251
47147	2022-09-27	Tennessee	24226	321
47149	2022-09-27	Tennessee	109674	939
47151	2022-09-27	Tennessee	11037	126
47153	2022-09-27	Tennessee	4809	71
47155	2022-09-27	Tennessee	34237	435
47157	2022-09-27	Tennessee	277403	3485
47159	2022-09-27	Tennessee	6758	91
47161	2022-09-27	Tennessee	3582	63
47163	2022-09-27	Tennessee	54112	760
47165	2022-09-27	Tennessee	60710	765
47167	2022-09-27	Tennessee	20230	244
47169	2022-09-27	Tennessee	4509	47
47171	2022-09-27	Tennessee	6058	100
47173	2022-09-27	Tennessee	6477	79
47175	2022-09-27	Tennessee	2095	48
47177	2022-09-27	Tennessee	14669	184
47179	2022-09-27	Tennessee	44814	520
47181	2022-09-27	Tennessee	6436	76
47183	2022-09-27	Tennessee	10784	169
47185	2022-09-27	Tennessee	9210	134
47187	2022-09-27	Tennessee	71022	423
47189	2022-09-27	Tennessee	47631	512
48001	2022-09-27	Texas	10566	250
48003	2022-09-27	Texas	4679	73
48005	2022-09-27	Texas	16559	495
48007	2022-09-27	Texas	5211	93
48009	2022-09-27	Texas	2505	28
48011	2022-09-27	Texas	637	10
48013	2022-09-27	Texas	15200	238
48015	2022-09-27	Texas	6639	82
48017	2022-09-27	Texas	1680	39
48019	2022-09-27	Texas	4082	79
48021	2022-09-27	Texas	25745	243
48023	2022-09-27	Texas	903	33
48025	2022-09-27	Texas	9516	154
48027	2022-09-27	Texas	79710	930
48029	2022-09-27	Texas	658688	6331
48031	2022-09-27	Texas	2981	35
48033	2022-09-27	Texas	115	2
48035	2022-09-27	Texas	4670	71
48037	2022-09-27	Texas	23062	446
48039	2022-09-27	Texas	111676	1015
48041	2022-09-27	Texas	70867	427
48043	2022-09-27	Texas	1250	32
48045	2022-09-27	Texas	513	8
48047	2022-09-27	Texas	1910	52
48049	2022-09-27	Texas	13821	232
48051	2022-09-27	Texas	5711	68
48053	2022-09-27	Texas	12774	175
48055	2022-09-27	Texas	16845	184
48057	2022-09-27	Texas	6655	52
48059	2022-09-27	Texas	3320	75
48061	2022-09-27	Texas	125040	2084
48063	2022-09-27	Texas	3359	77
48065	2022-09-27	Texas	1655	37
48067	2022-09-27	Texas	8299	199
48069	2022-09-27	Texas	2596	48
48071	2022-09-27	Texas	13958	114
48073	2022-09-27	Texas	9149	257
48075	2022-09-27	Texas	2818	34
48077	2022-09-27	Texas	2365	39
48079	2022-09-27	Texas	954	23
48081	2022-09-27	Texas	991	20
48083	2022-09-27	Texas	1927	74
48085	2022-09-27	Texas	257025	1552
48087	2022-09-27	Texas	823	16
48089	2022-09-27	Texas	4216	67
48091	2022-09-27	Texas	40556	565
48093	2022-09-27	Texas	3892	78
48095	2022-09-27	Texas	1257	12
48097	2022-09-27	Texas	8163	136
48099	2022-09-27	Texas	19952	218
48101	2022-09-27	Texas	355	9
48103	2022-09-27	Texas	1435	24
48105	2022-09-27	Texas	1257	20
48107	2022-09-27	Texas	2149	46
48109	2022-09-27	Texas	530	14
48111	2022-09-27	Texas	2314	44
48113	2022-09-27	Texas	658493	6916
48115	2022-09-27	Texas	3303	99
48123	2022-09-27	Texas	7040	104
48117	2022-09-27	Texas	5428	116
48119	2022-09-27	Texas	1975	27
48121	2022-09-27	Texas	211207	1393
48125	2022-09-27	Texas	491	16
48127	2022-09-27	Texas	6071	51
48129	2022-09-27	Texas	1244	26
48131	2022-09-27	Texas	4091	71
48133	2022-09-27	Texas	3162	116
48135	2022-09-27	Texas	41511	719
48137	2022-09-27	Texas	557	11
48141	2022-09-27	Texas	238210	3808
48139	2022-09-27	Texas	55001	600
48143	2022-09-27	Texas	9425	125
48145	2022-09-27	Texas	4221	68
48147	2022-09-27	Texas	7693	188
48149	2022-09-27	Texas	5328	114
48151	2022-09-27	Texas	684	26
48153	2022-09-27	Texas	2214	49
48155	2022-09-27	Texas	235	11
48157	2022-09-27	Texas	232666	1294
48159	2022-09-27	Texas	2481	45
48161	2022-09-27	Texas	4146	85
48163	2022-09-27	Texas	6492	95
48165	2022-09-27	Texas	2352	83
48167	2022-09-27	Texas	114439	878
48169	2022-09-27	Texas	1409	30
48171	2022-09-27	Texas	5949	113
48173	2022-09-27	Texas	222	3
48175	2022-09-27	Texas	1461	32
48177	2022-09-27	Texas	5180	105
48179	2022-09-27	Texas	6666	131
48181	2022-09-27	Texas	30154	662
48183	2022-09-27	Texas	25749	710
48185	2022-09-27	Texas	9636	125
48187	2022-09-27	Texas	43510	413
48189	2022-09-27	Texas	7654	248
48191	2022-09-27	Texas	1208	24
48193	2022-09-27	Texas	2038	35
48195	2022-09-27	Texas	2182	30
48197	2022-09-27	Texas	595	20
48199	2022-09-27	Texas	14054	254
48201	2022-09-27	Texas	1213414	11295
48203	2022-09-27	Texas	15091	231
48205	2022-09-27	Texas	1456	3
48207	2022-09-27	Texas	1025	39
48209	2022-09-27	Texas	73827	536
48211	2022-09-27	Texas	1331	8
48213	2022-09-27	Texas	17538	432
48215	2022-09-27	Texas	250294	3998
48217	2022-09-27	Texas	9738	199
48219	2022-09-27	Texas	8659	165
48221	2022-09-27	Texas	14455	284
48223	2022-09-27	Texas	8120	187
48225	2022-09-27	Texas	4665	114
48227	2022-09-27	Texas	7497	191
48229	2022-09-27	Texas	1140	18
48231	2022-09-27	Texas	18401	373
48233	2022-09-27	Texas	7222	138
48235	2022-09-27	Texas	558	3
48237	2022-09-27	Texas	1625	30
48239	2022-09-27	Texas	3697	61
48241	2022-09-27	Texas	7736	199
48243	2022-09-27	Texas	259	10
48245	2022-09-27	Texas	60204	865
48247	2022-09-27	Texas	3528	22
48249	2022-09-27	Texas	13376	221
48251	2022-09-27	Texas	49346	759
48253	2022-09-27	Texas	5052	93
48255	2022-09-27	Texas	6266	73
48257	2022-09-27	Texas	40489	544
48259	2022-09-27	Texas	9377	129
48261	2022-09-27	Texas	97	2
48263	2022-09-27	Texas	217	4
48265	2022-09-27	Texas	10588	194
48267	2022-09-27	Texas	843	15
48269	2022-09-27	Texas	53	0
48271	2022-09-27	Texas	805	12
48273	2022-09-27	Texas	8732	152
48275	2022-09-27	Texas	593	25
48283	2022-09-27	Texas	2550	49
48277	2022-09-27	Texas	14358	268
48279	2022-09-27	Texas	4825	124
48281	2022-09-27	Texas	6088	93
48285	2022-09-27	Texas	4662	123
48287	2022-09-27	Texas	4945	62
48289	2022-09-27	Texas	4094	95
48291	2022-09-27	Texas	21115	409
48293	2022-09-27	Texas	5781	129
48295	2022-09-27	Texas	760	17
48297	2022-09-27	Texas	2328	42
48299	2022-09-27	Texas	4729	98
48301	2022-09-27	Texas	340	1
48303	2022-09-27	Texas	105687	1359
48305	2022-09-27	Texas	1641	40
48313	2022-09-27	Texas	4081	59
48315	2022-09-27	Texas	1922	61
48317	2022-09-27	Texas	1341	26
48319	2022-09-27	Texas	919	13
48321	2022-09-27	Texas	9813	184
48323	2022-09-27	Texas	23383	474
48307	2022-09-27	Texas	1633	49
48309	2022-09-27	Texas	70184	935
48311	2022-09-27	Texas	182	9
48325	2022-09-27	Texas	11552	208
48327	2022-09-27	Texas	602	12
48329	2022-09-27	Texas	45266	507
48331	2022-09-27	Texas	5671	106
48333	2022-09-27	Texas	1546	37
48335	2022-09-27	Texas	2047	50
48337	2022-09-27	Texas	5092	131
48339	2022-09-27	Texas	164277	1334
48341	2022-09-27	Texas	6065	113
48343	2022-09-27	Texas	2850	75
48345	2022-09-27	Texas	304	13
48347	2022-09-27	Texas	13973	269
48349	2022-09-27	Texas	13608	226
48351	2022-09-27	Texas	1670	63
48353	2022-09-27	Texas	3401	101
48355	2022-09-27	Texas	108532	1559
48357	2022-09-27	Texas	2588	49
48359	2022-09-27	Texas	609	6
48361	2022-09-27	Texas	16691	366
48363	2022-09-27	Texas	7738	155
48365	2022-09-27	Texas	5225	133
48367	2022-09-27	Texas	38617	466
48369	2022-09-27	Texas	2562	53
48371	2022-09-27	Texas	3394	72
48373	2022-09-27	Texas	8944	261
48375	2022-09-27	Texas	39941	755
48377	2022-09-27	Texas	1096	40
48379	2022-09-27	Texas	2108	60
48381	2022-09-27	Texas	42347	530
48383	2022-09-27	Texas	941	15
48385	2022-09-27	Texas	957	25
48387	2022-09-27	Texas	2593	71
48389	2022-09-27	Texas	5239	75
48391	2022-09-27	Texas	2090	39
48393	2022-09-27	Texas	187	2
48395	2022-09-27	Texas	5082	78
48397	2022-09-27	Texas	29945	272
48399	2022-09-27	Texas	2617	69
48401	2022-09-27	Texas	11911	236
48403	2022-09-27	Texas	1461	90
48405	2022-09-27	Texas	1166	45
48407	2022-09-27	Texas	6401	106
48409	2022-09-27	Texas	13356	356
48411	2022-09-27	Texas	1387	38
48413	2022-09-27	Texas	573	9
48415	2022-09-27	Texas	5548	105
48417	2022-09-27	Texas	1019	12
48419	2022-09-27	Texas	4975	134
48421	2022-09-27	Texas	513	16
48423	2022-09-27	Texas	53496	987
48425	2022-09-27	Texas	2194	37
48427	2022-09-27	Texas	23120	371
48429	2022-09-27	Texas	2030	51
48431	2022-09-27	Texas	295	9
48433	2022-09-27	Texas	381	7
48435	2022-09-27	Texas	894	14
48437	2022-09-27	Texas	2534	34
48439	2022-09-27	Texas	648120	6107
48441	2022-09-27	Texas	40503	744
48443	2022-09-27	Texas	134	3
48445	2022-09-27	Texas	2879	85
48447	2022-09-27	Texas	289	10
48449	2022-09-27	Texas	9747	132
48451	2022-09-27	Texas	47734	563
48453	2022-09-27	Texas	275043	1789
48455	2022-09-27	Texas	3064	75
48457	2022-09-27	Texas	4679	88
48459	2022-09-27	Texas	8646	190
48461	2022-09-27	Texas	906	18
48463	2022-09-27	Texas	11319	147
48465	2022-09-27	Texas	15655	305
48467	2022-09-27	Texas	11910	292
48469	2022-09-27	Texas	21860	420
48471	2022-09-27	Texas	21341	215
48473	2022-09-27	Texas	11134	109
48475	2022-09-27	Texas	3127	48
48477	2022-09-27	Texas	10382	151
48479	2022-09-27	Texas	106241	1059
48481	2022-09-27	Texas	10785	224
48483	2022-09-27	Texas	1271	24
48485	2022-09-27	Texas	37453	699
48487	2022-09-27	Texas	3948	89
48489	2022-09-27	Texas	8293	135
48491	2022-09-27	Texas	158679	951
48493	2022-09-27	Texas	12257	163
48495	2022-09-27	Texas	2042	35
48497	2022-09-27	Texas	18653	279
48499	2022-09-27	Texas	9142	298
48501	2022-09-27	Texas	1628	42
48503	2022-09-27	Texas	4306	95
48505	2022-09-27	Texas	4228	56
48507	2022-09-27	Texas	4399	70
49001	2022-09-27	Utah	1714	16
49003	2022-09-27	Utah	15344	127
49005	2022-09-27	Utah	40180	114
49007	2022-09-27	Utah	5775	53
49009	2022-09-27	Utah	164	0
49011	2022-09-27	Utah	112964	426
49013	2022-09-27	Utah	4839	27
49015	2022-09-27	Utah	2777	28
49017	2022-09-27	Utah	1016	16
49019	2022-09-27	Utah	2640	6
49021	2022-09-27	Utah	15852	95
49023	2022-09-27	Utah	3124	27
49025	2022-09-27	Utah	1509	15
49027	2022-09-27	Utah	3532	36
49029	2022-09-27	Utah	3109	15
49031	2022-09-27	Utah	328	7
49033	2022-09-27	Utah	363	0
49035	2022-09-27	Utah	389188	1725
49037	2022-09-27	Utah	4619	50
49039	2022-09-27	Utah	8766	57
49041	2022-09-27	Utah	5736	31
49043	2022-09-27	Utah	15242	27
49045	2022-09-27	Utah	23837	109
49047	2022-09-27	Utah	9103	76
49049	2022-09-27	Utah	218657	842
49051	2022-09-27	Utah	11707	37
49053	2022-09-27	Utah	48765	483
49055	2022-09-27	Utah	501	0
49057	2022-09-27	Utah	80373	461
50001	2022-09-27	Vermont	6515	22
50003	2022-09-27	Vermont	11373	75
50005	2022-09-27	Vermont	6298	32
50007	2022-09-27	Vermont	37640	188
50009	2022-09-27	Vermont	1394	3
50011	2022-09-27	Vermont	10925	70
50013	2022-09-27	Vermont	1231	6
50015	2022-09-27	Vermont	4176	20
50017	2022-09-27	Vermont	4811	14
50019	2022-09-27	Vermont	7010	38
50021	2022-09-27	Vermont	15463	80
50023	2022-09-27	Vermont	13548	63
50025	2022-09-27	Vermont	8078	42
50027	2022-09-27	Vermont	10912	61
78010	2022-09-27	Virgin Islands	11860	52
78020	2022-09-27	Virgin Islands	1011	5
78030	2022-09-27	Virgin Islands	10277	66
51001	2022-09-27	Virginia	8189	112
51003	2022-09-27	Virginia	22889	189
51510	2022-09-27	Virginia	41645	205
51005	2022-09-27	Virginia	4058	106
51007	2022-09-27	Virginia	3216	60
51009	2022-09-27	Virginia	8605	101
51011	2022-09-27	Virginia	4528	58
51013	2022-09-27	Virginia	60882	338
51015	2022-09-27	Virginia	22588	231
51017	2022-09-27	Virginia	1056	22
51019	2022-09-27	Virginia	20185	256
51021	2022-09-27	Virginia	2155	26
51023	2022-09-27	Virginia	9023	109
51520	2022-09-27	Virginia	5394	87
51025	2022-09-27	Virginia	3717	51
51027	2022-09-27	Virginia	5438	130
51029	2022-09-27	Virginia	4665	61
51530	2022-09-27	Virginia	2119	45
51031	2022-09-27	Virginia	15799	230
51033	2022-09-27	Virginia	8414	90
51035	2022-09-27	Virginia	8380	155
51036	2022-09-27	Virginia	1473	31
51037	2022-09-27	Virginia	3061	46
51540	2022-09-27	Virginia	11805	82
51550	2022-09-27	Virginia	59092	535
51041	2022-09-27	Virginia	90884	817
51043	2022-09-27	Virginia	3186	54
51570	2022-09-27	Virginia	5920	106
51580	2022-09-27	Virginia	1714	30
51045	2022-09-27	Virginia	1268	23
51047	2022-09-27	Virginia	13294	164
51049	2022-09-27	Virginia	1658	29
51590	2022-09-27	Virginia	13514	287
51051	2022-09-27	Virginia	4079	57
51053	2022-09-27	Virginia	6756	101
51595	2022-09-27	Virginia	1517	56
51057	2022-09-27	Virginia	2595	38
51059	2022-09-27	Virginia	235472	1579
51600	2022-09-27	Virginia	2393	46
51610	2022-09-27	Virginia	3127	18
51061	2022-09-27	Virginia	15281	157
51063	2022-09-27	Virginia	3052	50
51065	2022-09-27	Virginia	6361	50
51067	2022-09-27	Virginia	13109	208
51620	2022-09-27	Virginia	2563	55
51069	2022-09-27	Virginia	24501	262
51630	2022-09-27	Virginia	6594	42
51640	2022-09-27	Virginia	3190	80
51071	2022-09-27	Virginia	4958	52
51073	2022-09-27	Virginia	8691	109
51075	2022-09-27	Virginia	5058	58
51077	2022-09-27	Virginia	4930	84
51079	2022-09-27	Virginia	4702	63
51081	2022-09-27	Virginia	3610	43
51083	2022-09-27	Virginia	8746	177
51650	2022-09-27	Virginia	34732	349
51085	2022-09-27	Virginia	26152	319
51660	2022-09-27	Virginia	14385	164
51087	2022-09-27	Virginia	81643	1014
51089	2022-09-27	Virginia	14939	287
51091	2022-09-27	Virginia	459	6
51670	2022-09-27	Virginia	7156	120
51093	2022-09-27	Virginia	8483	124
51095	2022-09-27	Virginia	19249	132
51099	2022-09-27	Virginia	6265	48
51101	2022-09-27	Virginia	4402	48
51097	2022-09-27	Virginia	1339	13
51103	2022-09-27	Virginia	2144	38
51105	2022-09-27	Virginia	7413	102
51678	2022-09-27	Virginia	2511	34
51107	2022-09-27	Virginia	88532	417
51109	2022-09-27	Virginia	8217	91
51111	2022-09-27	Virginia	3046	42
51680	2022-09-27	Virginia	22530	289
51113	2022-09-27	Virginia	2872	44
51685	2022-09-27	Virginia	4524	28
51683	2022-09-27	Virginia	10900	75
51690	2022-09-27	Virginia	4023	129
51115	2022-09-27	Virginia	1813	27
51117	2022-09-27	Virginia	7165	137
51119	2022-09-27	Virginia	2258	51
51121	2022-09-27	Virginia	23071	167
51125	2022-09-27	Virginia	3037	37
51127	2022-09-27	Virginia	5403	40
51700	2022-09-27	Virginia	44760	428
51710	2022-09-27	Virginia	49963	503
51131	2022-09-27	Virginia	2668	70
51133	2022-09-27	Virginia	2500	44
51720	2022-09-27	Virginia	1631	22
51135	2022-09-27	Virginia	5178	98
51137	2022-09-27	Virginia	8381	99
51139	2022-09-27	Virginia	6374	126
51141	2022-09-27	Virginia	4485	99
51730	2022-09-27	Virginia	9344	144
51143	2022-09-27	Virginia	17033	222
51735	2022-09-27	Virginia	2725	31
51740	2022-09-27	Virginia	24380	350
51145	2022-09-27	Virginia	5995	67
51147	2022-09-27	Virginia	6138	79
51149	2022-09-27	Virginia	10721	82
51153	2022-09-27	Virginia	116922	786
51155	2022-09-27	Virginia	8996	143
51750	2022-09-27	Virginia	5940	55
51157	2022-09-27	Virginia	1246	12
51159	2022-09-27	Virginia	2783	27
51760	2022-09-27	Virginia	56812	537
51161	2022-09-27	Virginia	25799	303
51770	2022-09-27	Virginia	25935	399
51163	2022-09-27	Virginia	4684	89
51165	2022-09-27	Virginia	17765	254
51167	2022-09-27	Virginia	8377	125
51775	2022-09-27	Virginia	6744	103
51169	2022-09-27	Virginia	6893	121
51171	2022-09-27	Virginia	12626	243
51173	2022-09-27	Virginia	10873	187
51175	2022-09-27	Virginia	4130	97
51177	2022-09-27	Virginia	32819	317
51179	2022-09-27	Virginia	38291	187
51790	2022-09-27	Virginia	7200	128
51800	2022-09-27	Virginia	22473	322
51181	2022-09-27	Virginia	1279	21
51183	2022-09-27	Virginia	2688	43
51185	2022-09-27	Virginia	12951	197
51810	2022-09-27	Virginia	106575	898
51187	2022-09-27	Virginia	10376	166
51191	2022-09-27	Virginia	16666	229
51820	2022-09-27	Virginia	6894	75
51193	2022-09-27	Virginia	3845	57
51830	2022-09-27	Virginia	2100	23
51840	2022-09-27	Virginia	7481	88
51195	2022-09-27	Virginia	13020	210
51197	2022-09-27	Virginia	8958	162
51199	2022-09-27	Virginia	12390	117
53001	2022-09-27	Washington	5517	42
53003	2022-09-27	Washington	5147	76
53005	2022-09-27	Washington	59563	508
53007	2022-09-27	Washington	23190	184
53009	2022-09-27	Washington	14723	174
53011	2022-09-27	Washington	105425	926
53013	2022-09-27	Washington	703	16
53015	2022-09-27	Washington	26054	376
53017	2022-09-27	Washington	12798	80
53019	2022-09-27	Washington	1656	30
53021	2022-09-27	Washington	35911	219
53023	2022-09-27	Washington	461	7
53025	2022-09-27	Washington	31153	264
53027	2022-09-27	Washington	19300	223
53029	2022-09-27	Washington	12660	98
53031	2022-09-27	Washington	4264	31
53033	2022-09-27	Washington	515393	3171
53035	2022-09-27	Washington	48835	387
53037	2022-09-27	Washington	9907	84
53039	2022-09-27	Washington	4127	54
53041	2022-09-27	Washington	19923	280
53043	2022-09-27	Washington	2552	29
53045	2022-09-27	Washington	14698	162
53047	2022-09-27	Washington	9900	133
53049	2022-09-27	Washington	4462	70
53051	2022-09-27	Washington	2782	39
53053	2022-09-27	Washington	228872	1514
53055	2022-09-27	Washington	1818	2
53057	2022-09-27	Washington	26556	234
53059	2022-09-27	Washington	1714	15
53061	2022-09-27	Washington	191373	1299
53063	2022-09-27	Washington	144207	1536
53065	2022-09-27	Washington	9349	158
53067	2022-09-27	Washington	58806	464
53069	2022-09-27	Washington	607	9
53071	2022-09-27	Washington	18615	156
53073	2022-09-27	Washington	46497	333
53075	2022-09-27	Washington	9769	97
53077	2022-09-27	Washington	82123	836
54001	2022-09-27	West Virginia	5683	77
54003	2022-09-27	West Virginia	41861	322
54005	2022-09-27	West Virginia	8115	93
54007	2022-09-27	West Virginia	4741	48
54009	2022-09-27	West Virginia	5855	106
54011	2022-09-27	West Virginia	32311	409
54013	2022-09-27	West Virginia	2181	15
54015	2022-09-27	West Virginia	2624	49
54017	2022-09-27	West Virginia	2393	18
54019	2022-09-27	West Virginia	15710	213
54021	2022-09-27	West Virginia	2438	22
54023	2022-09-27	West Virginia	4443	59
54025	2022-09-27	West Virginia	11901	172
54027	2022-09-27	West Virginia	6842	74
54029	2022-09-27	West Virginia	7889	149
54031	2022-09-27	West Virginia	5306	51
54033	2022-09-27	West Virginia	24315	267
54035	2022-09-27	West Virginia	8227	144
54037	2022-09-27	West Virginia	16983	137
54039	2022-09-27	West Virginia	55756	798
54041	2022-09-27	West Virginia	6628	93
54043	2022-09-27	West Virginia	6720	88
54045	2022-09-27	West Virginia	12038	195
54049	2022-09-27	West Virginia	18571	193
54051	2022-09-27	West Virginia	10699	164
54053	2022-09-27	West Virginia	8267	103
54047	2022-09-27	West Virginia	6978	81
54055	2022-09-27	West Virginia	21671	280
54057	2022-09-27	West Virginia	9490	165
54059	2022-09-27	West Virginia	9230	128
54061	2022-09-27	West Virginia	29591	205
54063	2022-09-27	West Virginia	5276	49
54065	2022-09-27	West Virginia	4802	71
54067	2022-09-27	West Virginia	8918	105
54069	2022-09-27	West Virginia	13152	189
54071	2022-09-27	West Virginia	2216	22
54073	2022-09-27	West Virginia	2347	38
54075	2022-09-27	West Virginia	2366	34
54077	2022-09-27	West Virginia	10448	141
54079	2022-09-27	West Virginia	19777	202
54081	2022-09-27	West Virginia	28202	381
54083	2022-09-27	West Virginia	11283	95
54085	2022-09-27	West Virginia	2850	32
54087	2022-09-27	West Virginia	4115	43
54089	2022-09-27	West Virginia	3465	59
54091	2022-09-27	West Virginia	5462	76
54093	2022-09-27	West Virginia	2277	38
54095	2022-09-27	West Virginia	2555	33
54097	2022-09-27	West Virginia	8499	101
54099	2022-09-27	West Virginia	11175	138
54101	2022-09-27	West Virginia	2683	37
54103	2022-09-27	West Virginia	5179	90
54105	2022-09-27	West Virginia	1694	25
54107	2022-09-27	West Virginia	26404	360
54109	2022-09-27	West Virginia	8834	125
55001	2022-09-27	Wisconsin	5395	65
55003	2022-09-27	Wisconsin	3904	41
55005	2022-09-27	Wisconsin	15193	148
55007	2022-09-27	Wisconsin	4061	42
55009	2022-09-27	Wisconsin	96854	588
55011	2022-09-27	Wisconsin	3971	12
55013	2022-09-27	Wisconsin	4675	45
55015	2022-09-27	Wisconsin	16036	126
55017	2022-09-27	Wisconsin	20739	199
55019	2022-09-27	Wisconsin	8490	126
55021	2022-09-27	Wisconsin	18244	138
55023	2022-09-27	Wisconsin	5074	31
55025	2022-09-27	Wisconsin	165205	576
55027	2022-09-27	Wisconsin	30184	350
55029	2022-09-27	Wisconsin	8134	78
55031	2022-09-27	Wisconsin	13473	83
55033	2022-09-27	Wisconsin	14811	77
55035	2022-09-27	Wisconsin	34568	200
55037	2022-09-27	Wisconsin	1253	17
55039	2022-09-27	Wisconsin	36245	294
55041	2022-09-27	Wisconsin	3130	52
55043	2022-09-27	Wisconsin	14546	154
55045	2022-09-27	Wisconsin	10753	60
55047	2022-09-27	Wisconsin	5892	66
55049	2022-09-27	Wisconsin	6382	31
55051	2022-09-27	Wisconsin	1655	49
55053	2022-09-27	Wisconsin	6529	45
55055	2022-09-27	Wisconsin	24873	250
55057	2022-09-27	Wisconsin	8833	72
55059	2022-09-27	Wisconsin	51903	667
55061	2022-09-27	Wisconsin	6437	61
55063	2022-09-27	Wisconsin	40943	197
55065	2022-09-27	Wisconsin	4126	29
55067	2022-09-27	Wisconsin	6116	100
55069	2022-09-27	Wisconsin	8336	154
55071	2022-09-27	Wisconsin	23282	199
55073	2022-09-27	Wisconsin	45731	521
55075	2022-09-27	Wisconsin	13351	138
55077	2022-09-27	Wisconsin	4395	63
55078	2022-09-27	Wisconsin	2205	15
55079	2022-09-27	Wisconsin	316300	2375
55081	2022-09-27	Wisconsin	13811	104
55083	2022-09-27	Wisconsin	12633	126
55085	2022-09-27	Wisconsin	10027	144
55087	2022-09-27	Wisconsin	60996	424
55089	2022-09-27	Wisconsin	25995	193
55091	2022-09-27	Wisconsin	2205	19
55093	2022-09-27	Wisconsin	12820	76
55095	2022-09-27	Wisconsin	14060	124
55097	2022-09-27	Wisconsin	21178	165
55099	2022-09-27	Wisconsin	3770	35
55101	2022-09-27	Wisconsin	65683	715
55103	2022-09-27	Wisconsin	4628	52
55105	2022-09-27	Wisconsin	50913	421
55107	2022-09-27	Wisconsin	3927	60
55111	2022-09-27	Wisconsin	19351	145
55113	2022-09-27	Wisconsin	5504	63
55115	2022-09-27	Wisconsin	13284	158
55117	2022-09-27	Wisconsin	36965	341
55109	2022-09-27	Wisconsin	28761	155
55119	2022-09-27	Wisconsin	5406	73
55121	2022-09-27	Wisconsin	9380	67
55123	2022-09-27	Wisconsin	7104	108
55125	2022-09-27	Wisconsin	6058	99
55127	2022-09-27	Wisconsin	30710	294
55129	2022-09-27	Wisconsin	4665	47
55131	2022-09-27	Wisconsin	43668	353
55133	2022-09-27	Wisconsin	130416	1151
55135	2022-09-27	Wisconsin	15329	257
55137	2022-09-27	Wisconsin	7213	88
55139	2022-09-27	Wisconsin	59546	401
55141	2022-09-27	Wisconsin	24991	247
56001	2022-09-27	Wyoming	11126	51
56003	2022-09-27	Wyoming	2929	64
56005	2022-09-27	Wyoming	13333	152
56007	2022-09-27	Wyoming	4913	54
56009	2022-09-27	Wyoming	3494	56
56011	2022-09-27	Wyoming	1498	30
56013	2022-09-27	Wyoming	15952	199
56015	2022-09-27	Wyoming	4414	57
56017	2022-09-27	Wyoming	1348	19
56019	2022-09-27	Wyoming	2165	21
56021	2022-09-27	Wyoming	30003	306
56023	2022-09-27	Wyoming	4699	32
56025	2022-09-27	Wyoming	24626	285
56027	2022-09-27	Wyoming	752	10
56029	2022-09-27	Wyoming	7436	150
56031	2022-09-27	Wyoming	2141	43
56033	2022-09-27	Wyoming	9251	82
56035	2022-09-27	Wyoming	2186	28
56037	2022-09-27	Wyoming	12143	130
56039	2022-09-27	Wyoming	11699	16
56041	2022-09-27	Wyoming	6145	41
56043	2022-09-27	Wyoming	2661	47
56045	2022-09-27	Wyoming	1814	21
48999	2022-10-24	Texas	65	0
1001	2022-09-27	Alabama	18359	227
\.


--
-- Name: colleges colleges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT colleges_pkey PRIMARY KEY (ipeds_id);


--
-- Name: countyfipsandname countyfipsandname_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countyfipsandname
    ADD CONSTRAINT countyfipsandname_pkey PRIMARY KEY (fips);


--
-- Name: mask_use mask_use_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mask_use
    ADD CONSTRAINT mask_use_pkey PRIMARY KEY (fips);


--
-- Name: prisons prisons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prisons
    ADD CONSTRAINT prisons_pkey PRIMARY KEY (nyt_id);


--
-- Name: us_counties_recent us_counties_recent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.us_counties_recent
    ADD CONSTRAINT us_counties_recent_pkey PRIMARY KEY (fips);


--
-- Name: TABLE colleges; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.colleges TO asu_admin;


--
-- Name: TABLE countyfipsandname; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.countyfipsandname TO asu_admin;


--
-- Name: TABLE mask_use; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.mask_use TO asu_admin;


--
-- Name: TABLE prisons; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.prisons TO asu_admin;


--
-- Name: TABLE us_counties_recent; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.us_counties_recent TO asu_admin;


--
-- PostgreSQL database dump complete
--

