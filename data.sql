DROP TABLE IF EXISTS patient_demographics;
DROP TABLE IF EXISTS patient_vitals;

CREATE TABLE patient_demographics (
        participant_id INTEGER PRIMARY KEY,
        age INTEGER,
        gender TEXT
        );
CREATE TABLE patient_vitals (
        vitals_id INTEGER PRIMARY KEY AUTOINCREMENT,
        participant_id INTEGER, 
        daily_steps INTEGER, 
        sleep_hours REAL, 
        resting_heart_rate INTEGER,
        blood_pressure_status TEXT
        );
        
 INSERT INTO patient_demographics VALUES (1,24,'Female'),(2,45,'Male'),(3,31,'Female'),(4,52,'Male'),(5,28,'Female'),(6,61,'Male'),(7,35,'Female'),(8,42,'Male'),(9,23,'Female'),(10,56,'Male'),(11,38,'Female'),(12,49,'Male'),(13,27,'Male'),(14,50,'Female'),(15,33,'Female'),(16,41,'Male'),(17,29,'Female'),(18,55,'Male'),(19,36,'Female'),(20,47,'Male'),(21,22,'Female'),(22,58,'Male'),(23,39,'Female'),(24,46,'Male'),(25,26,'Male'),(26,53,'Female'),(27,32,'Female'),(28,43,'Male'),(29,30,'Female'),(30,54,'Male');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (1, 11500, 7.8, 62, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (2, 4200, 5.5, 78, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (3, 8900, 6.2, 68, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (4, 3100, 5.1, 84, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (5, 12000, 8.1, 58, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (6, 5400, 6.0, 74, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (7, 7500, 7.0, 66, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (8, 9200, 6.8, 70, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (9, 14000, 8.5, 55, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (10, 2800, 4.8, 88, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (11, 8100, 7.2, 65, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (12, 6300, 6.1, 72, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (13, 10500, 7.5, 63, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (14, 4700, 5.9, 76, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (15, 9400, 7.4, 64, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (16, 5100, 5.7, 80, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (17, 11000, 7.9, 60, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (18, 3500, 5.3, 82, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (19, 8300, 6.9, 67, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (20, 7100, 6.4, 71, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (21, 13000, 8.2, 57, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (22, 2600, 4.6, 90, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (23, 8500, 7.1, 66, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (24, 6600, 6.2, 73, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (25, 11200, 7.6, 61, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (26, 4400, 5.8, 77, 'High');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (27, 9600, 7.5, 63, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (28, 4900, 5.6, 81, 'Elevated');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (29, 10800, 7.7, 62, 'Normal');
INSERT INTO patient_vitals (participant_id, daily_steps, sleep_hours, resting_heart_rate, blood_pressure_status) VALUES (30, 3800, 5.4, 80, 'High');