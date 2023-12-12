# distance of two points
SELECT
    'South Ferry' as loc1,
    'Centre Avenue' as loc2,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('0101000000C6BBBF304F1452C03843BB568B524440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('01010000007959130B7C6A52C07C6A620EF7524440', 'hex')), 4326)
    ) / 1609.34 AS distance_in_miles;


