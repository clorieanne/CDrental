create table cd
(
	cd_id int primary key,
	cd_name text

);

create or replace
 function addcd(p_cd_id int, p_cd_name text)

$$

declare
		v_cd_id int;
		v_cd_name text;
begin
		select into v_cd_id cd_id from cd
			where cd_id = p_cd_id


		if v_cd_id isnull then
			insert into cd(cd_id, cd_name) values (p_cd_id, p_cd_name)
		else
			update cd
			set cd_id = p_cd_id,
				cd_name = p_cd_name
			where cd_id = v_cd_id;
		end if;

end;

$$
language 'plpgsql';
----------------------------------------------------------------------------
create or replace
 getcd_name (in int, out text)
 returns text

 $$
  select cd_name from cd_name
  where cd_id = $1;
 $$
  language 'sql';
----------------------------------------------------------------------------

