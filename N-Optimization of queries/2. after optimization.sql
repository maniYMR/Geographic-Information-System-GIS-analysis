SELECT 
    'Centre Avenue' AS loc1,
    'Woodside' AS loc2,
    'Long Island City' AS loc3,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('01010000007959130B7C6A52C07C26A02EF7524440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('0101000000489D256DCF7952C0FFC8192F825F4440', 'hex')), 4326)
    ) / 1609.34 AS distance_A_to_B_in_miles,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('0101000000489D256DCF7952C0FFC8192F825F4440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('010100000086657D143F7D52C02F1686C8E95E4440', 'hex')), 4326)
    ) / 1609.34 AS distance_B_to_C_in_miles,
    ST_DistanceSphere(
        ST_SetSRID(ST_GeomFromEWKB(decode('010100000086657D143F7D52C02F1686C8E95E4440', 'hex')), 4326),
        ST_SetSRID(ST_GeomFromEWKB(decode('01010000007959130B7C6A52C07C26A02EF7524440', 'hex')), 4326)
    ) / 1609.34 AS distance_C_to_A_in_miles;

