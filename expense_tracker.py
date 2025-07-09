import streamlit as st
import pandas as pd
import datetime
from database import insert_expense, fetch_all_expenses

st.title("💰 Personal Expense Tracker")

# Input
date = st.date_input("Date", datetime.date.today())
amount = st.number_input("Amount", min_value=0.0, format="%.2f")
category = st.selectbox("Category", ["Food", "Transport", "Entertainment", "Health", "Other"])
description = st.text_input("Description")

if st.button("Add Expense"):
    insert_expense(date, amount, category, description)
    st.success("Expense added successfully!")

# Display Expenses
data = fetch_all_expenses()
df = pd.DataFrame(data, columns=["ID", "Date", "Amount", "Category", "Description"])
st.subheader("🧾 All Expenses")
st.dataframe(df)

# Summary
if not df.empty:
    st.subheader("📊 Category-wise Spending")
    summary = df.groupby("Category")["Amount"].sum()
    st.bar_chart(summary)