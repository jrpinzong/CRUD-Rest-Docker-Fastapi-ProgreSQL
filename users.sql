create table users (
	id serial NOT NULL,
	name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	email VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	CONSTRAINT id_pk PRIMARY KEY (user_id),
	CONSTRAINT email_pk UNIQUE (email)
);
insert into users (name, last_name, birth_date, email, country) values ('Chico', 'Deary', '2001-03-10', 'cdeary0@facebook.com', 'Kenya');
insert into users (name, last_name, birth_date, email, country) values ('Austina', 'Cheasman', '1975-05-23', 'acheasman1@angelfire.com', 'Portugal');
insert into users (name, last_name, birth_date, email, country) values ('Hamel', 'Sprankling', '1951-11-07', 'hsprankling2@fc2.com', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Gavan', 'Sapena', '2004-09-12', 'gsapena3@ocn.ne.jp', 'Taiwan');
insert into users (name, last_name, birth_date, email, country) values ('Lucienne', 'Tellett', '2003-08-11', 'ltellett4@squarespace.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Nero', 'Gillivrie', '1958-02-08', 'ngillivrie5@mapy.cz', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Saba', 'Westwell', '1982-08-08', 'swestwell6@answers.com', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Leigha', 'Eddy', '1965-12-20', 'leddy7@cornell.edu', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Sissy', 'Douglas', '1962-09-17', 'sdouglas8@elpais.com', 'France');
insert into users (name, last_name, birth_date, email, country) values ('Faber', 'Iles', '1971-07-30', 'files9@si.edu', 'Tanzania');
insert into users (name, last_name, birth_date, email, country) values ('Tresa', 'Hubberstey', '1984-04-05', 'thubbersteya@examiner.com', 'Greece');
insert into users (name, last_name, birth_date, email, country) values ('Mirabelle', 'Cescotti', '1997-10-04', 'mcescottib@instagram.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Claudina', 'Heaney', '1982-08-09', 'cheaneyc@fastcompany.com', 'Philippines');
insert into users (name, last_name, birth_date, email, country) values ('Jeniffer', 'Keelan', '1970-04-15', 'jkeeland@abc.net.au', 'Brazil');
insert into users (name, last_name, birth_date, email, country) values ('Walton', 'Von Welden', '1986-08-26', 'wvonweldene@mediafire.com', 'Yemen');
insert into users (name, last_name, birth_date, email, country) values ('Rita', 'Phayre', '1959-07-26', 'rphayref@symantec.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Virgie', 'Iannello', '1981-10-19', 'viannellog@chicagotribune.com', 'Portugal');
insert into users (name, last_name, birth_date, email, country) values ('Derrek', 'Crewes', '1976-11-13', 'dcrewesh@domainmarket.com', 'Germany');
insert into users (name, last_name, birth_date, email, country) values ('Tim', 'Goodlatt', '1963-06-03', 'tgoodlatti@discovery.com', 'Greece');
insert into users (name, last_name, birth_date, email, country) values ('Dermot', 'Colville', '1954-07-26', 'dcolvillej@vk.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Anthony', 'Haselhurst', '1991-10-11', 'ahaselhurstk@cisco.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Christoforo', 'Reuther', '1985-01-17', 'creutherl@nydailynews.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Tammy', 'Cullingworth', '1999-07-25', 'tcullingworthm@abc.net.au', 'Argentina');
insert into users (name, last_name, birth_date, email, country) values ('Wyndham', 'Skydall', '1995-10-16', 'wskydalln@typepad.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Marena', 'Erasmus', '1971-04-17', 'merasmuso@engadget.com', 'Netherlands');
insert into users (name, last_name, birth_date, email, country) values ('Sergent', 'Paver', '1990-10-09', 'spaverp@sbwire.com', 'Brazil');
insert into users (name, last_name, birth_date, email, country) values ('Baily', 'Cunio', '1963-04-02', 'bcunioq@engadget.com', 'Cape Verde');
insert into users (name, last_name, birth_date, email, country) values ('Ulrike', 'Robathon', '1970-09-16', 'urobathonr@tripadvisor.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Tessa', 'Dienes', '1982-04-21', 'tdieness@webmd.com', 'Angola');
insert into users (name, last_name, birth_date, email, country) values ('Kristofer', 'Thake', '1958-12-22', 'kthaket@berkeley.edu', 'Ireland');
insert into users (name, last_name, birth_date, email, country) values ('Colan', 'Longshaw', '1993-03-01', 'clongshawu@seesaa.net', 'Poland');
insert into users (name, last_name, birth_date, email, country) values ('Norby', 'Storry', '1957-11-27', 'nstorryv@uol.com.br', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Peyter', 'Tungay', '1950-09-16', 'ptungayw@php.net', 'Ukraine');
insert into users (name, last_name, birth_date, email, country) values ('Connor', 'Nursey', '1955-12-11', 'cnurseyx@auda.org.au', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Marya', 'Tertre', '1998-06-09', 'mtertrey@cbsnews.com', 'Mexico');
insert into users (name, last_name, birth_date, email, country) values ('Gayleen', 'Sturman', '1967-10-18', 'gsturmanz@phpbb.com', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Bronnie', 'Wells', '1992-06-02', 'bwells10@cocolog-nifty.com', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Aubry', 'Muzzini', '1987-06-24', 'amuzzini11@multiply.com', 'Philippines');
insert into users (name, last_name, birth_date, email, country) values ('Geoffry', 'Revington', '1996-08-20', 'grevington12@twitter.com', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Deeyn', 'Merrington', '2000-05-25', 'dmerrington13@desdev.cn', 'Honduras');
insert into users (name, last_name, birth_date, email, country) values ('Meade', 'Oakley', '1954-07-12', 'moakley14@dailymail.co.uk', 'Colombia');
insert into users (name, last_name, birth_date, email, country) values ('Dodie', 'Eates', '1976-03-21', 'deates15@un.org', 'Bulgaria');
insert into users (name, last_name, birth_date, email, country) values ('Adelbert', 'Gilham', '1998-04-19', 'agilham16@sohu.com', 'Portugal');
insert into users (name, last_name, birth_date, email, country) values ('Sauveur', 'Bartkowiak', '1983-11-19', 'sbartkowiak17@cocolog-nifty.com', 'Myanmar');
insert into users (name, last_name, birth_date, email, country) values ('Kurt', 'Arundel', '1976-02-09', 'karundel18@bbb.org', 'Brazil');
insert into users (name, last_name, birth_date, email, country) values ('Kevina', 'Brodley', '1964-04-10', 'kbrodley19@google.com.hk', 'Cameroon');
insert into users (name, last_name, birth_date, email, country) values ('Elysia', 'Dennistoun', '1989-04-16', 'edennistoun1a@sitemeter.com', 'Pakistan');
insert into users (name, last_name, birth_date, email, country) values ('Maribeth', 'Keizman', '1995-01-31', 'mkeizman1b@deliciousdays.com', 'Poland');
insert into users (name, last_name, birth_date, email, country) values ('Ferrel', 'Dungate', '1968-06-17', 'fdungate1c@ifeng.com', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Kyle', 'Feilden', '1977-12-15', 'kfeilden1d@deviantart.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Lanita', 'Davidesco', '2005-07-12', 'ldavidesco1e@java.com', 'Colombia');
insert into users (name, last_name, birth_date, email, country) values ('Bridgette', 'Jinkinson', '1975-10-30', 'bjinkinson1f@behance.net', 'Egypt');
insert into users (name, last_name, birth_date, email, country) values ('Annabell', 'Campling', '1965-10-30', 'acampling1g@oakley.com', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Mahala', 'Wermerling', '1951-09-13', 'mwermerling1h@twitter.com', 'Paraguay');
insert into users (name, last_name, birth_date, email, country) values ('Chrystel', 'Ayrs', '1984-09-27', 'cayrs1i@msn.com', 'Israel');
insert into users (name, last_name, birth_date, email, country) values ('Aili', 'Arias', '1961-08-25', 'aarias1j@github.io', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Ruthe', 'Esmonde', '1985-03-31', 'resmonde1k@webnode.com', 'Argentina');
insert into users (name, last_name, birth_date, email, country) values ('Harry', 'Fairlaw', '1964-11-08', 'hfairlaw1l@springer.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Justen', 'Guihen', '1991-07-15', 'jguihen1m@nationalgeographic.com', 'Nigeria');
insert into users (name, last_name, birth_date, email, country) values ('Micky', 'Lowdyane', '1955-05-11', 'mlowdyane1n@behance.net', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Talia', 'Robardley', '1953-07-10', 'trobardley1o@shop-pro.jp', 'Faroe Islands');
insert into users (name, last_name, birth_date, email, country) values ('Tyne', 'Hailston', '1955-02-27', 'thailston1p@craigslist.org', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Faustina', 'Gabbitis', '1966-04-22', 'fgabbitis1q@vimeo.com', 'Syria');
insert into users (name, last_name, birth_date, email, country) values ('Lydon', 'Bullcock', '1986-06-30', 'lbullcock1r@nyu.edu', 'Dominican Republic');
insert into users (name, last_name, birth_date, email, country) values ('Jennette', 'Petegree', '1995-10-21', 'jpetegree1s@theglobeandmail.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Keelia', 'MacCague', '1994-12-26', 'kmaccague1t@drupal.org', 'Brazil');
insert into users (name, last_name, birth_date, email, country) values ('Rowney', 'Bellam', '1976-06-18', 'rbellam1u@cdc.gov', 'Brazil');
insert into users (name, last_name, birth_date, email, country) values ('Trudy', 'Shillabeer', '1999-03-26', 'tshillabeer1v@weibo.com', 'Poland');
insert into users (name, last_name, birth_date, email, country) values ('Kippie', 'Rothert', '1970-10-17', 'krothert1w@wiley.com', 'Poland');
insert into users (name, last_name, birth_date, email, country) values ('Vale', 'Ewell', '1980-12-08', 'vewell1x@clickbank.net', 'Philippines');
insert into users (name, last_name, birth_date, email, country) values ('Roberta', 'Jex', '1992-10-19', 'rjex1y@homestead.com', 'Poland');
insert into users (name, last_name, birth_date, email, country) values ('Harry', 'Glenny', '1996-10-09', 'hglenny1z@hexun.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Galvan', 'Demke', '1974-11-04', 'gdemke20@epa.gov', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Anderson', 'Noah', '1977-07-11', 'anoah21@nifty.com', 'Ukraine');
insert into users (name, last_name, birth_date, email, country) values ('Pavla', 'Spurling', '1977-08-14', 'pspurling22@dropbox.com', 'Ukraine');
insert into users (name, last_name, birth_date, email, country) values ('Silvano', 'Spiteri', '1993-02-10', 'sspiteri23@mail.ru', 'Serbia');
insert into users (name, last_name, birth_date, email, country) values ('Antonina', 'Bunclark', '1985-10-01', 'abunclark24@yale.edu', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Alaine', 'Spain-Gower', '2003-07-04', 'aspaingower25@godaddy.com', 'France');
insert into users (name, last_name, birth_date, email, country) values ('Maddy', 'Feaviour', '1987-10-20', 'mfeaviour26@addtoany.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Gunter', 'Atkirk', '1984-01-08', 'gatkirk27@phpbb.com', 'Canada');
insert into users (name, last_name, birth_date, email, country) values ('Marmaduke', 'Ingon', '1979-08-20', 'mingon28@clickbank.net', 'Philippines');
insert into users (name, last_name, birth_date, email, country) values ('Killian', 'Bugdell', '1969-10-22', 'kbugdell29@google.de', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Morna', 'Kenealy', '1950-12-05', 'mkenealy2a@goo.gl', 'Philippines');
insert into users (name, last_name, birth_date, email, country) values ('Lena', 'Jaggi', '1952-03-06', 'ljaggi2b@desdev.cn', 'Colombia');
insert into users (name, last_name, birth_date, email, country) values ('Leanora', 'Curthoys', '1989-02-04', 'lcurthoys2c@bloglovin.com', 'Panama');
insert into users (name, last_name, birth_date, email, country) values ('Yankee', 'Cacacie', '1979-02-01', 'ycacacie2d@cisco.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Gipsy', 'Coules', '1969-01-20', 'gcoules2e@topsy.com', 'Ukraine');
insert into users (name, last_name, birth_date, email, country) values ('Charita', 'Mattusevich', '1975-06-23', 'cmattusevich2f@github.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Dionne', 'Murrock', '2000-12-29', 'dmurrock2g@zimbio.com', 'Pakistan');
insert into users (name, last_name, birth_date, email, country) values ('Phillip', 'Barff', '1958-04-15', 'pbarff2h@posterous.com', 'China');
insert into users (name, last_name, birth_date, email, country) values ('Mozelle', 'Mathwen', '1984-06-20', 'mmathwen2i@issuu.com', 'Haiti');
insert into users (name, last_name, birth_date, email, country) values ('Michel', 'Adamou', '1952-07-01', 'madamou2j@psu.edu', 'Russia');
insert into users (name, last_name, birth_date, email, country) values ('Nicolle', 'Basnett', '1962-10-28', 'nbasnett2k@163.com', 'Czech Republic');
insert into users (name, last_name, birth_date, email, country) values ('Karleen', 'Tarrier', '1993-04-18', 'ktarrier2l@ezinearticles.com', 'Thailand');
insert into users (name, last_name, birth_date, email, country) values ('Becki', 'Hazlewood', '1958-11-27', 'bhazlewood2m@purevolume.com', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Shelagh', 'Crickmer', '1976-04-28', 'scrickmer2n@sbwire.com', 'France');
insert into users (name, last_name, birth_date, email, country) values ('Lamond', 'Blanking', '1968-09-30', 'lblanking2o@stumbleupon.com', 'Portugal');
insert into users (name, last_name, birth_date, email, country) values ('Charo', 'Ibbs', '1967-03-08', 'cibbs2p@yolasite.com', 'Nigeria');
insert into users (name, last_name, birth_date, email, country) values ('Flora', 'Llewellen', '2000-01-23', 'fllewellen2q@4shared.com', 'Indonesia');
insert into users (name, last_name, birth_date, email, country) values ('Falito', 'Fancutt', '1996-09-15', 'ffancutt2r@mlb.com', 'Ukraine');
