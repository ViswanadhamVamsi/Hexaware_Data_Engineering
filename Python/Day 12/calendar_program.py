import calendar

# Create a TextCalendar instance (defaults to Sunday as the first day of the week)
text_cal = calendar.TextCalendar(calendar.SUNDAY)

# Print the calendar for a specific month
year, month = 2023, 4
print(f"Calendar for {month}/{year}")
print(text_cal.formatmonth(year, month))

# Check if a year is a leap year
is_leap = calendar.isleap(year)
print(f"Is {year} a leap year? {is_leap}")

# Get the number of leap years within a range
leap_years = calendar.leapdays(2000, 2023)
print(f"Number of leap years between 2000 and 2023: {leap_years}")

# Get a list of weeks in a month
month_weeks = text_cal.monthdayscalendar(year, month)
print(f"Weekday numbers for each week in {month}/{year}: {month_weeks}")

# Get the weekday of a specific day
weekday = calendar.weekday(year, month, 1)
print(f"Weekday of {year}-{month}-01: {weekday} (0=Monday, 6=Sunday)")

# Get names of days in a week
days_names = calendar.day_name
print("Days of the week:", list(days_names))

# Get names of months
months_names = calendar.month_name
print("Months of the year:", list(months_names[1:]))  # Skip the first empty string

# Create an HTML formatted calendar
html_cal = calendar.HTMLCalendar(calendar.SUNDAY)
html_calendar_string = html_cal.formatmonth(year, month)
print(f"HTML Calendar for {month}/{year}:")
print(html_calendar_string)
