--Join two tables (patient demographics and vitals) using INNER JOIN
SELECT d.participant_id, d.age, d.gender, v.daily_steps
FROM patient_demographics AS d
INNER JOIN patient_vitals AS v
ON d.participant_id = v.participant_id;

--Group patients by gender and calculate average step count for each group
SELECT d.gender, round(AVG(daily_steps),0) AS avg_steps
FROM patient_demographics AS d
INNER JOIN patient_vitals AS v
ON d.participant_id = v. participant_id
GROUP BY d.gender;

--Isolate patients with flagged 'High' blood pressure and calculate the average age of this group
SELECT v.blood_pressure_status, ROUND(AVG(d.age),0) AS avg_age
FROM patient_demographics AS d
INNER JOIN patient_vitals AS v
ON d.participant_id = v.participant_id
WHERE v.blood_pressure_status = 'High';

--Look for patients under potential stress defined by low sleep duration and high resting heart rate
SELECT d.participant_id, d.age, v.sleep_hours, v.resting_heart_rate
FROM patient_demographics AS d
INNER JOIN patient_vitals AS V
ON d.participant_id = v.participant_id
WHERE v.sleep_hours < 6 AND resting_heart_rate > 75;

--Groups patients based on blood pressure status, calculating frequencies and average age of each
SELECT COUNT(*) AS num_of_patients, ROUND(AVG(d.age),0) AS avg_age, v.blood_pressure_status
FROM patient_demographics AS d
INNER JOIN patient_vitals AS v
ON v.participant_id = d.participant_id
GROUP BY v.blood_pressure_status;

--Categorizes patients based on daily step counts
SELECT d.participant_id, d.gender, v.daily_steps,
        CASE 
                WHEN daily_steps < 5000 THEN 'Sedentary'
                WHEN daily_steps > 10000 THEN 'Optimal'
                ELSE 'Moderate'
        END AS step_status
FROM patient_demographics as d
INNER JOIN patient_vitals as v
ON v.participant_id = d.participant_id;

--Groups population by gender and blood pressure status, isolating only the younger patients at a higher risk
SELECT d.gender, v.blood_pressure_status, ROUND(AVG(d.age),0) AS avg_age
FROM patient_demographics AS d
INNER JOIN patient_vitals AS v
ON v.participant_id = d.participant_id
GROUP BY d.gender, v.blood_pressure_status
HAVING avg_age < 40;