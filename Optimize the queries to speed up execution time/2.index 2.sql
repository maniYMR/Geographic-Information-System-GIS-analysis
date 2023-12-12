CREATE INDEX IF NOT EXISTS idx_name3 ON gis_osm_landuse_a_free_1 (name);
CREATE INDEX IF NOT EXISTS idx_geom2 ON gis_osm_landuse_a_free_1 USING GIST (geom);