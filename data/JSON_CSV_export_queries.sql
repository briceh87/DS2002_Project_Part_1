SELECT 
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'CurrencyRateID', CurrencyRateID,
            'FromCurrencyCode', FromCurrencyCode,
            'ToCurrencyCode', ToCurrencyCode,
            'AverageRate', AverageRate,
            'EndOfDayRate', EndOfDayRate,
            'ModifiedDate', ModifiedDate
        )
    ) 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/currencyrate.json'
FROM adventureworks.currencyrate;



SELECT 
	ShipMethodID,
    Name,
    ShipBase,
    ShipRate,
    ModifiedDate
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/shipmethod.csv'
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'
FROM adventureworks.shipmethod;

