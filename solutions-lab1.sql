-- Crear la base de datos si no existe
-- CREATE DATABASE IF NOT EXISTS lab_ironhack;

-- Usar la base de datos creada
-- USE DATABASE lab_ironhack;

-- Crear el esquema si no existe
CREATE SCHEMA IF NOT EXISTS lab_sql;

-- Usar el esquema
-- USE SCHEMA lab_sql;

-- Crear una stage interna para cargar el archivo CSV
-- CREATE STAGE my_stage;

-- Seleccionar 10 filas de la tabla nyc_311_requests para verificar los datos
SELECT * FROM nyc_311_requests LIMIT 10;

-- Seleccionar los 5 tipos principales de quejas basados en el número de quejas registradas
SELECT COMPLAINT_TYPE, COUNT(*) AS NUM_COMPLAINTS
FROM NYC_311_REQUESTS
GROUP BY COMPLAINT_TYPE
ORDER BY NUM_COMPLAINTS DESC
LIMIT 5;

-- Calcular el número total de quejas para cada distrito
SELECT BOROUGH, COUNT(*) AS TOTAL_COMPLAINTS
FROM NYC_311_REQUESTS
GROUP BY BOROUGH;

-- Filtrar tipos de quejas que tienen más de 10 quejas registradas
SELECT COMPLAINT_TYPE, COUNT(*) AS NUM_COMPLAINTS
FROM NYC_311_REQUESTS
GROUP BY COMPLAINT_TYPE
HAVING COUNT(*) > 10
ORDER BY NUM_COMPLAINTS DESC;

-- Comparar el número de quejas del tipo 'Noise - Residential' en cada distrito
SELECT BOROUGH, COUNT(*) AS NUM_COMPLAINTS
FROM NYC_311_REQUESTS
WHERE COMPLAINT_TYPE = 'Noise - Residential'
GROUP BY BOROUGH;