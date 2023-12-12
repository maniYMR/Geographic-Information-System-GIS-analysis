-- Create an index on the fclass column
CREATE INDEX idx_fclass2 ON gis_osm_places_free_1 (fclass);

-- Create an index on the population column
CREATE INDEX idx_population ON gis_osm_places_free_1 (population);