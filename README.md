# Cardiovascular Health & Lifestyle Study

A SQL project built to analyze a 30-patient sample clinical dataset. It focuses on connecting multiple tables, segmenting patient data into risk cohorts, and developing new data labels using conditionals.

## Database Architecture & Tables
To mimic a real-world clinic database, the dataset is split into two separate tables with a shared identification key (`participant_id`). 

1. **`patient_demographics`**: Tracks core profile attributes (`participant_id`, `age`, `gender`).
2. **`patient_vitals`**: Tracks daily physical metrics (`vitals_id`, `participant_id`, `daily_steps`, `sleep_hours`, `resting_heart_rate`, `blood_pressure_status`).
***

## Key Skills & Advanced Queries Covered

### 1. Relational Table Joins (`INNER JOIN`)
* Connected the two tables using `INNER JOIN` on the shared `participant_id` column.
* Learned how to use table aliases (such as `FROM patient_demographics AS d`) to keep the code clean and easy to read.

### 2. Multi-Variable Risk Filtering (`WHERE` with `AND`)
* Wrote queries to isolate high-risk clinical outliers by layering strict rules across both tables simultaneously (such as identifying patients tracking under 6 hours of sleep who *also* display a resting heart rate over 75 bpm).

### 3. Population Segmentation (`GROUP BY`)
* Grouped the combined data by demographic categories to compare trends between different cohorts (such as analyzing the massive gap in average daily steps between male and female participants).
* Segmented the entire population by clinical standards to report the total patient count and average age for every blood pressure status.

### 4. Advanced Group Filtering (`HAVING`)
* Used the `HAVING` clause to filter the final calculated averages, isolating specific young, high-risk groups under the age of 40.

### 5. Custom Data Labeling (`CASE WHEN`)
* Applied conditional `if/else` logic directly inside SQL statements to create custom clinical classifications.
* Automatically categorized patients into `'Sedentary'`, `'Moderate'`, or `'Optimal'` cohorts based on daily step thresholds.

***

## Tools Used
* **SQLite:** Used to build the relational tables and execute the code.
* **DbVisualizer:** Used to write scripts, manage connections, and audit data outputs.
