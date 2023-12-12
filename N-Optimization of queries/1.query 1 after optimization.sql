SELECT 
    class AS city_type, 
    SUM(population) AS total_population
FROM 
    gis_osm_places_free_1
WHERE 
    class IS NOT NULL AND population IS NOT NULL
GROUP BY 
    city_type
ORDER BY 
    total_population DESC;