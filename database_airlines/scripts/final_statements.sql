#You should write at least 5 single-table queries. These queries should serve some business function.

select count(ticket_id) as "Tickets Sold"
from ticket;
#Gives us how many tickets have been sold. Total sales so far, how is our company doing?

select first_name, last_name
from employee
where state= "CO" and employee_type= "P";
#gives all pilots from colorado. Demographics of employees, checking how many local pilots we have. 

select aircraft_id, model, capacity_persons
from aircraft
where capacity_persons > 150;
#gives all planes that hold more than 150 people. DO we have enough planes of some size. 

select customer_id, first_name, last_name
from customer
where state= "CO";
#all customers from Colorado. Checking the demographics of who our airline serves. 

select employee_id
from attendent
where cert_status is false;
#find attendants that arent certified. To check if our staff is up to date. 


#You should write at least 5 multi-table queries. These queries should serve some business function.

select first_name, last_name, phone_number
from ticket
join customer
on ticket.customer_id= customer.customer_id
where pay_status = 0;
#Finds customers who have not paid for their ticket. WE do not want someone getting on a flight they have not paid for. 

select employee.employee_id, first_name,last_name, phone_number, email
from employee
join pilot
on pilot.employee_id= employee.employee_id;
#Gets the info for all of our pilots. Need to find a pilot to cover a flight. 

select first_name, last_name, flight.flight_id, airport.airport_id as "Destination_id", airport_name as "Destination"
from customer
join ticket
on ticket.customer_id=customer.customer_id
join ticket_flight
on ticket.ticket_id=ticket_flight.ticket_id
join flight
on ticket_flight.flight_id= flight.flight_id
join flight_pattern
on flight.flight_id= flight_pattern.flight_id
join airport
on flight_pattern.airport_id= airport.airport_id
where first_name= "David" and last_name = "Jones" and pattern_type = "Arrival";
#THis gives us what flight a specific passanger is on and what there destination is. Tracking where somebody is going, maybe there bag was found and needs to be sent to a certain location. 

select first_name, last_name, group_concat(flight.flight_id) as "Scheduled Flights"
from flight
join flight_employee
on flight.flight_id= flight_employee.flight_id
join employee
on flight_employee.employee_id= employee.employee_id
where first_name= "Liam" and last_name= "Anderson"
group by employee.employee_id;
#Gives us all the flights a specific employee is working on. Helps an employee see their schedule.


select airport_name, airport_code,airport_type,longitude,latitude
from airport
where airport_id in (select airport_id from flight_pattern
where flight_id = 4);
#Provided a flight id find airport info. This is important to quickly find the origin and destination airport of a flight for use by managment or pilots


#Write at least 2 stored procedures or stored functions that server a business function

call getPlanes(2000, 150);
#THis allows us to find the planes that are capable of traveling provided distance and carrying more than x number of passengers. We are planning a flight and need to carry some number of people some distance. 
call getNames(2);
#This allows us to get the names of every passenger on a flight given the ID. If something happens on a flight, or someone loses something and we need to find a passenger this function would be used. 

/*
DELIMITER //
create procedure getplanes(
in distance int, people int)
begin 
select aircraft_id, tail_number
from aircraft
where range_miles > distance and capacity_persons > people;

END //
DELIMITER ;


DELIMITER //
create procedure getNames(
in flight int)
begin 
select flight_id as flight, first_name, last_name, phone_number
from customer
join ticket
on customer.customer_id= ticket.customer_id
join ticket_flight
on ticket_flight.ticket_id= ticket.ticket_id
where flight_id= flight;

END //
DELIMITER ;
*/
