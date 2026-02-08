import pandas as pd

def create_monthly_summary(df):
    df['Month'] = df['Date'].dt.to_period('M')
    
    df['SignedAmount'] = df.apply(
        lambda r: -r['Amount'] if r['Type'] == "Debit" else r['Amount'], axis=1
    )

    summary = df.groupby('Month')['SignedAmount'].sum().reset_index()

    return summary
