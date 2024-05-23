-- Створіть базу даних Лікарня (Hospital), яка міститиме
-- інформацію про обстеження, які проводяться в лікарні.
-- Опис бази даних знаходиться в кінці цього файлу
-- Створення бази даних Hospital
--CREATE DATABASE Hospital1;

-- Створення таблиці Departments
-- CREATE TABLE Departments (
--     Id SERIAL PRIMARY KEY,
--     Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
--     Financing DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK (Financing >= 0),
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );

-- Створення таблиці Diseases
-- CREATE TABLE Diseases (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(100) NOT NULL UNIQUE,
--     Severity INT NOT NULL CHECK (Severity >= 1)
-- );

-- Створення таблиці Doctors
-- CREATE TABLE Doctors (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Phone CHAR(10),
--     Salary DECIMAL(10, 2) NOT NULL CHECK (Salary > 0),
--     Surname VARCHAR(255) NOT NULL
-- );

-- -- Створення таблиці Examinations
-- CREATE TABLE Examinations (
--     Id SERIAL PRIMARY KEY,
--     DayOfWeek INT NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7),
--     EndTime TIME NOT NULL,
--     Name VARCHAR(100) NOT NULL UNIQUE,
--     StartTime TIME NOT NULL CHECK (StartTime BETWEEN '08:00:00' AND '18:00:00'),
--     CHECK (EndTime > StartTime)
-- );

-- Створення таблиці Wards
-- CREATE TABLE Wards (
--     Id SERIAL PRIMARY KEY,
--     Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
--     Floor INT NOT NULL CHECK (Floor >= 1),
--     Name VARCHAR(20) NOT NULL UNIQUE
-- );

--Вивести вміст таблиці палат
--SELECT * FROM Wards;

--Вивести прізвища та телефони усіх лікарів
--SELECT Surname, Phone FROM Doctors;

--Вивести усі поверхи без повторень, 
--де розміщуються палати
--SELECT DISTINCT Floor FROM Wards;

--Вивести назви захворювань під назвою "Name of Disease" та ступінь 
--їхньої тяжкості під назвою "Severity of Disease"
--SELECT Name AS "Name of Disease", Severity AS "Severity of Disease" FROM Diseases;

--Вивести назви відділень, які знаходяться у корпусі 5 з фондом фінансування меншим,
--ніж 30000
--SELECT Name FROM Departments WHERE Building = 5 AND Financing < 30000;

-- Вивести назви відділень, які знаходяться у корпусі 3 з фондом фінансування у діапазоні 
-- від 12000 до 15000
--SELECT Name FROM Departments WHERE Building = 3 AND Financing BETWEEN 12000 AND 15000;

--Вивести назви палат, які знаходяться у корпусах 4 та 5 на 1-му поверсі
--SELECT Name FROM Wards WHERE (Building = 4 OR Building = 5) AND Floor = 1;

--Вивести назви, корпуси та фонди фінансування відділень, які знаходяться у корпусах 3 
--або 6 та мають фонд фінансування менший, ніж 11000 або більший за 25000
--SELECT Name, Building, Financing FROM Departments 
--WHERE (Building = 3 OR Building = 6) AND (Financing < 11000 OR Financing > 25000);

--Вивести прізвища лікарів, зарплата (сума ставки та надбавки 120) яких перевищує 1500
--SELECT Surname FROM Doctors WHERE Salary + 120 > 1500;

-- Вивести прізвища лікарів, у яких половина зарплати перевищує триразову надбавку у 
-- вигляді 500
--SELECT Surname FROM Doctors WHERE (Salary / 2) > (3 * 500);

-- Вивести назви обстежень без повторень, які проводяться у перші три дні тижня 
-- з 12:00 до 15:00
--SELECT DISTINCT Name FROM Examinations 
--WHERE DayOfWeek BETWEEN 1 AND 3 AND StartTime >= '12:00:00' AND EndTime <= '15:00:00';

--Вивести назви та номери корпусів відділень, які знаходяться у корпусах 1, 3, 8 або 10:
--SELECT Name, Building FROM Departments WHERE Building IN (1, 3, 8, 10);

--Вивести назви захворювань усіх ступенів тяжкості, крім 1-го та 2-го:
--SELECT Name FROM Diseases WHERE Severity NOT IN (1, 2);

--Вивести назви відділень, які не знаходяться у першому або третьому корпусі:
--SELECT Name FROM Departments WHERE Building NOT IN (1, 3);

--Вивести назви відділень, які знаходяться у першому або третьому корпусі:
--SELECT Name FROM Departments WHERE Building IN (1, 3);

--Вивести прізвища лікарів, що починаються з літери "N":
--SELECT Surname FROM Doctors WHERE Surname LIKE 'N%';




