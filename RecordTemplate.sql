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
