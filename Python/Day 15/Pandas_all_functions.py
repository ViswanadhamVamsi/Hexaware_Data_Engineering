import pandas as pd

# Creating a DataFrame
data = {'Name': ['Alice', 'Bob', 'Charlie'], 'Age': [25, 30, 35], 'City': ['New York', 'Paris', 'London']}
df = pd.DataFrame(data)

# Selecting data
first_row = df.iloc[0]              # Select the first row
age_column = df['Age']              # Select the 'Age' column

# Manipulation
df['Age'] = df['Age'] + 5           # Increase each person's age by 5
df['Country'] = ['USA', 'France', 'UK']  # Add a new column 'Country'

# Basic Data Analysis
mean_age = df['Age'].mean()         # Calculate the mean of the 'Age' column
max_age = df['Age'].max()           # Find the maximum value in the 'Age' column
sorted_df = df.sort_values(by='Age') # Sort the DataFrame by the 'Age' column

# Filtering
filtered_df = df[df['Age'] > 30]    # Filter rows where Age is greater than 30

# Print results
print("Original DataFrame:\n", df)
print("\nFirst Row:\n", first_row)
print("\nAge Column:\n", age_column)
print("\nDataFrame after manipulation:\n", df)
print("\nMean Age:", mean_age)
print("\nMaximum Age:", max_age)
print("\nSorted DataFrame:\n", sorted_df)
print("\nFiltered DataFrame:\n", filtered_df)
