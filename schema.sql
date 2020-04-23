drop table seoul;
CREATE TABLE seoul (
ID INT PRIMARY KEY,
measurement_date date,
station_code text,
sulfer_dioxide float,
nitrous_dioxide float,
ozone float,
carbon_monoxide float,
particulate_matter_10000nm float,
particulate_matter_2500nm float
);

drop table uk;
CREATE TABLE uk (
id INT PRIMARY KEY,
station_name text,
measurement_timestamp date,
particulate_matter_10000nm float,
units text,
nitrous_dioxide_ugm_3 float
);

