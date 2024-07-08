
--Wildlife Management Units
SELECT
    WILDLIFE_MGMT_UNIT_ID AS MU,
    ROUND(SDO_CS.TRANSFORM(SDO_GEOM.SDO_CENTROID(GEOMETRY, 0.005), 4326).SDO_POINT.X, 3) AS CENTER_LONG,
    ROUND(SDO_CS.TRANSFORM(SDO_GEOM.SDO_CENTROID(GEOMETRY, 0.005), 4326).SDO_POINT.Y, 3) AS CENTER_LAT
FROM
    WHSE_WILDLIFE_MANAGEMENT.WAA_WILDLIFE_MGMT_UNITS_SVW;
    
	
	
	
--Env Regions
SELECT
    REGION_NAME AS Region,
    ROUND(SDO_CS.TRANSFORM(SDO_GEOM.SDO_CENTROID(GEOMETRY, 0.005), 4326).SDO_POINT.X, 3) AS CENTER_LONG,
    ROUND(SDO_CS.TRANSFORM(SDO_GEOM.SDO_CENTROID(GEOMETRY, 0.005), 4326).SDO_POINT.Y, 3) AS CENTER_LAT
FROM
    WHSE_ADMIN_BOUNDARIES.EADM_WLAP_REGION_BND_AREA_SVW; 