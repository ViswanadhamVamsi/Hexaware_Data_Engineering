import datetime

# DATE
# Current date
today = datetime.date.today()
print("Today's date:", today)

# Custom date
custom_date = datetime.date(2023, 4, 1)
print("Custom date:", custom_date)

# Time delta (addition and subtraction)
ten_days_later = today + datetime.timedelta(days=10)
print("Ten days later:", ten_days_later)

# TIME
# Current time
now = datetime.datetime.now().time()
print("Current time:", now)

# Custom time
custom_time = datetime.time(12, 30, 45)
print("Custom time:", custom_time)

# DATETIME
# Current datetime
current_datetime = datetime.datetime.now()
print("Current datetime:", current_datetime)

# Custom datetime
custom_datetime = datetime.datetime(2023, 4, 1, 12, 30, 45)
print("Custom datetime:", custom_datetime)

# Formatting datetime
formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
print("Formatted datetime:", formatted_datetime)

# Parsing datetime from string
parsed_datetime = datetime.datetime.strptime("2023-04-01 12:30", "%Y-%m-%d %H:%M")
print("Parsed datetime:", parsed_datetime)

# TIMEDELTA
# Time delta representation
time_difference = datetime.timedelta(days=2, hours=3, minutes=30)
print("Time difference:", time_difference)

# Adding timedelta to datetime
datetime_plus_timedelta = current_datetime + time_difference
print("Datetime + Timedelta:", datetime_plus_timedelta)

# TIMEZONE
# Aware datetime
aware_datetime = datetime.datetime.now(datetime.timezone.utc)
print("Aware datetime:", aware_datetime)

# Custom timezone
custom_timezone = datetime.timezone(datetime.timedelta(hours=5, minutes=30))
custom_aware_datetime = datetime.datetime(2023, 4, 1, 12, 30, tzinfo=custom_timezone)
print("Custom aware datetime:", custom_aware_datetime)
