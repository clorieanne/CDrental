create table cd
(
	cd_id int primary key,
	cd_name text

);

INSERT INTO cd(cd_id,cd_name) values (1,'Classical Musi');
INSERT INTO cd(cd_id,cd_name) values (2,'Pop Music');
INSERT INTO cd(cd_id,cd_name) values (3, 'Rock Music');
INSERT INTO cd(cd_id,cd_name) values (4, 'Balad Songs');
INSERT INTO cd(cd_id,cd_name) values (5, 'Instrumental Music');
----------------------------------------------------------------------------
create or replace
 function getcd_name (in int, out text)
 returns text as

 $$
  select cd_name from cd
  where cd_id = $1;
 $$
  language 'sql';
----------------------------------------------------------------------------

