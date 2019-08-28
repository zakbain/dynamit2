CREATE TABLE tv_sets (
  	id SERIAL PRIMARY KEY,
	tv_model TEXT,
	date_updated DATETIME,
	price DECIMAL(13,2)
);

INSERT INTO tv_sets (tv_model, date_updated, price)
VALUES ('Samsung v100', '2012-02-23 23:00:00',	549.99),
('Sony x300',	'2012-05-22 00:00:00',	359.99),
('Samsung v100',	'2013-01-22 10:20:00',	359.99),
('Samsung v100',	'2013-02-22 00:00:00',	399.99),
('Sony x300',	'2013-02-23 00:00:00',	329.99),
('Samsung v100',	'2013-02-23 21:30:00',	639.99),
('Sony x300',	'2013-05-23 22:00:00',	629.99),
('Sony x300',	'2013-05-23 22:00:00',	629.99),
('Samsung z100',	'2013-06-11 22:00:00',	879.99);

SELECT * FROM tv_sets;

SELECT * from tv_sets ORDER BY date_updated;

SELECT * from tv_sets ORDER BY date_updated DESC;

select tv_model, MAX(date_updated) from tv_sets
GROUP BY tv_model;
