import json

def load_categories(path):
    with open(path, 'r') as file:
        return json.load(file)

def assign_category(desc, categories):
    for cat, words in categories.items():
        for w in words:
            if w in desc:
                return cat
    return "Uncategorized"

def categorize_data(df, categories):
    df['Category'] = df['Description_lower'].apply(
        lambda x: assign_category(x, categories)
    )
    return df
