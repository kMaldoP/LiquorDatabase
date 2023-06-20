CREATE TABLE Inventory(
    ID SERIAL PRIMARY KEY,
    ProductName TEXT NOT NULL,
    Category TEXT NOT NULL,
    BottleSize TEXT,
    BottleCost MONEY NOT NULL ,
    CostPerOunce MONEY NOT NULL,
    CostPerPour MONEY NOT NULL,
    StandardRetail MONEY NOT NULL
);

CREATE TABLE Rum AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'RUM'

CREATE TABLE Vodka AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'VODKA'

CREATE TABLE Gin AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'GIN'

CREATE TABLE TEQUILA AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'TEQUILA'

CREATE TABLE MEZCAL AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'MEZCAL'

CREATE TABLE LiquerCordial AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'LIQUER/CORDIAL'

CREATE TABLE WHISKEY AS
   SELECT ProductName, category,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'WHISKEY/BOURBON'OR 
   category = 'WHISKEY/OTHER' OR 
   category = 'WHISKEY/IRISH' OR 
   category = 'WHISKEY/SCOTCH' OR 
   category = 'WHISKEY/RYE' OR
   category = 'WHISKEY'

CREATE TABLE vermouthAmaro AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'VERMOUTH/AMARO'

   CREATE TABLE brandyCognac AS
   SELECT ProductName,BottleSize,BottleCost,CostPerOunce,CostPerPour,StandardRetail
   FROM inventory
   WHERE category = 'BRANDY/CONGAC'