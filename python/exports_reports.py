import pyodbc
import pandas as pd

conn = pyodbc.connect(
    "Driver={ODBC Driver 18 for SQL Server};"
    "Server=.\\SQLEXPRESS;"
    "Database=StudentSIS;"
    "Trusted_Connection=yes;"
    "Encrypt=yes;"
    "TrustServerCertificate=yes;"
)

# Failing Students Report
df_failing = pd.read_sql("EXEC sp_GetFailingStudents", conn)
df_failing.to_csv("../outputs/failing_students_report.csv", index=False)

# Attendance Alerts Report
df_attendance = pd.read_sql("EXEC sp_GetAttendanceAlerts", conn)
df_attendance.to_csv("../outputs/attendance_alerts_report.csv", index=False)

# Missing Grades Report
df_missing = pd.read_sql("EXEC sp_GetMissingGrades", conn)
df_missing.to_csv("../outputs/missing_grades_report.csv", index=False)

conn.close()

print("Reports exported successfully!")