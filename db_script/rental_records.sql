create table rental_records
(
	rental_id serial primary key,
	cd_fk int references cd (cd_id),
	customer_fk int references customer (customer_id),
	status text
);

--checkout CD
------------------------------------------------------------------------
create or replace
	function checkout(p_cd_fk int, p_customer_fk int, p_status text)
returns text as

$$
INSERT INTO rental_records(cd_fk, customer_fk, status) values (p_cd_fk, p_customer_fk, p_status);
$$
--------------------------------------------------------------------------
