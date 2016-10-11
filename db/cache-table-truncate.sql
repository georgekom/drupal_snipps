-- use this to include db_name in statement (replace dbname)

SELECT DISTINCT CONCAT(  
  "TRUNCATE TABLE ", 
  TABLE_SCHEMA,  
  ".",
  TABLE_NAME, 
  ";" ) 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME LIKE  "cache_%"
AND TABLE_SCHEMA = 'dbname';
