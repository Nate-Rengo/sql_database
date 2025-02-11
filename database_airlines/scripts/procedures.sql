/*
DELIMITER //
create procedure getplanes(
in distance int)
begin 
select aircraft_id, tail_number
from aircraft
where rage_miles > distance;

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