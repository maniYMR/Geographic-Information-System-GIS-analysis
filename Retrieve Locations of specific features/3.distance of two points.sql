# distance of two points
SELECT 
	'Millbrook'as loc1,
	'New York' as loc2,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('010100000079CE71C94C6C52C001971128ACE44440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('0101000000D9D1938D628052C05938A4AC3A5B4440', 'hex')), 4326)
    ) / 1609.34 AS distance_in_miles;
