# sum centerline miles by state
CREATE TABLE outdoors.bikemiles(
      state varchar(30),
      bikemiles int
)

INSERT INTO outdoors.bikemiles
SELECT state, sum(centerline_miles) AS bikemiles
FROM outdoors.builtbikelanes
GROUP BY state

#count campsites by state
CREATE TABLE outdoors.campcount(
      state varchar(30),
      campcount int
)

INSERT INTO outdoors.campcount
SELECT state, (COUNT(ca.campname)) AS campcount
FROM outdoors.camping as ca
GROUP BY state

#count climbing routes by state

CREATE TABLE outdoors.climbcount(
      state varchar(30),
      routecount int
)

INSERT INTO outdoors.climbcount
SELECT state, (COUNT(cl.routename)) AS routecount
FROM outdoors.climbing as cl
GROUP BY state

#count ski resorts by state

CREATE TABLE outdoors.skicount(
      state varchar(30),
      skicount int
)

INSERT INTO outdoors.skicount
SELECT state, (COUNT(sk.resort_name)) AS skicount
FROM outdoors.skiing as sk
GROUP BY state

#create overall state recreation table

SELECT
  s.name,
  s.abbreviation,
	st.region,
	st.division,
	st.square_miles,
	st.inches,
	st.preciprank,
	st.avg_°f,
	st.temprank,
	b.bikemiles,
	ca.campcount,
	cl.routecount,
	sk.skicount
INTO outdoors.rec
FROM outdoors.state as s
FULL OUTER JOIN outdoors.stateinfo as st ON s.name = st.state
FULL OUTER JOIN outdoors.bikemiles as b ON s.abbreviation = b.state
FULL OUTER JOIN outdoors.campcount as ca ON s.abbreviation = ca.state
FULL OUTER JOIN outdoors.climbcount as cl ON s.name= cl.state
FULL OUTER JOIN outdoors.skicount as sk ON s.name = sk.state
ORDER BY s.name
