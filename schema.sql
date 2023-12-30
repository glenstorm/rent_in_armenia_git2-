DROP TABLE IF EXISTS CURRENCIES;
CREATE TABLE CURRENCIES (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	cur_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP UNIQUE,
	usd_rate INTEGER NOT NULL,
	eur_rate INTEGER NOT NULL
);

DROP TABLE IF EXISTS REGION;
CREATE TABLE REGION (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	region_name TEXT NOT NULL
);


DROP TABLE IF EXISTS REAL_ESTATE;
CREATE TABLE REAL_ESTATE (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	square INTEGER NOT NULL,
	is_agent INTEGER,
	region_id INTEGER,
	price INTEGER NOT NULL,
	room_num INTEGER NOT NULL,
	address TEXT NOT NULL,
	link TEXT NOT NULL,
	FOREIGN KEY(region_id) REFERENCES REGION(id)
);
