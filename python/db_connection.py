import pyodbc

conn = pyodbc.connect(
    "Driver={SQL Server};"
    "Server=.\SQLEXPRESS;"
    "Database=StudentSIS;"
    "Trusted_Connection=yes;"
)

cursor = conn.cursor()

cursor.execute("SELECT name FROM sys.tables")

for row in cursor.fetchall():
    print(row)

conn.close()