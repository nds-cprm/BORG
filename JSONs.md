
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




