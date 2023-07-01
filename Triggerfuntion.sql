CREATE OR REPLACE FUNCTION update_category_table()
RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        IF (NEW.Category = 'RUM') THEN
            INSERT INTO Rum (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'VODKA') THEN
            INSERT INTO Vodka (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'GIN') THEN
            INSERT INTO Gin (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'TEQUILA') THEN
            INSERT INTO Tequila (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'MEZCAL') THEN
            INSERT INTO Mezcal (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'liquerCordial') THEN
            INSERT INTO LiquerCordial (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'Whiskey') THEN
            INSERT INTO Whiskey (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        ELSIF (NEW.Category = 'Vermouth/Amaro') THEN
            INSERT INTO VermouthAmaro (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
         ELSIF (NEW.Category = 'BrandyCognac') THEN
            INSERT INTO BrandyCognac (ProductName, BottleSize, BottleCost, CostPerOunce, CostPerPour, StandardRetail)
            VALUES (NEW.ProductName, NEW.BottleSize, NEW.BottleCost, NEW.CostPerOunce, NEW.CostPerPour, NEW.StandardRetail);
        -- Repeat the same steps for the other category tables
        
        END IF;
    ELSIF (TG_OP = 'UPDATE') THEN
        IF (NEW.Category = 'RUM') THEN
            UPDATE Rum
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'VODKA') THEN
            UPDATE Vodka
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'GIN') THEN
            UPDATE Gin
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'TEQUILA') THEN
            UPDATE Tequila
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'MEZCAL') THEN
            UPDATE Mezcal
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'LIQUER/CORDIAL') THEN
            UPDATE LiquerCordial
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'WHISKEY') THEN
            UPDATE Whiskey
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'VERMOUTH/AMARO') THEN
            UPDATE VermouthAmaro
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        ELSIF (NEW.Category = 'BRANDY/COGNAC') THEN
            UPDATE BrandyCognac
            SET BottleSize = NEW.BottleSize,
                BottleCost = NEW.BottleCost,
                CostPerOunce = NEW.CostPerOunce,
                CostPerPour = NEW.CostPerPour,
                StandardRetail = NEW.StandardRetail
            WHERE ProductName = NEW.ProductName;
        -- Repeat the same steps for the other category tables
        
        END IF;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
