ALTER TABLE stockroom
    ADD CONSTRAINT varchar unique (address) ,
    ALTER COLUMN capacity SET NOT NULL ,
    ALTER COLUMN storage_price SET NOT NULL,
    ALTER COLUMN transportation_price SET NOT NULL;


ALTER TABLE material
    add CONSTRAINT varchar unique (title) ,
    ALTER COLUMN title SET NOT NULL ,
    ALTER COLUMN  country SET NOT NULL,
    ALTER COLUMN price SET NOT NULL;


ALTER TABLE product
    add CONSTRAINT varchar unique (title) ,
    ALTER COLUMN title SET NOT NULL ,
    ALTER COLUMN quantity SET NOT NULL ,
    ALTER COLUMN manual SET NOT NULL,
    ALTER COLUMN material  SET NOT NULL,
    ALTER COLUMN stockroom SET NOT NULL,
    ALTER COLUMN bookkeeping  SET NOT NULL;


ALTER TABLE bookkeeping
    ALTER COLUMN production_costs SET NOT NULL ,
    ALTER COLUMN paycheck SET NOT NULL,
    ALTER COLUMN cost_price SET NOT NULL ,
    ALTER COLUMN material SET NOT NULL,
    ALTER COLUMN stockroom SET NOT NULL;


ALTER TABLE shop
    add constraint varchar unique (address) ,
    ALTER COLUMN title SET NOT NULL ,
    ALTER COLUMN address SET NOT NULL,
    ALTER COLUMN number_of_employees SET NOT NULL ,
    ALTER COLUMN product SET NOT NULL;