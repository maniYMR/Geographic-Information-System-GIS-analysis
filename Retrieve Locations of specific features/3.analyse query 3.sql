# EXPLAIN ANALYZE
SELECT fclass AS type_of_land, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM gis_osm_landuse_a_free_1)) AS usage_percentage
FROM gis_osm_landuse_a_free_1
GROUP BY fclass;