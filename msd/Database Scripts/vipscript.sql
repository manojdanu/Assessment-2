create table customer_details(cid int not null auto_increment,name varchar(30),customer_type varchar(20),phone varchar(20) not null unique, created_by varchar(20),create_on date,updated_by varchar(20),updated_on date,primary key(cid));
select * from customer_details;
create table address(cid int ,aid int not null,country varchar(20),state varchar(20),city varchar(20),street varchar(20),primary key (aid),foreign key (cid) references customer_details(cid));
select * from address;
Select * from country;
select * from city;
select * from state;

alter table customer modify street varchar(100);
alter table customer change create_on created_on date;

create table customer(cid int not null auto_increment,name varchar(30),customer_type varchar(20),phone varchar(20) not null unique,
country varchar(20),state varchar(20),city varchar(20),street varchar(20),pincode varchar(10),
 created_by varchar(20),created_on date,updated_by varchar(20),updated_on date,primary key(cid));
 
 select * from customer;
 select * from country;
 truncate table customer;
 commit;
 
 update country set name='Afganistan' where id=1;
 
  select country.name,state.name from country,state WHERE country.id = state.countryId;
/*
  select country.name,state.name,city.name from country,state,city WHERE country.id = state.countryId and state.id= city.stateId;
 */
 
 select country.name from country where id=1;
