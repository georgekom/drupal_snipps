-- create TRUNCATE statements for current database
SELECT DISTINCT CONCAT(  
  "TRUNCATE TABLE ", 
  TABLE_NAME, 
  ";" ) 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME LIKE  "cache%"
AND TABLE_SCHEMA = 'dbname';

-- use this to include db_name in statements (replace dbname)
SELECT DISTINCT CONCAT(  
  "TRUNCATE TABLE ", 
  TABLE_SCHEMA,  
  ".",
  TABLE_NAME, 
  ";" ) 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME LIKE  "cache%"
AND TABLE_SCHEMA = 'dbname';
