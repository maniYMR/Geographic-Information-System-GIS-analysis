#EXPLAIN ANALYZE
SELECT 
    name AS building_name,
    GeometryType(geom) AS geometry_type,
    ST_Area(geom::geography) AS areas
FROM 
    gis_osm_buildings_a_free_1
WHERE 
    name IS NOT NULL
ORDER BY 
    areas DESC
LIMIT 5;