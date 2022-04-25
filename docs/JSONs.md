
** this file is a stub **

from https://json-schema.org/

reference: https://json-schema.org/understanding-json-schema/index.html

At its heart, JSON is built on the following data structures:

    object:

      { "key1": "value1", "key2": "value2" }

    array:

      [ "first", "second", "third" ]

    number:

      42
      3.1415926

    string:

      "This is a string"

    boolean:

      true
      false

    null:

      null
 
 Example:     
 
    {
    "type": "object",
    "properties": {
        "first_name": { "type": "string" },
        "last_name": { "type": "string" },
        "birthday": { "type": "string", "format": "date" },
        "address": {
            "type": "object",
            "properties": {
                "street_address": { "type": "string" },
                "city": { "type": "string" },
                "state": { "type": "string" },
                "country": { "type" : "string" }
                }
            }
        }
    }

## convert SQL to JSON

https://codebeautify.org/sql-to-json-converter#

    CREATE TABLE STATION
    (ID INTEGER PRIMARY KEY,
    CITY CHAR(20),
    STATE CHAR(2),
    LAT_N REAL,
    LONG_W REAL);

    INSERT INTO STATION VALUES (13, 'Phoenix', 'AZ', 33, 112);
    INSERT INTO STATION VALUES (44, 'Denver', 'CO', 40, 105);
    INSERT INTO STATION VALUES (66, 'Caribou', 'ME', 47, 68); 

    SELECT * FROM STATION;

to 

    [
    {
    "ID": "13",
    "CITY": "Phoenix",
    "STATE": "AZ",
    "LAT_N": "33",
    "LONG_W": "112"
    },
    {
    "ID": "44",
    "CITY": "Denver",
    "STATE": "CO",
    "LAT_N": "40",
    "LONG_W": "105"
    },
    {
    "ID": "66",
    "CITY": "Caribou",
    "STATE": "ME",
    "LAT_N": "47",
    "LONG_W": "68"
    }
    ]


## SQLSERVER to JSON

@https://www.sqlshack.com/convert-sql-server-results-json/

|SQL Server Data Type 	|JSON Data Type|
|-----|-----|
|char, nchar, varchar, nvarchar, date, datetime, datetime2, time, datetimeoffset, uniqueidentifier, money | string |
|int, bigint, float, decimal, numeric |	number |
| Bit | Boolean |
|varbinary, binary, image, timestamp, rowversion  |	BASE64-encoded string |
| | |




