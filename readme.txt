# copy DB
mysql -uroot -p
create database askbapcovendor;
mysqldump -u root -p bapco > askbapco.sql
mysql -u root -p askbapcovendor < askbapco.sql

# create VENV, install requirements, set uWSGI

# change matrixs start with 4
# SELECT
SELECT id, matrix, counter, 
(CASE WHEN (counter <= 999) 
    THEN counter + 40000 
    ELSE CONCAT("4",SUBSTRING(counter,2)) END) 
    As newCounter 
    FROM `matrix` 
    LIMIT 1000

# UPDATE MATRIX

UPDATE matrix SET counter = CASE 
WHEN counter <= 999 THEN counter + 40000 
ELSE CONCAT("4",SUBSTRING(counter,2)) 
END

# Update documents
# SELECT
SELECT code, 
	docrequests.request_type as request_type,
    CONCAT(SUBSTRING(code,1,10),"4",SUBSTRING(code,12)) as newCode

FROM `document` 
LEFT JOIN docrequests ON document.docrequests_id = docrequests.id 
WHERE docrequests.request_type = "Vendor" 
LIMIT 100

# UPDATE documents
UPDATE document 
LEFT JOIN docrequests ON document.docrequests_id = docrequests.id 
SET code = CONCAT(SUBSTRING(code,1,10),"4",SUBSTRING(code,12)) 
WHERE docrequests.request_type = "Vendor"


# Change UNIT range
# all unit start from 40.0000 stop 49.999

UPDATE unit SET start = 40000, stop = 49999

# set unit from the app
Fanno eccezione le seguenti unità, in quanto condivise con altri OC (MOC e SOC) pertanto per ROC, le unità di seguito elencate hanno a disposizione il seguente range:

Unità 000 - 40.000 up to 43.999

Unità 005 - 40.000 up to 44.999

Unità 050 – 40.000 up to 44.999

Unità 087 - 40.000 up to 44.999

Unità 371 - 40.000 up to 44.999

Unità 372 - 40.000 up to 44.999


