/*
INSERT INTO flight (flight_id, aircraft_id, time_24hr, flight_date, distance_miles, duration_hrs, flight_number)
VALUES
  (1, 3, '14:30', '2023-12-15', 3200, 6.15, 'ABC123'),
  (2, 8, '09:45', '2023-12-16', 3900, 7.50, 'DEF456'),
  (3, 14, '18:20', '2023-12-17', 3300, 6.35, 'GHI789'),
  (4, 2, '12:10', '2023-12-18', 3400, 6.54, 'JKL012'),
  (5, 7, '20:05', '2023-12-19', 8100, 15.58, 'MNO345'),
  (6, 1, '06:30', '2023-12-20', 2900, 5.58, 'PQR678'),
  (7, 9, '15:15', '2023-12-21', 1609, 3.09, 'STU901'),
  (8, 5, '11:40', '2023-12-22', 8000, 15.38, 'VWX234'),
  (9, 11, '23:55', '2023-12-23', 2500, 4.48, 'YZA567'),
  (10, 6, '08:20', '2023-12-24', 8200, 15.77, 'BCD890'),
  (11, 12, '16:45', '2023-12-25', 1700, 3.27, 'EFG123'),
  (12, 15, '10:30', '2023-12-26', 3300, 6.35, 'HIJ456'),
  (13, 4, '19:15', '2023-12-27', 1800, 3.46, 'KLM789'),
  (14, 10, '13:50', '2023-12-28', 1500, 2.88, 'NOP012'),
  (15, 13, '22:25', '2023-12-29', 3100, 5.96, 'QRS345');

INSERT INTO flight_pattern (flight_id, airport_id, pattern_type)
VALUES
  (1, 1, 'Departure'),
  (1, 8, 'Arrival'),
  (2, 8, 'Departure'),
  (2, 13, 'Arrival'),
  (3, 7, 'Departure'),
  (3, 16, 'Arrival'),
  (4, 4, 'Departure'),
  (4, 2, 'Arrival'),
  (5, 6, 'Departure'),
  (5, 15, 'Arrival'),
  (6, 7, 'Departure'),
  (6, 2, 'Arrival'),
  (7, 9, 'Departure'),
  (7, 13, 'Arrival'),
  (8, 5, 'Departure'),
  (8, 6, 'Arrival'),
  (9, 11, 'Departure'),
  (9, 3, 'Arrival'),
  (10, 6, 'Departure'),
  (10, 5, 'Arrival'),
  (11, 12, 'Departure'),
  (11, 8, 'Arrival'),
  (12, 15, 'Departure'),
  (12, 10, 'Arrival'),
  (13, 4, 'Departure'),
  (13, 20, 'Arrival'),
  (14, 10, 'Departure'),
  (14, 21, 'Arrival'),
  (15, 13, 'Departure'),
  (15, 7, 'Arrival');


INSERT INTO flight (flight_id, aircraft_id, time_24hr, flight_date, distance_miles, duration_hrs, flight_number)
VALUES
  (16, 9, '14:30', '2023-12-15', 4400, 8.46, 'ABC678'),
  (17, 3, '09:45', '2023-12-16', 3100, 6.00, 'DEF901'),
  (18, 5, '18:20', '2023-12-17', 4000, 7.69, 'GHI234'),
  (19, 7, '12:10', '2023-12-18', 1800, 3.46, 'JKL567'),
  (20, 14, '20:05', '2023-12-19', 3300, 6.35, 'MNO890'),
  (21, 12, '06:30', '2023-12-20', 2500, 4.81, 'PQR123'),
  (22, 2, '15:15', '2023-12-21', 3300, 6.35, 'STU456'),
  (23, 6, '11:40', '2023-12-22', 1500, 2.88, 'VWX789'),
  (24, 1, '23:55', '2023-12-23', 2900, 5.58, 'YZA012'),
  (25, 13, '08:20', '2023-12-24', 1700, 3.27, 'BCD345'),
  (26, 10, '16:45', '2023-12-25', 3400, 6.54, 'EFG678'),
  (27, 8, '10:30', '2023-12-26', 8000, 15.38, 'HIJ901'),
  (28, 15, '19:15', '2023-12-27', 4400, 8.46, 'KLM234'),
  (29, 4, '13:50', '2023-12-28', 1800, 3.46, 'NOP567'),
  (30, 11, '22:25', '2023-12-29', 3200, 6.15, 'QRS890');


INSERT INTO flight_pattern (flight_id, airport_id, pattern_type)
VALUES
  (16, 9, 'Departure'),
  (16, 3, 'Arrival'),
  (17, 3, 'Departure'),
  (17, 18, 'Arrival'),
  (18, 7, 'Departure'),
  (18, 2, 'Arrival'),
  (19, 4, 'Departure'),
  (19, 20, 'Arrival'),
  (20, 6, 'Departure'),
  (20, 15, 'Arrival'),
  (21, 12, 'Departure'),
  (21, 8, 'Arrival'),
  (22, 2, 'Departure'),
  (22, 16, 'Arrival'),
  (23, 6, 'Departure'),
  (23, 5, 'Arrival'),
  (24, 1, 'Departure'),
  (24, 13, 'Arrival'),
  (25, 13, 'Departure'),
  (25, 7, 'Arrival'),
  (26, 10, 'Departure'),
  (26, 3, 'Arrival'),
  (27, 8, 'Departure'),
  (27, 6, 'Arrival'),
  (28, 15, 'Departure'),
  (28, 20, 'Arrival'),
  (29, 4, 'Departure'),
  (29, 21, 'Arrival'),
  (30, 11, 'Departure'),
  (30, 10, 'Arrival');
*/