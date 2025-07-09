import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",       # Change this
        password="Naveen@8493",   # Change this
        database="expense_tracker"
    )

def insert_expense(date, amount, category, description):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("""
        INSERT INTO expenses (date, amount, category, description)
        VALUES (%s, %s, %s, %s)
    """, (date, amount, category, description))
    conn.commit()
    conn.close()

def fetch_all_expenses():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM expenses ORDER BY date DESC")
    data = cursor.fetchall()
    conn.close()
    return data