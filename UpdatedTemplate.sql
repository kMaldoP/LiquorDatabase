CREATE TABLE TotalInventory (
    ProductName TEXT PRIMARY KEY NOT NULL,
    Category TEXT NOT NULL,
    BottleSize TEXT,
    BottleCost MONEY NOT NULL,
    CostPerOunce MONEY NOT NULL,
    CostPerPour MONEY NOT NULL,
    StandardRetail MONEY NOT NULL
);

CREATE TABLE Rum (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE Vodka (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE Gin (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE Tequila (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE Mezcal (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE LiquerCordial (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE Whiskey (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);

CREATE TABLE VermouthAmaro (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);
CREATE TABLE brandyCognac (
    ProductName TEXT PRIMARY KEY,
    BottleSize TEXT,
    BottleCost MONEY,
    CostPerOunce MONEY,
    CostPerPour MONEY,
    StandardRetail MONEY
);