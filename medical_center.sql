
DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  specialty TEXT NOT NULL,
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE,
  patient_id INTEGER REFERENCES patients ON DELETE CASCADE
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  specialty TEXT NOT NULL,
);


CREATE TABLE diagnoses 
(
  id SERIAL PRIMARY KEY,
  visit_id INTEGER REFERENCES visits ON DELETE CASCADE,
  disease_id INTEGER REFERENCES disease ON DELETE CASCADE
);

CREATE TABLE disease
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
);