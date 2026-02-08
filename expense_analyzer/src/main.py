from src.data_loader import load_data
from src.cleaner import clean_data
from src.categorizer import load_categories, categorize_data
from src.analyzer import create_monthly_summary

import pandas as pd

DATA = "../data/bank_statement_sample.csv"
CATEGORIES = "../config/categories.json"

def main():
    df = load_data("data/bank_statement_sample.csv")
    df = clean_data(df)

    categories = load_categories(CATEGORIES)
    df = categorize_data(df, categories)

    monthly = create_monthly_summary(df)

    df.to_csv("output/cleaned_expenses.csv", index=False)
    monthly.to_csv("output/monthly_summary.csv", index=False)

    print("✔ Cleaning complete")
    print("✔ Expense file ready for Power BI")

if __name__ == "__main__":
    main()
