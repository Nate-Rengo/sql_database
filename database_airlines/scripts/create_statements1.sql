use team3;

create table customer(
customer_id int PRIMARY KEY,
first_name varchar(20) not null,
last_name varchar(20) not null,
street varchar(20) not null,
city varchar(20) not null,
state char(2) not null,
zipcode varchar(5) not null,
phone_number varchar(13) not null,
membership varchar(20) not null
);
create table aircraft(
aircraft_id int primary key,
model varchar(20) not null,
manufacturer varchar(20) not null,
capacity_persons int not null,
range_miles int not null,
tail_number varchar(6) not null
);

create table airport(
airport_id int primary key,
longitude varchar(20) not null,
latitude varchar(20) not null,
airport_code char(4) not null,
airport_name varchar(100) not null,
airport_type varchar(15) not null
);

create table employee(
employee_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
employee_type char(1) not null,
phone_number varchar(14) not null,
email varchar(50) not null,
city varchar(20) not null,
state char(2) not null,
zipcode varchar(5) not null,
street varchar(20) not null,
onboard_date date not null,
constraint employee_type check((employee_type= "P") or (employee_type= "A"))
);

create table pilot(
employee_id int not null,
license_state bool not null,
certification varchar(80) not null,
pilot_type varchar(20) not null,
primary key(employee_id),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

create table attendent(
employee_id int not null,
cert_status bool not null,
primary key(employee_id),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

create table ticket(
customer_id int not null,
ticket_id int primary key,
purchase_date date not null,
ticket_type varchar(20) not null,
price_usd float not null,
pay_status bool not null,
notes varchar(50),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
# need one more thing

create table flight(
flight_id int not null,
aircraft_id int not null,
time_24hr time not null,
flight_date date not null,
distance_miles int not null,
duration_hrs float not null,
flight_number varchar(10) not null,
primary key(flight_id),
FOREIGN KEY (aircraft_id) REFERENCES aircraft(aircraft_id)
);

create table ticket_flight(
flight_id int not null,
ticket_id int not null,
seat_num int not null,
primary key(flight_id, ticket_id),
FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

create table flight_pattern(
flight_id int not null,
airport_id int not null,
pattern_type varchar(15) not null,
primary key (flight_id, airport_id),
FOREIGN KEY (airport_id) REFERENCES airport(airport_id),
FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

create table flight_employee(
flight_id int not null,
employee_id int not null,
primary key(flight_Id, employee_id),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

ALTER TABLE customer
add constraint check ( membership= "Bronze" or membership= "Silver" or membership= "Elite" or membership = "Gold");
