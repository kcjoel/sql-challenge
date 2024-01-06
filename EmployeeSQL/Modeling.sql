--TABLE SCHEMA

--Creating table department
CREATE TABLE Departments (
    dept_no VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

select * from Departments
--Creating table titles
CREATE TABLE Titles (
    title_id VARCHAR(30) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

select * from Titles

--Creating table employees
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(30),
    birth_date VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1),
    hire_date VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

select * from Employees

--Creating table department employees
CREATE TABLE Department_Employee (
    emp_no INT,
    dept_no VARCHAR(30),
    PRIMARY KEY (emp_no, dept_no), 
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from Department_Employee

--Creating table department manager
CREATE TABLE Department_Manager (
    dept_no VARCHAR(30),
    emp_no INT,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from Department_Manager

--Creating table salaries
CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

select * from Salaries