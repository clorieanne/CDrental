create table customer
(
	customer_id int primary key,
	customer_name text

);

create or replace
 function addcustomer(p_customer_id int, p_customer_name text)

$$

declare
		v_customer_id int;
		v_customer_name text;
begin
		select into v_customer_id customer_id from customer
			where customer_id = p_customer_id


		if v_customer_id isnull then
			insert into customer(customer_id, customer_name) values (p_customer_id, p_customer_name)
		else
			update customer
			set customer_id = p_customer_id,
				customer_name = p_customer_name
			where customer_id = v_customer_id;
		end if;

end;

$$
language 'plpgsql';
-------------------------------------------------------------------------------
create or replace
 getcustomer_name (in int, out text)
 returns text

 $$
  select customer_name from customer_name
  where customer_id = $1;
 $$
  language 'sql';
-----------------------------------------------------------------------------