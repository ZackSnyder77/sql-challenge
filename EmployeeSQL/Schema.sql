-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_No" VARCHAR   NOT NULL,
    "Dept_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Department_Employees" (
    "Emp_No" INTEGER   NOT NULL,
    "Dept_No" VARCHAR   NOT NULL,
    "From_Date" DATE   NOT NULL,
    "To_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Department_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Department_Manager" (
    "Dept_No" VARCHAR   NOT NULL,
    "Emp_No" INTEGER   NOT NULL,
    "From_Date" DATE   NOT NULL,
    "To_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employees" (
    "Emp_No" INTEGER   NOT NULL,
    "Birth_Date" DATE   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Hire_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Salaries" (
    "Emp_No" INTEGER   NOT NULL,
    "Salary" INTEGER   NOT NULL,
    "From_Date" DATE   NOT NULL,
    "To_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Titles" (
    "Emp_No" INTEGER   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    "From_Date" DATE   NOT NULL,
    "To_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Emp_No"
     )
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department_Employees" ("Emp_No");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Department_Employees" ("Emp_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Department_Employees" ("Emp_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

