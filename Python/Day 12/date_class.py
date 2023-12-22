from datetime import date, timedelta

# Current date
today = date.today()
print("Today's date:", today)

# Creating a specific date
specific_date = date(2023, 4, 1)
print("Specific date:", specific_date)

# Year, month, and day
print("Year:", today.year)
print("Month:", today.month)
print("Day:", today.day)

# Weekday of the date (Monday is 0 and Sunday is 6)
print("Weekday of today:", today.weekday())

# ISO Weekday (Monday is 1 and Sunday is 7)
print("ISO Weekday of today:", today.isoweekday())

# ISO Format
print("ISO format of today:", today.isoformat())

# Adding and subtracting days (using timedelta)
tomorrow = today + timedelta(days=1)
print("Tomorrow's date:", tomorrow)

yesterday = today - timedelta(days=1)
print("Yesterday's date:", yesterday)

# Replace method to create a new date object with modified values
new_date = today.replace(year=2025, month=12)
print("New date (2025-12-same day):", new_date)

# Calculating the difference between two dates
date_diff = specific_date - today
print("Days until specific date:", date_diff.days)

# Formatting dates into strings
formatted_date = today.strftime("%A, %d %B %Y")
print("Formatted date:", formatted_date)

# Parsing a date string into a date object
parsed_date = date.fromisoformat('2023-04-01')
print("Parsed date from string:", parsed_date)
