import pandas as pd
import numpy as np

def clean_data(df):
    df = df.copy()

    df['Date'] = pd.to_datetime(df['Date'])
    df['Amount'] = pd.to_numeric(df['Amount'], errors='coerce').fillna(0)

    df['Description'] = df['Description'].astype(str).str.strip()
    df['Description_lower'] = df['Description'].str.lower()

    df['Type'] = df['Type'].str.capitalize()

    return df
