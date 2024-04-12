-- Medical Center Schema Definition (DDL)
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    specialty VARCHAR(255) NOT NULL
);

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE Disease (
    disease_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE Visit (
    visit_id INT PRIMARY KEY,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    visit_date DATE NOT NULL,
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- Sample Data for Medical Center
INSERT INTO Doctor (doctor_id, name, specialty)
VALUES (1, 'Dr. Smith', 'Cardiology'),
       (2, 'Dr. Johnson', 'Pediatrics');

INSERT INTO Patient (patient_id, name, date_of_birth)
VALUES (1, 'John Doe', '1980-05-15'),
       (2, 'Jane Doe', '1990-12-20');

INSERT INTO Disease (disease_id, name, description)
VALUES (1, 'Hypertension', 'High blood pressure condition'),
       (2, 'Influenza', 'Viral respiratory infection');

INSERT INTO Visit (visit_id, doctor_id, patient_id, visit_date)
VALUES (1, 1, 1, '2024-04-01'),
       (2, 2, 2, '2024-04-02');
