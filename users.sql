create table users (
	id serial PRIMARY_KEY NOT NULL,
	name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	country VARCHAR(30) NOT NULL
);
insert into users (id, name, last_name, birth_date, email, country) values (1, 'Ariana', 'Bendelow', '2022-02-17', 'abendelow0@statcounter.com', 'Canada');
insert into users (id, name, last_name, birth_date, email, country) values (2, 'Davin', 'Mahaffey', '2022-05-11', 'dmahaffey1@msn.com', 'Indonesia');
insert into users (id, name, last_name, birth_date, email, country) values (3, 'Clevey', 'Renshell', '2022-05-24', 'crenshell2@netscape.com', 'China');
insert into users (id, name, last_name, birth_date, email, country) values (4, 'Hallie', 'O''Cooney', '2022-08-01', 'hocooney3@dropbox.com', 'Poland');
insert into users (id, name, last_name, birth_date, email, country) values (6, 'Mychal', 'Egle', '2022-06-21', 'megle5@myspace.com', 'Portugal');
insert into users (id, name, last_name, birth_date, email, country) values (7, 'Olenka', 'Geroldi', '2021-09-25', 'ogeroldi6@aboutads.info', 'Brazil');
insert into users (id, name, last_name, birth_date, email, country) values (8, 'Ronni', 'Wapples', '2022-01-22', 'rwapples7@networkadvertising.org', 'Russia');
insert into users (id, name, last_name, birth_date, email, country) values (9, 'Joelly', 'Lamborne', '2022-03-16', 'jlamborne8@t-online.de', 'Sweden');
insert into users (id, name, last_name, birth_date, email, country) values (11, 'Maris', 'Baldini', '2021-08-29', 'mbaldinia@ucoz.ru', 'Colombia');
insert into users (id, name, last_name, birth_date, email, country) values (12, 'Emmott', 'Schmidt', '2021-11-14', 'eschmidtb@cargocollective.com', 'China');
