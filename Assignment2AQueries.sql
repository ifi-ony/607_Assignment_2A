
CREATE TABLE fulltable_temp(
    time_stamp timestamp,
	barbie INTEGER,
	sinners INTEGER,
	dune INTEGER,
	the_batman INTEGER,
	everything INTEGER,
	superman INTEGER
);

-- copy line executed in psql 
\copy fulltable_temp FROM 'C:\Users\tesla\Desktop\CUNY DATA SCIENCE DEGREE\607_Data_Aquisition\OnyCo.csv' WITH (FORMAT CSV, HEADER, DELIMITER ',');

SELECT * FROM fulltable_temp;

ALTER TABLE fulltable_temp ADD COLUMN id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

-- copy line executed in psql
\copy fulltable_temp TO 'C:\Users\tesla\Desktop\CUNY DATA SCIENCE DEGREE\607_Data_Aquisition\OnyCoModified.csv' WITH (FORMAT CSV, HEADER, DELIMITER ',');

