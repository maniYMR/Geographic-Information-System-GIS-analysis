# distance of two locations
SELECT 
    'Burger King' AS loc1,
    'New City Library' AS loc2,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('0101000000848DA1525B7F52C00498E8E225924440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('010100000011CE5D013B7F52C08B47F31142944440', 'hex')), 4326)
    ) / 1609.34 AS distance_in_miles;
