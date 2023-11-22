DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

CREATE TABLE "titles" (
    "Title_id" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "Title_id"
     )
);

CREATE TABLE "departments" (
    "Dept_no" VARCHAR   NOT NULL,
    "Dept_name" VARCHAR   NOT NULL,
	CONSTRAINT "pk_departments" PRIMARY KEY (
        "Dept_no")
);

CREATE TABLE "employees" (
    "Emp_no" int   NOT NULL,
    "Emp_title_id" VARCHAR   NOT NULL,
    "Birth_date" date   NOT NULL,
	"First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "Emp_no" int   NOT NULL,
    "Dept_no" VARCHAR   NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "Emp_no", "Dept_no")
);

CREATE TABLE "salaries" (
    "Emp_no" int   NOT NULL,
    "Salary" int   NOT NULL,
	CONSTRAINT "pk_salaries" PRIMARY KEY (
        "Emp_no", "Salary")
);

CREATE TABLE "dept_manager" (
    "Dept_no" VARCHAR   NOT NULL,
	"Emp_no" int   NOT NULL,
	CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "Emp_no", "Dept_no")
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_Emp_title_id" FOREIGN KEY("Emp_title_id")
REFERENCES "titles" ("Title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "employees" ("Emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "departments" ("Dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "employees" ("Emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "employees" ("Emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "departments" ("Dept_no");


















