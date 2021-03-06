
SELECT WNAME
FROM WAREHOUSE
WHERE WNO IN (
	SELECT WNO
	FROM SHIPMENT
	WHERE PNO IN (
		SELECT PNO
		FROM PART
		WHERE COLOUR='RED'));

SELECT PNO
FROM SHIPMENT
GROUP BY(PNO)
HAVING COUNT(PNO) =(
	SELECT COUNT(*)
	FROM WAREHOUSE);

SELECT WNO,COUNT(*)
FROM SHIPMENT
GROUP BY(WNO);

