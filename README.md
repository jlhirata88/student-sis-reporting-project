# Student Information System Reporting & Validation Project

## Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Skills Demonstrated](#skills-demonstrated)
- [Business Scenarios](#business-scenarios)
- [Project Structure](#project-structure)
- [Example Reports](#example-reports)
- [Data Validation & Integration Scenario](#data-validation--integration-scenario)
- [How to Run](#how-to-run)
- [Future Enhancements](#future-enhancements)

## Project Overview

This project simulates a small K-12 Student Information System reporting environment using SQL Server, T-SQL, Python, and GitHub.

The goal of the project is to demonstrate how student data can be organized, queried, validated, and exported into usable reports for school administrators and district staff.

The project includes student records, courses, enrollments, grades, attendance, reporting queries, stored procedures, data validation checks, and Python-generated report exports.

## Technologies Used

- SQL Server Express
- SQL Server Management Studio (SSMS)
- T-SQL
- Python
- PyCharm
- pandas
- pyodbc
- GitHub
- Google Sheets / Excel

## Skills Demonstrated

- T-SQL querying and reporting
- Relational database design
- Joins across multiple tables
- Views and stored procedures
- Data validation and quality checks
- Identification of missing or duplicate student records
- Python database connectivity
- Automated report exports
- Technical documentation
- GitHub project organization

## Business Scenarios

This project includes simulated real-world reporting and data validation scenarios commonly found in student information systems:

- Identifying students failing one or more classes
- Detecting attendance rates below intervention thresholds
- Identifying missing final grades that may indicate grading system sync issues
- Detecting possible duplicate student records
- Supporting transcript-style student reporting
- Performing validation checks on grades and attendance data

## Project Structure

```text
student-sis-reporting-project/
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_sample_data.sql
│   ├── 03_views.sql
│   ├── 04_stored_procedures.sql
│   ├── 05_reports.sql
│   ├── 06_data_issue_scenarios.sql
│   └── 07_testing_validation.sql
│
├── python/
│   └── export_reports.py
│
├── outputs/
│   ├── failing_students_report.csv
│   ├── attendance_alerts_report.csv
│   └── missing_grades_report.csv
│
├── screenshots/
│
└── README.md
```

## Example Reports

The project generates several example reports commonly used in student information system environments:

- Failing Students Report
- Attendance Alerts Report
- Missing Grades Report
- Duplicate Student Record Check
- Data Validation Reports

Reports are generated using T-SQL stored procedures and exported using Python.

## Data Validation & Integration Scenario

This project includes simulated data quality and integration issue scenarios to reflect real-world student information system support responsibilities.

Examples include:

- Missing final grades caused by a simulated grading system sync issue
- Duplicate student record detection
- Validation checks for invalid grade values
- Validation checks for invalid attendance values
- Enrollment-to-grade consistency checks

These scenarios demonstrate troubleshooting, reporting validation, and data integrity analysis skills.

## How to Run

1. Install SQL Server Express and SQL Server Management Studio (SSMS)

2. Create the `StudentSIS` database

3. Run the SQL scripts in this order:

```text
01_create_tables.sql
02_insert_sample_data.sql
03_views.sql
04_stored_procedures.sql
05_reports.sql
06_data_issue_scenarios.sql
07_testing_validation.sql
```

4. Update the SQL Server connection string inside:

```text
python/export_reports.py
```

5. Run the Python export script:

```bash
python export_reports.py
```

6. Review exported reports inside the `outputs/` folder

## Future Enhancements

Potential future improvements for this project include:

- Dashboard-style reporting visualizations
- Automated scheduled report generation
- Additional student performance analytics
- Expanded transcript reporting
- Web-based reporting interface
- Role-based access simulation
- Additional integration validation scenarios