#   landtype areas and its geometry type
SELECT 
    fclass AS land_type,
    GeometryType(geom) AS geometry_type,
    SUM(ST_Area(geom::geography)) AS total_area
FROM 
    gis_osm_landuse_a_free_1
WHERE 
    name IS NOT NULL
GROUP BY 
    fclass, GeometryType(geom);